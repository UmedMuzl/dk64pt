-- graph.lua — region/event reachability over the generated region graph.
--
-- Loads every per-level region table, then exposes:
--
--   M.is_region_accessible(region_name)
--   M.is_event_active(event_name)
--   M.is_location_accessible(location_name)
--   M.invalidate()        -- call when item state or settings change
--   M.reachable_regions() -- debugging: returns the set of reachable regions
--   M.active_events()     -- debugging: returns the set of active events
--
-- Algorithm: iterative fixpoint starting from START_REGION ("GameStart").
-- Each iteration: for every region currently reachable, evaluate its events
-- (mark new ones active) and exits (mark new destinations reachable). Repeat
-- until nothing new is added. Lambdas see the in-progress reachable/event
-- tables through `_G.event_set` / `state.event(name)`, so cycles between
-- events and regions converge naturally.

local M = {}

-- Data tables — populated by init.lua at load time. Kept empty here so this
-- module never depends on Lua's package.path / require (PopTracker's sandbox
-- doesn't expose either; init.lua uses ScriptHost:LoadScript for all loading).
M.regions = {}
M.locations = {}
M.collectibles = {}

local START_REGION = "GameStart"
local CB_WEIGHTS = { banana = 1, bunch = 5, balloon = 10 }

-- =============================================================================
-- EntranceRando: when slot_data["EntranceRando"] = {source_exit -> target_entrance}
-- is populated, transitions whose `exitShuffleId` matches a `source_exit` are
-- redirected to wherever `target_entrance` normally leads. The reverse map
-- (shuffle id -> vanilla destination region) is built once on first use.
-- =============================================================================
-- M.transition_human_to_enum is populated by transition_names.lua at load time.
M.transition_human_to_enum = M.transition_human_to_enum or {}

local _entrance_to_region = nil      -- shuffleId -> destination region (TO side)
local _transition_from_region = nil  -- shuffleId -> source region (FROM side; AP's `target_shufflable_exit.region.name`)

local function build_entrance_map()
  _entrance_to_region = {}
  _transition_from_region = {}
  for region_name, region in pairs(M.regions) do
    for _, ex in ipairs(region.exits or {}) do
      if ex.exitShuffleId then
        if not _entrance_to_region[ex.exitShuffleId] then
          _entrance_to_region[ex.exitShuffleId] = ex.dest
        end
        if not _transition_from_region[ex.exitShuffleId] then
          _transition_from_region[ex.exitShuffleId] = region_name
        end
      end
    end
  end
end

-- Slot_data["EntranceRando"] uses HUMAN-READABLE keys/values like "DK Isles Main to
-- Japes Lobby", but `exitShuffleId` is the enum identifier ("IslesMainToJapesLobby").
-- transition_human_to_enum (sourced from randomizer/Lists/ShufflableExit.py) bridges
-- the two.
local function _human_to_enum(name)
  return M.transition_human_to_enum[name] or name
end

-- Precomputed `source_enum -> target_dest_region` for the active EntranceRando.
-- Built once per (SLOT_DATA changes / invalidate), then resolve_dest is O(1).
local _redirect = nil
local _redirect_for = nil  -- the SLOT_DATA.EntranceRando table this map was built from
-- "lzr" (full LZR — unmapped paired exits disconnect) | "lobby" (level_order_complex
-- — only lobby transitions remap, non-mapped exits stay vanilla) | nil (vanilla).
local _redirect_mode = nil

-- Vanilla lobby transition order (slot 1..8) used by level_order_complex
-- remapping. Per archipelago/Regions.py:597.
local VANILLA_ENTER_LOBBY = {
  "IslesMainToJapesLobby",   -- slot 1
  "IslesMainToAztecLobby",   -- slot 2
  "IslesMainToFactoryLobby", -- slot 3
  "IslesMainToGalleonLobby", -- slot 4
  "IslesMainToForestLobby",  -- slot 5
  "IslesMainToCavesLobby",   -- slot 6
  "IslesMainToCastleLobby",  -- slot 7
  "IslesMainToHelmLobby",    -- slot 8
}
local VANILLA_EXIT_LOBBY = {
  "IslesJapesLobbyToMain", "IslesAztecLobbyToMain", "IslesFactoryLobbyToMain",
  "IslesGalleonLobbyToMain", "IslesForestLobbyToMain", "IslesCavesLobbyToMain",
  "IslesCastleLobbyToMain", "IslesHelmLobbyToMain",
}
local LEVEL_TO_VANILLA_SLOT = {
  JungleJapes = 1, AngryAztec = 2, FranticFactory = 3, GloomyGalleon = 4,
  FungiForest = 5, CrystalCaves = 6, CreepyCastle = 7, HideoutHelm = 8,
}

-- For non-LZR seeds with shuffled LevelOrder (level_order_complex), populate
-- the redirect map with lobby transitions so the slot-N door leads to the
-- user's slot-N level's lobby (per archipelago/Regions.py:617-630).
local function _apply_level_order_complex(redirect)
  local d = _G.SLOT_DATA
  if not d or not d["LevelOrder"] or d["LevelOrder"] == "" then return false end
  -- Parse LevelOrder CSV; bail if it's empty or matches vanilla.
  local order = {}
  for name in tostring(d["LevelOrder"]):gmatch("[^,%s]+") do
    table.insert(order, name)
  end
  if #order == 0 then return false end
  -- Quick vanilla detection (skip work).
  local is_vanilla = true
  for i = 1, #order do
    if order[i] ~= ({"JungleJapes","AngryAztec","FranticFactory","GloomyGalleon",
                     "FungiForest","CrystalCaves","CreepyCastle","HideoutHelm"})[i] then
      is_vanilla = false; break
    end
  end
  if is_vanilla then return false end
  if _entrance_to_region == nil then build_entrance_map() end
  for i, level_name in ipairs(order) do
    local vanilla_slot_for_level = LEVEL_TO_VANILLA_SLOT[level_name]
    if vanilla_slot_for_level and i <= 8 then
      -- Walking vanilla slot-i door (e.g. IslesMainToJapesLobby for slot 1)
      -- now leads to the vanilla destination of the user's slot-i level's door.
      local source_sid = VANILLA_ENTER_LOBBY[i]
      local target_sid = VANILLA_ENTER_LOBBY[vanilla_slot_for_level]
      local target_region = target_sid and _entrance_to_region[target_sid]
      if source_sid and target_region then
        redirect[source_sid] = target_region
      end
      -- Reverse: walking from the user's slot-i level's reverse door now
      -- leads to where the vanilla slot-i reverse door normally leads.
      local rev_source_sid = VANILLA_EXIT_LOBBY[vanilla_slot_for_level]
      local rev_target_sid = VANILLA_EXIT_LOBBY[i]
      local rev_target_region = rev_target_sid and _entrance_to_region[rev_target_sid]
      if rev_source_sid and rev_target_region then
        redirect[rev_source_sid] = rev_target_region
      end
    end
  end
  return true
end

local function build_redirect_map()
  _redirect = {}
  _redirect_mode = nil
  local er = _G.SLOT_DATA and _G.SLOT_DATA["EntranceRando"]
  _redirect_for = er
  -- Always (re)build the entrance map first; both LZR and level_order_complex need it.
  if _entrance_to_region == nil then build_entrance_map() end
  -- LZR active iff EntranceRando is a non-empty table.
  local lzr_has_entries = false
  if type(er) == "table" then for _ in pairs(er) do lzr_has_entries = true; break end end
  if not lzr_has_entries then
    -- Non-LZR seed: maybe level_order_complex still applies.
    local applied = _apply_level_order_complex(_redirect)
    if applied then _redirect_mode = "lobby" end
    print(string.format("[graph.LevelOrderComplex] %s",
      applied and "lobby remapping applied" or "vanilla level order"))
    return
  end
  _redirect_mode = "lzr"
  local total, mapped, miss_src, miss_dst, miss_region = 0, 0, 0, 0, 0
  for src, dst in pairs(er) do
    total = total + 1
    local src_enum = _human_to_enum(src)
    local dst_enum = _human_to_enum(dst)
    -- LZR semantic: walking through the source door takes you to where the
    -- target transition LEADS (its TO destination). For dst_enum the TO region
    -- is the dest of the exit that carries that shuffleId.
    local dst_region = _entrance_to_region[dst_enum]
    if dst_region then
      _redirect[src_enum] = dst_region
      mapped = mapped + 1
    else
      if src_enum == src then miss_src = miss_src + 1 end
      if dst_enum == dst then miss_dst = miss_dst + 1 end
      if not dst_region then miss_region = miss_region + 1 end
      if _G.ENTRANCE_RANDO_DEBUG then
        print(string.format("[graph.EntranceRando] failed: %q (src_enum=%s) -> %q (dst_enum=%s, region=%s)",
          tostring(src), tostring(src_enum), tostring(dst), tostring(dst_enum), tostring(dst_region)))
      end
    end
  end
  print(string.format("[graph.EntranceRando] %d entries: %d mapped, %d unmapped (src_alias_miss=%d, dst_alias_miss=%d, dst_region_miss=%d)",
    total, mapped, total - mapped, miss_src, miss_dst, miss_region))
end

-- 8 one-way transitions in randomizer/Lists/ShufflableExit.py have no
-- back.reverse — AP excludes these from LZR (line 698 in archipelago/Regions.py)
-- so they keep their vanilla destination even when LZR is active. Every other
-- shuffleId-bearing exit is LZR-eligible and AP DISCONNECTS it when the user's
-- pairings doesn't claim it (lines 731-734). Treat unclaimed paired exits as
-- impassable to match AP's reachability.
local ONE_WAY_TRANSITIONS = {
  JapesMineToCarts          = true,
  JapesCartsToMain          = true,
  ForestMainToCarts         = true,
  ForestCartsToMain         = true,
  CastleTreeDrainToMain     = true,
  CastleMainToLibraryEnd    = true,
  CastleLibraryEndToMain    = true,
  CastleGreenhouseEndToMain = true,
}

-- archipelago/Regions.py:706 — when shuffle_helm_location is false (always, per
-- randomizer/Settings.py:832), these Helm transitions are excluded from LZR
-- and keep their vanilla destinations.
local HELM_VANILLA_TRANSITIONS = {
  IslesMainToHelmLobby = true,
  IslesHelmLobbyToMain = true,
  IslesToHelm          = true,
  HelmToIsles          = true,
}

local function resolve_dest(ex)
  if not ex.exitShuffleId then return ex.dest end
  -- archipelago/Regions.py:697 only redirects non-glitch shuffleable exits.
  if ex.isGlitchTransition then return ex.dest end
  -- One-way and Helm transitions stay vanilla (never LZR-shuffled).
  if ONE_WAY_TRANSITIONS[ex.exitShuffleId] then return ex.dest end
  if HELM_VANILLA_TRANSITIONS[ex.exitShuffleId] then return ex.dest end
  -- Rebuild the redirect map if SLOT_DATA.EntranceRando reference changed.
  local er = _G.SLOT_DATA and _G.SLOT_DATA["EntranceRando"]
  if er ~= _redirect_for then build_redirect_map() end
  if _redirect_mode == "lzr" then
    local target = _redirect[ex.exitShuffleId]
    if target then return target end
    -- LZR active but pairings doesn't claim this exit → disconnected.
    return "__LZR_DISCONNECTED__"
  elseif _redirect_mode == "lobby" then
    -- level_order_complex only remaps the 16 lobby transitions; everything
    -- else uses vanilla destinations.
    local target = _redirect[ex.exitShuffleId]
    if target then return target end
  end
  return ex.dest
end

M._entrance_map = function() if _entrance_to_region == nil then build_entrance_map() end; return _entrance_to_region end
M._redirect_map = function() return _redirect end

-- DKPortalLocations: dict {level_name -> door_location_name}. Plumbed but not yet
-- applied to the graph — translating door names to source regions requires a map
-- we don't generate today. graph.is_dk_portal_location(level) exposes the raw
-- value so dk64pt UI / overlays can read it without reaching into SLOT_DATA.
function M.dk_portal_for(level_name)
  local map = _G.SLOT_DATA and _G.SLOT_DATA["DKPortalLocations"]
  return map and map[level_name]
end

-- archipelago/Regions.py adds two extra reachability mechanisms not encoded in
-- the source LogicFiles:
--   1. Deathwarp — every region with deathwarp set has an extra edge to the
--      level's default spawn (CrystalCavesEntryHandler etc.) when deathwarp = -1.
--   2. Exit Level — every non-restart region in a level can reach wherever LZR
--      routes that level's "to Isles" door, with logic=true.
local LEVEL_DEFAULT_DEATHWARP = {
  DKIsles        = "IslesMain",
  JungleJapes    = "JungleJapesEntryHandler",
  AngryAztec     = "AngryAztecEntryHandler",
  FranticFactory = "FranticFactoryEntryHandler",
  GloomyGalleon  = "GloomyGalleonEntryHandler",
  FungiForest    = "FungiForestEntryHandler",
  CrystalCaves   = "CrystalCavesEntryHandler",
  CreepyCastle   = "CreepyCastleEntryHandler",
  HideoutHelm    = "HideoutHelmEntry",
}
-- shuffleId of the "<level> to Isles" exit, used by exit-level lookup.
local LEVEL_TO_ISLES_SHUFFLEID = {
  JungleJapes    = "JapesToIsles",
  AngryAztec     = "AztecToIsles",
  FranticFactory = "FactoryToIsles",
  GloomyGalleon  = "GalleonToIsles",
  FungiForest    = "ForestToIsles",
  CrystalCaves   = "CavesToIsles",
  CreepyCastle   = "CastleToIsles",
}

-- These tables are exposed to lambdas via state.event() and (eventually) location lookups.
-- They are repopulated by compute() each time the cache is invalidated.
local _reachable = nil
local _events = nil

-- Time-of-day gating per archipelago/Regions.py:678-685 — only applied when
-- "time_of_day" is in the user's item_pool. Exits with `time = "Time.Day"` /
-- `time = "Time.Night"` then require the corresponding tracker code to be live.
local function _time_in_pool()
  local d = _G.SLOT_DATA
  if not d or not d["ItemPool"] then return false end
  local pool = d["ItemPool"]
  if type(pool) == "string" then return pool:find("time_of_day", 1, true) ~= nil end
  if type(pool) == "table" then
    for _, v in pairs(pool) do if v == "time_of_day" then return true end end
  end
  return false
end

-- Mirrors archipelago/Regions.py:678-685 — when "time_of_day" is in the user's
-- item_pool, exits with time=Day/Night gate on having the corresponding item.
-- Tracker code names: "day" and "night" (toggle items autotracked from AP).
-- Day/Night items are slot_data-version-2.0.0+; older seeds had no time gating.
local function _time_gate(ex)
  if not ex.time then return true end
  if _G.state and _G.state.slot_data_version_at_least
     and not _G.state.slot_data_version_at_least(2, 0, 0) then
    return true
  end
  if not _time_in_pool() then return true end
  local function has(code)
    if _G.Tracker and _G.Tracker.FindObjectForCode then
      local o = _G.Tracker:FindObjectForCode(code)
      return o and o.Active or false
    end
    if _G.state and _G.state.attrs then return _G.state.attrs[code] == true end
    return false
  end
  if ex.time == "Time.Day"   then return has("day")   end
  if ex.time == "Time.Night" then return has("night") end
  return true
end

-- The state module reads from these — see state stub.
M._reachable = function() return _reachable end
M._events = function() return _events end

local function compute()
  local reachable = { [START_REGION] = true }
  local events = {}

  -- Make these visible to the state module's event() helper during the fixpoint pass.
  _reachable = reachable
  _events = events

  local changed = true
  local iterations = 0
  while changed do
    changed = false
    iterations = iterations + 1
    if iterations > 200 then
      error("graph reachability did not converge in 200 iterations")
    end
    for region_name, _ in pairs(reachable) do
      local region = M.regions[region_name]
      if region then
        local region_events = region.events
        if region_events then
          for i = 1, #region_events do
            local ev = region_events[i]
            if not events[ev.id] and ev.logic() then
              events[ev.id] = true
              changed = true
            end
          end
        end
        local region_exits = region.exits
        if region_exits then
          for i = 1, #region_exits do
            local ex = region_exits[i]
            local dest = resolve_dest(ex)
            if not reachable[dest] and ex.logic() and _time_gate(ex) then
              reachable[dest] = true
              changed = true
            end
          end
        end
        -- Deathwarp: -1 = level's default spawn. Logic = true.
        local dw = region.deathwarp
        if dw == -1 then
          local target = LEVEL_DEFAULT_DEATHWARP[region.level]
          if target and not reachable[target] then
            reachable[target] = true
            changed = true
          end
        elseif type(dw) == "string" and not reachable[dw] then
          -- Direct region-name deathwarp (rare but supported).
          reachable[dw] = true
          changed = true
        end
        -- Exit Level: any non-restart region in level X can reach wherever LZR
        -- routes "X to Isles". Logic = true.
        local sid = region.level and LEVEL_TO_ISLES_SHUFFLEID[region.level]
        if sid then
          local er = _G.SLOT_DATA and _G.SLOT_DATA["EntranceRando"]
          if er ~= _redirect_for then build_redirect_map() end
          local target = _redirect and _redirect[sid]
          if target and not reachable[target] then
            reachable[target] = true
            changed = true
          end
        end
      end
    end
  end

  _reachable = reachable
  _events = events

  if _G.LEVEL_DEBUG then
    local level_reach = {}
    for region_name, _ in pairs(reachable) do
      local r = M.regions[region_name]
      if r and r.level then level_reach[r.level] = (level_reach[r.level] or 0) + 1 end
    end
    print(string.format(
      "[graph.compute] level-any: Japes=%d Aztec=%d Factory=%d Galleon=%d Forest=%d Caves=%d Castle=%d Helm=%d Isles=%d",
      level_reach.JungleJapes or 0, level_reach.AngryAztec or 0,
      level_reach.FranticFactory or 0, level_reach.GloomyGalleon or 0,
      level_reach.FungiForest or 0, level_reach.CrystalCaves or 0,
      level_reach.CreepyCastle or 0, level_reach.HideoutHelm or 0,
      level_reach.DKIsles or 0))
    for _, lvl in ipairs({"CreepyCastle", "FranticFactory", "FungiForest"}) do
      local names = {}
      for region_name, _ in pairs(reachable) do
        local r = M.regions[region_name]
        if r and r.level == lvl then table.insert(names, region_name) end
      end
      table.sort(names)
      print(string.format("[graph.compute] %s reachable: %s", lvl, table.concat(names, ", ")))
    end
    -- Helm reachability chain — show which step blocks Helm.
    if _G.state then
      local function ks(c) local o = _G.Tracker and _G.Tracker:FindObjectForCode(c); return o and o.Active and "T" or "F" end
      print(string.format("[graph.helm] KremIsle=%s  KremIsleTopLevel=%s  KremIsleMouth=%s  HelmLobby=%s  HelmPastVines=%s  HelmEntry=%s  HelmStart=%s",
        reachable.KremIsle and "T" or "F",
        reachable.KremIsleTopLevel and "T" or "F",
        reachable.KremIsleMouth and "T" or "F",
        reachable.HideoutHelmLobby and "T" or "F",
        reachable.HideoutHelmLobbyPastVines and "T" or "F",
        reachable.HideoutHelmEntry and "T" or "F",
        reachable.HideoutHelmStart and "T" or "F"))
      print(string.format("[graph.helm] keys k6=%s k7=%s  events: CavesK=%s CastleK=%s  HelmLobbyTraversable=%s",
        ks("k6"), ks("k7"),
        events.CavesKeyTurnedIn and "T" or "F",
        events.CastleKeyTurnedIn and "T" or "F",
        events.HelmLobbyTraversable and "T" or "F"))
      print(string.format("[graph.helm] state: tiny=%s port=%s chunky=%s gone=%s vine=%s snide=%s",
        ks("tiny"), ks("port"), ks("chunky"), ks("gone"), ks("vine"), ks("snide")))
    end
    -- Find an entry point into Factory. For each LZR target in FranticFactory,
    -- show whether the source FROM-region is reachable AND the gate would pass.
    local rmap = M._redirect_map()
    print("[graph.compute] Factory entry points:")
    if rmap then
      for sid, dest in pairs(rmap) do
        local r = M.regions[dest]
        if r and r.level == "FranticFactory" then
          -- Find which region owns the exit with this shuffleId.
          local owner, gate = nil, nil
          for region_name, region in pairs(M.regions) do
            if region.exits then
              for _, ex in ipairs(region.exits) do
                if ex.exitShuffleId == sid then
                  owner = region_name
                  gate = ex.logic
                  break
                end
              end
            end
            if owner then break end
          end
          local owner_reach = owner and reachable[owner] and "T" or "F"
          local gate_pass = gate and pcall(gate) and gate() or false
          print(string.format("[graph.compute]   %s : owner=%s reach=%s gate=%s -> %s",
            sid, tostring(owner), owner_reach, tostring(gate_pass), tostring(dest)))
        end
      end
    end
    local er = _G.SLOT_DATA and _G.SLOT_DATA["EntranceRando"]
    print("[graph.compute] exit-level pairings:")
    local LEVEL_TO_ISLES_PRETTY = {
      JungleJapes    = "Jungle Japes to Isles",
      AngryAztec     = "Angry Aztec to Isles",
      FranticFactory = "Frantic Factory to Isles",
      GloomyGalleon  = "Gloomy Galleon to Isles",
      FungiForest    = "Fungi Forest to Isles",
      CrystalCaves   = "Crystal Caves to Isles",
      CreepyCastle   = "Creepy Castle to Isles",
    }
    for lvl, pretty in pairs(LEVEL_TO_ISLES_PRETTY) do
      local sid = LEVEL_TO_ISLES_SHUFFLEID[lvl]
      local target = rmap and rmap[sid] or "?"
      local target_lvl = M.regions[target] and M.regions[target].level or "?"
      local pairing_target = er and er[pretty] or "?"
      print(string.format("[graph.compute]   %s : pairings[%q] = %q -> FROM = %s [%s]",
        lvl, pretty, tostring(pairing_target), tostring(target), target_lvl))
    end
  end
end

local function ensure() if _reachable == nil then compute() end end

function M.is_region_accessible(name)
  ensure()
  return _reachable[name] == true
end

function M.is_event_active(name)
  ensure()
  return _events[name] == true
end

function M.is_location_accessible(loc_name)
  ensure()
  -- RainbowCoin locations require Shockwave per archipelago/Regions.py:298-299.
  -- The randomizer's lambdas don't include this gate; AP adds it externally.
  if loc_name and loc_name:sub(1, 12) == "RainbowCoin_" then
    if not (_G.state and _G.state.shockwave and _G.state.shockwave()) then
      return false
    end
  end
  local candidates = M.locations[loc_name]
  if not candidates then return false end
  for _, c in ipairs(candidates) do
    if _reachable[c.region] then
      local ok, val = pcall(c.logic)
      if ok and val then return true end
    end
  end
  return false
end

function M.invalidate()
  _reachable = nil
  _events = nil
  _entrance_to_region = nil  -- defensively rebuild; cheap (~10ms) and ensures EntranceRando wins
  _transition_from_region = nil
  _redirect = nil
  _redirect_for = nil
  _redirect_mode = nil
end

function M.reachable_regions() ensure(); return _reachable end
function M.active_events() ensure(); return _events end

-- =============================================================================
-- CB / coin aggregators. Walk reachable regions, evaluate each collectible's
-- access lambda, and sum the weighted amounts.
--
-- For balloons (10 CBs each), the randomizer additionally requires HasGun(kong)
-- to count the balloon (Logic.py:1031). We mirror that here by querying state.HasGun.
-- =============================================================================
function M.cb_count(level, kong)
  ensure()
  local regions = M.collectibles[level]
  if not regions then return 0 end
  -- Don't count anything for a kong the player doesn't actually have.
  -- The randomizer applies this gate externally; here we apply it inline.
  if kong ~= "any" and _G.state and _G.state.HasKong and not _G.state.HasKong(kong) then
    return 0
  end
  local total = 0
  for region_name, list in pairs(regions) do
    if _reachable[region_name] then
      for _, c in ipairs(list) do
        if c.kong == kong then
          local w = CB_WEIGHTS[c.kind]
          if w then
            local ok, val = pcall(c.logic)
            if ok and val then
              if c.kind ~= "balloon" or (_G.state and _G.state.HasGun(kong)) then
                total = total + c.amount * w
              end
            end
          end
        end
      end
    end
  end
  return total
end

function M.coin_count(kong)
  ensure()
  if kong ~= "any" and _G.state and _G.state.HasKong and not _G.state.HasKong(kong) then
    return 0
  end
  local total = 0
  for _level, regions in pairs(M.collectibles) do
    for region_name, list in pairs(regions) do
      if _reachable[region_name] then
        for _, c in ipairs(list) do
          if c.kind == "coin" and c.kong == kong then
            local ok, val = pcall(c.logic)
            if ok and val then total = total + c.amount end
          end
        end
      end
    end
  end
  return total
end

_G.graph = M
return M
