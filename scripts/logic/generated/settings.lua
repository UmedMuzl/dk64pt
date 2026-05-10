-- settings.lua — dk64pt PopTracker settings adapter for the generated logic.
--
-- archipelago.lua already converts most of slot_data into PopTracker provider codes
-- and named globals when the player connects. This adapter prefers those over re-
-- parsing slot_data, so behavior matches whatever the rest of the pack already sees.
--
-- Source order, by key:
--   1. M.values[k] / M.lists[k] — test-harness override
--   2. INVARIANTS — fixed values the AP world never varies
--   3. archipelago.lua's outputs:
--        glitches_selected_contains / tricks_selected_contains  -> tracker codes
--        removed_barriers_selected_contains                     -> tracker codes
--        switchsanity                                           -> _G.SWITCHSANITY
--        medal_cb_req_level                                     -> _G.MEDALCBREQUIREMENTLEVEL
--        fungi_time_internal                                    -> "Time" provider stage
--        galleon_water_internal                                 -> "water" provider stage
--   4. _G.SLOT_DATA — anything archipelago.lua hasn't surfaced (LogicType, BossKongs,
--                     BossMaps, LevelOrder, OpenLobbies, Autocomplete, LankyFreeingKong,
--                     MermaidPearls, Crown/CoinDoorItemCount)
--   5. DEFAULTS — used when not connected and no harness override

local M = {}
M.values = {}
M.lists = {}
M._switchsanity = {}

-- =============================================================================
-- AP invariants — settings the user has declared fixed for this world.
-- =============================================================================
local INVARIANTS = {
  free_trade_items             = true,
  auto_keys                    = true,
  fast_start_beginning_of_game = true,
  cannons_require_blast        = true,
  kasplat_rando                = false,
  crown_placement_rando        = false,
  tns_location_rando           = false,
  shuffle_shops                = false,
  wrinkly_location_rando       = false,
  perma_death                  = false,
  remove_wrinkly_puzzles       = true,   -- AP always disables the kong-specific puzzles
  -- Reasonable defaults for related flags that don't vary per seed.
  wipe_file_on_death           = false,
  disable_tag_barrels          = false,
}

-- =============================================================================
-- Defaults for settings we don't read from slot_data yet.
-- =============================================================================
local DEFAULTS = {
  shuffle_loading_zones          = "none",
  fungi_time_internal            = "day",
  galleon_water_internal         = "lowered",
  bonus_barrels                  = "shuffled",
  bananaport_rando               = "off",
  damage_amount                  = "default",
  chunky_phase_slam_req_internal = "green",
  logic_type                     = "glitchless",
  helm_setting                   = "default",
  helm_phase_count               = 5,
  diddy_freeing_kong             = "any",
  lanky_freeing_kong             = "any",
  tiny_freeing_kong              = "any",
  chunky_freeing_kong            = "any",
  open_lobbies                   = false,
  mermaid_gb_pearls              = 0,
  crown_door_open                = false,
  coin_door_open                 = false,
  medal_cb_req_level             = { 45, 45, 45, 45, 45, 45, 45 },
  level_order                    = { 0, 1, 2, 3, 4, 5, 6, 7 },
  helm_donkey = "donkey",
  helm_diddy = "diddy",
  helm_lanky = "lanky",
  helm_tiny = "tiny",
  helm_chunky = "chunky",
}

-- =============================================================================
-- Helpers.
-- =============================================================================
local function slot() return _G.SLOT_DATA end

local function tracker_has(code)
  if _G.Tracker and type(_G.Tracker.ProviderCountForCode) == "function" then
    return (_G.Tracker:ProviderCountForCode(code) or 0) > 0
  end
  return false
end

local function tracker_stage_name(provider_code, stage_table)
  -- Returns the stage NAME for a multi-stage provider (e.g. "water" -> "raised"|"lowered").
  if _G.Tracker and type(_G.Tracker.FindObjectForCode) == "function" then
    local obj = _G.Tracker:FindObjectForCode(provider_code)
    if obj and obj.CurrentStage then
      return stage_table[obj.CurrentStage]
    end
  end
  return nil
end

local function parse_csv(s)
  if not s or s == "" then return {} end
  local out = {}
  for chunk in string.gmatch(s, "([^,]+)") do
    table.insert(out, chunk:match("^%s*(.-)%s*$"))
  end
  return out
end

-- =============================================================================
-- Scalar readers — pulled from archipelago.lua's outputs first, slot_data second.
-- =============================================================================
local WATER_STAGES = { [0] = "lowered", [1] = "raised" }
local FOREST_STAGES = { [0] = "day", [1] = "night", [2] = "dusk", [3] = "progressive" }

local SCALAR = {
  logic_type             = function(d) return d and d["LogicType"] end,
  open_lobbies           = function(d) return d and d["OpenLobbies"] == true end,
  bonus_barrels          = function(d) return d and (d["Autocomplete"] and "skip" or "shuffled") end,
  helm_setting           = function(d) return d and d["HelmSetting"] end,
  lanky_freeing_kong     = function(d) return d and d["LankyFreeingKong"] end,
  mermaid_gb_pearls      = function(d) return d and d["MermaidPearls"] end,
  -- helm_phase_count is the count of Helm phases (kong rooms). It isn't in slot_data, but
  -- HelmOrder is — and helm_phase_count == #HelmOrder. Used only by canAccessHelm under
  -- the strict_helm_timer hard-mode flag; defaults to 5 if HelmOrder isn't present.
  helm_phase_count       = function(d)
    if not d or not d["HelmOrder"] or d["HelmOrder"] == "" then return nil end
    local n = 0
    for _ in string.gmatch(d["HelmOrder"], "([^,]+)") do n = n + 1 end
    return n
  end,
  -- Door open = item count of 0.
  crown_door_open        = function(d) return d and (d["CrownDoorItemCount"] or 1) == 0 end,
  coin_door_open         = function(d) return d and (d["CoinDoorItemCount"] or 1) == 0 end,
  -- Stage providers driven by archipelago.lua.
  fungi_time_internal    = function(_) return tracker_stage_name("Time", FOREST_STAGES) end,
  galleon_water_internal = function(_) return tracker_stage_name("water", WATER_STAGES) end,
}

-- =============================================================================
-- List membership — archipelago.lua already flips a tracker code per glitch / trick /
-- barrier, so a lambda asking "is X selected?" is just a tracker probe for X.
-- For older versions, archipelago.lua maps `monkey_maneuvers` <-> `advanced_platforming`;
-- we honour both directions.
-- =============================================================================
local function tracker_alias(member)
  if member == "monkey_maneuvers"   then return "advanced_platforming", "monkey_maneuvers" end
  if member == "advanced_platforming" then return "advanced_platforming", "monkey_maneuvers" end
  return member, nil
end

local function list_member(opt, member)
  -- Test-harness override always wins.
  if M.lists[opt] then
    for _, v in ipairs(M.lists[opt]) do if v == member then return true end end
    return false
  end
  -- Live: tracker codes (set by archipelago.lua's GlitchesSelected/TricksSelected/RemovedBarriers parsing).
  if opt == "glitches_selected" or opt == "tricks_selected" or opt == "removed_barriers_selected" then
    local primary, alt = tracker_alias(member)
    if tracker_has(primary) then return true end
    if alt and tracker_has(alt) then return true end
    return false
  end
  -- Hard mode / hard bosses / misc changes / faster checks / shuffled location types
  -- aren't surfaced today (no slot_data field, no tracker code). Default false.
  return false
end

-- =============================================================================
-- Tabular readers.
-- =============================================================================
local LEVEL_ORDER_NAMES = { "JungleJapes", "AngryAztec", "FranticFactory", "GloomyGalleon",
                            "FungiForest", "CrystalCaves", "CreepyCastle" }
local LEVEL_FULL = { "DKIsles", "JungleJapes", "AngryAztec", "FranticFactory", "GloomyGalleon",
                     "FungiForest", "CrystalCaves", "CreepyCastle", "HideoutHelm" }

local function level_to_index(arg)
  if type(arg) == "number" then return arg + 1 end
  for i, n in ipairs(LEVEL_FULL) do if n == arg then return i end end
  return nil
end

local TABLES = {
  -- LevelOrder is a Python dict keyed by slot number 1..8 (level_order[1] = first
  -- level played, level_order[8] = Helm). The CSV in slot_data preserves that
  -- ordering, so list[N] in Lua (1-indexed) maps directly to Python's
  -- level_order[N]. No offset.
  level_order = function(d, arg)
    if not d then return nil end
    local list = parse_csv(d["LevelOrder"])
    if type(arg) == "number" then return list[arg] end
    return list[arg]
  end,
  -- archipelago.lua already populates _G.MEDALCBREQUIREMENTLEVEL[level_name] = number.
  medal_cb_req_level = function(_, arg)
    local table_global = _G.MEDALCBREQUIREMENTLEVEL
    if not table_global then return nil end
    if type(arg) == "number" then
      local name = LEVEL_ORDER_NAMES[arg + 1]
      return name and table_global[name]
    end
    return table_global[arg]
  end,
}

-- Boss-data lists in slot_data DON'T include Isles. BossKongs/BossMaps have 7
-- entries (Japes..Castle) and BossBananas has 8 (Japes..Helm). level_to_index
-- numbers Isles=1, Japes=2, ..., so subtracting 1 gives the right CSV slot.
local function boss_level_index(arg)
  local idx = level_to_index(arg)
  if not idx or idx < 2 then return nil end  -- Isles has no boss data
  return idx - 1
end

-- Boss kongs / maps from slot_data (7 entries: Japes..Castle).
local function boss_lookup(field, arg)
  local d = slot(); if not d then return nil end
  local list = parse_csv(d[field])
  local idx = boss_level_index(arg)
  return idx and list[idx]
end

-- Boss-bananas T&S threshold (8 entries: Japes..Helm).
local function boss_bananas_lookup(arg)
  local d = slot(); if not d or not d["BossBananas"] then return 0 end
  local list = parse_csv(d["BossBananas"])
  local idx = boss_level_index(arg)
  if not idx then return 0 end
  return tonumber(list[idx]) or 0
end

-- =============================================================================
-- Switchsanity: archipelago.lua stores _G.SWITCHSANITY = slot_data['SwitchSanity'].
-- The lambdas read data.switch_type, so we adapt 'type' -> 'switch_type' on the fly.
-- Vanilla map fills gaps when a switch isn't randomized.
-- =============================================================================
-- Generated from randomizer/Lists/Switches.py — do not hand-edit.
local VANILLA_SWITCHSANITY = {
  AztecBlueprintDoor       = { kong = "donkey", switch_type = "GunSwitch" },
  AztecGongTower           = { kong = "diddy",  switch_type = "Gong" },
  AztecGuitar              = { kong = "diddy",  switch_type = "InstrumentPad" },
  AztecLlamaCoconut        = { kong = "donkey", switch_type = "GunSwitch" },
  AztecLlamaFeather        = { kong = "tiny",   switch_type = "GunSwitch" },
  AztecLlamaGrape          = { kong = "lanky",  switch_type = "GunSwitch" },
  AztecLlamaPuzzle         = { kong = "donkey", switch_type = "GunInstrumentCombo" },
  AztecLobbyGong           = { kong = "diddy",  switch_type = "Gong" },
  AztecOKONGPuzzle         = { kong = "diddy",  switch_type = "PushableButton" },
  AztecQuicksandSwitch     = { kong = "donkey", switch_type = "SlamSwitch" },
  CavesBoulderCave         = { kong = "chunky", switch_type = "IceWall" },
  CavesGoneCave            = { kong = "chunky", switch_type = "IceWall" },
  CavesLobbyBP             = { kong = "chunky", switch_type = "IceWall" },
  CavesLobbyLava           = { kong = "chunky", switch_type = "IceWall" },
  CavesSnideCave           = { kong = "chunky", switch_type = "IceWall" },
  FactoryArcadeTunnelGrate = { kong = "chunky", switch_type = "PunchGrate" },
  FactoryDarkRoomGrate     = { kong = "chunky", switch_type = "PunchGrate" },
  FactoryFreeKong          = { kong = "lanky",  switch_type = "SlamSwitch" },
  FactoryToyMonsterGrate   = { kong = "chunky", switch_type = "PunchGrate" },
  FungiGreenFeather        = { kong = "tiny",   switch_type = "GunSwitch" },
  FungiGreenPineapple      = { kong = "chunky", switch_type = "GunSwitch" },
  FungiYellow              = { kong = "lanky",  switch_type = "GunSwitch" },
  GalleonCannonGame        = { kong = "chunky", switch_type = "GunSwitch" },
  GalleonLighthouse        = { kong = "donkey", switch_type = "GunSwitch" },
  GalleonShipwreck         = { kong = "diddy",  switch_type = "GunSwitch" },
  IslesAztecLobbyFeather   = { kong = "tiny",   switch_type = "GunSwitch" },
  IslesFungiLobbyFeather   = { kong = "tiny",   switch_type = "GunSwitch" },
  IslesHelmLobbyGone       = { kong = "chunky", switch_type = "PadMove" },
  IslesMonkeyport          = { kong = "tiny",   switch_type = "PadMove" },
  IslesSpawnRocketbarrel   = { kong = "lanky",  switch_type = "InstrumentPad" },
  JapesDiddyCave           = { kong = "diddy",  switch_type = "GunSwitch" },
  JapesFeather             = { kong = "tiny",   switch_type = "GunSwitch" },
  JapesFreeKong            = { kong = "donkey", switch_type = "GunSwitch" },
  JapesPainting            = { kong = "diddy",  switch_type = "GunSwitch" },
  JapesRambi               = { kong = "donkey", switch_type = "GunSwitch" },
}

local function switchsanity_lookup(name)
  if M._switchsanity[name] ~= nil then return M._switchsanity[name] end
  local data = _G.SWITCHSANITY
  if data and data[name] then
    local raw = data[name]
    return { kong = raw.kong or raw["kong"], switch_type = raw.type or raw["type"] }
  end
  return VANILLA_SWITCHSANITY[name]
end

-- =============================================================================
-- Dispatch.
-- =============================================================================
local SUFFIX = "_contains"

setmetatable(M, {
  __index = function(_, key)
    -- 1. AP invariants.
    if INVARIANTS[key] ~= nil then
      return function() return INVARIANTS[key] end
    end

    -- 2. List membership: <opt>_contains(member).
    if #key > #SUFFIX and key:sub(-#SUFFIX) == SUFFIX then
      local opt = key:sub(1, -#SUFFIX - 1)
      return function(member) return list_member(opt, member) end
    end

    -- 3. Special: switchsanity / boss_kongs / boss_maps.
    if key == "switchsanity" then return switchsanity_lookup end
    if key == "boss_kongs" then return function(arg) return boss_lookup("BossKongs", arg) end end
    if key == "boss_maps" then return function(arg) return boss_lookup("BossMaps", arg) end end
    if key == "boss_bananas" then return boss_bananas_lookup end

    -- 4. Tabular (settings.X(idx)).
    if TABLES[key] then
      return function(arg)
        if M.values[key] then
          local v = M.values[key]
          if type(arg) == "number" then return v[arg + 1] end
          return v[arg]
        end
        if slot() then return TABLES[key](slot(), arg) end
        local d = DEFAULTS[key]
        if type(d) == "table" and type(arg) == "number" then return d[arg + 1] end
        return d
      end
    end

    -- 5. Scalar reader from slot_data.
    if SCALAR[key] then
      return function()
        if M.values[key] ~= nil then return M.values[key] end
        if slot() then
          local v = SCALAR[key](slot())
          if v ~= nil then return v end
        end
        return DEFAULTS[key]
      end
    end

    -- 6. Default fallback (allows test-harness override of arbitrary keys).
    return function(arg)
      local v = M.values[key]
      if v == nil then v = DEFAULTS[key] end
      if arg ~= nil and type(v) == "table" then
        if type(arg) == "number" then return v[arg + 1] end
        return v[arg]
      end
      return v
    end
  end,
})

_G.settings = M
return M
