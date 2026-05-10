-- state.lua — runtime adapter that exposes LogicVarHolder's public surface to
-- the generated lambdas. Works under both PopTracker (reads Tracker item codes)
-- and the lupa test harness (reads from state.attrs).
--
-- Conventions:
--   state.<flag>()        -- boolean attribute (donkey, coconut, peanut, ...)
--   state.<helper>(args)  -- ported LogicVarHolder method (CanPhase, ...)
--   state.event(name)     -- looks up active event; populated by graph.lua
--   state.cb(level, kong) -- colored banana count for a (level, kong) pair
--
-- `settings` (a separate module) is expected to be a module-level global; the
-- generated region files reference `settings.<opt>()` and `settings.<opt>_contains(...)`.
--
-- Hand-translation note: methods are ported from randomizer/Logic.py. Each port
-- carries an `-- @logic Logic.py:<line>` annotation so divergence is reviewable.

local M = {}

-- =============================================================================
-- Backend: PopTracker vs test harness. The choice is per-call (not per-module-load)
-- so test harnesses can set _G.Tracker AFTER state.lua has been required.
-- =============================================================================

M.attrs = {}  -- test-harness fallback when _G.Tracker isn't available

local function count(code)
  if _G.Tracker and type(_G.Tracker.ProviderCountForCode) == "function" then
    return _G.Tracker:ProviderCountForCode(code) or 0
  end
  local v = M.attrs[code]
  if type(v) == "number" then return v end
  return v and 1 or 0
end

local function has(code, n) return count(code) >= (n or 1) end

M._has = has
M._count = count

-- =============================================================================
-- Event / special-location lookup hooks (set by graph.lua during fixpoint)
-- =============================================================================

M._event_lookup = function(_) return false end
M._special_loc_lookup = function(_) return false end
function M.event(name) return M._event_lookup(name) end
function M.special_loc(name) return M._special_loc_lookup(name) end

-- Compare slot_data["Version"] against (M, m, p). Returns true if >= or version is missing.
function M.slot_data_version_at_least(want_major, want_minor, want_patch)
  local d = _G.SLOT_DATA
  local v = d and d["Version"]
  if not v or v == "" then return true end  -- treat missing version as latest
  local maj, min, pat = tostring(v):match("(%d+)%.(%d+)%.(%d+)")
  maj, min, pat = tonumber(maj or 0), tonumber(min or 0), tonumber(pat or 0)
  if maj > want_major then return true end
  if maj < want_major then return false end
  if min > want_minor then return true end
  if min < want_minor then return false end
  return pat >= want_patch
end

-- =============================================================================
-- Kong + move + item attributes
-- @logic Logic.py:Reset/Update/__init__
-- =============================================================================

-- Kong ownership.
function M.donkey()  return has("donkey") end
function M.diddy()   return has("diddy") end
function M.lanky()   return has("lanky") end
function M.tiny()    return has("tiny") end
function M.chunky()  return has("chunky") end

-- NOTE: there is no separate "is<kong>" surface. The transpiler rewrites
-- `l.isdonkey`/`l.isdiddy`/... directly to `state.donkey()`/`state.diddy()`/... at
-- generation time, since archipelago/Logic.py forces tag_anywhere on. See
-- lambda_to_lua._attribute ISX_ALIAS.

-- Weapons (always require the owning kong).
function M.coconut()   return has("donkey") and has("coconut") end
function M.peanut()    return has("diddy")  and has("peanuts") end
function M.grape()     return has("lanky")  and has("grape")   end
function M.feather()   return has("tiny")   and has("feather") end
function M.pineapple() return has("chunky") and has("pineapple") end

-- Instruments.
function M.bongos()    return has("donkey") and has("bongos")   end
function M.guitar()    return has("diddy")  and has("guitar")   end
function M.trombone()  return has("lanky")  and has("trombone") end
function M.saxophone() return has("tiny")   and has("sax")      end
function M.triangle()  return has("chunky") and has("triangle") end

-- Active moves (kong-gated).
function M.blast()       return has("donkey") and has("blast")  end
function M.strongKong()  return has("donkey") and has("strong") end
function M.grab()        return has("donkey") and has("grab")   end
function M.charge()      return has("diddy")  and has("charge") end
function M.jetpack()     return has("diddy")  and has("rocket") end
function M.spring()      return has("diddy")  and has("spring") end
function M.handstand()   return has("lanky")  and has("orangstand") end
function M.balloon()     return has("lanky")  and has("balloon") end
function M.sprint()      return has("lanky")  and has("sprint") end
function M.mini()        return has("tiny")   and has("mini")   end
function M.twirl()       return has("tiny")   and has("twirl")  end
function M.monkeyport()  return has("tiny")   and has("port")   end
function M.hunkyChunky() return has("chunky") and has("big")    end
function M.punch()       return has("chunky") and has("punch")  end
function M.gorillaGone() return has("chunky") and has("gone")   end

-- Training-barrel moves + shared abilities. fast_start_beginning_of_game does
-- NOT grant these — it just skips the training barrel checks. The actual moves
-- still need to appear in the player's inventory (autotracker / manual toggle).
function M.vines()         return has("vine")    end
function M.swim()          return has("dive")    end
function M.oranges()       return has("oranges") end
function M.barrels()       return has("barrel")  end
function M.climbing()      return has("climb")   end
-- Cannons became a shuffled item only in slot_data version 2.0.0+. For older
-- versions the tracker code is meaningless, so treat as always-on.
function M.cannons()
  if not M.slot_data_version_at_least(2, 0, 0) then return true end
  return has("cannons") or has("cannon")
end
function M.can_use_vines() return M.vines() end

-- Specials.
function M.camera()       return has("camera")    end
function M.shockwave()    return has("shockwave") end
function M.scope()        return has("sniper")    end
function M.homing()       return has("homing")    end
function M.nintendoCoin() return has("nintendo") end
function M.rarewareCoin() return has("rareware") end

-- Slam ladder. dk64pt represents Simian Slam progressively: 1 = base, 2 = super, 3 = super-duper.
local function slam_level()
  -- dk64pt uses a single "slam" code with progressive levels; some packs use
  -- separate greenslam/blueslam/redslam codes. We support both, picking the
  -- maximum effective tier.
  local n = count("slam")
  if has("redslam")  or n >= 3 then return 3 end
  if has("blueslam") or n >= 2 then return 2 end
  if has("greenslam") or n >= 1 then return 1 end
  return 0
end
function M.Slam()          return slam_level() >= 1 end
function M.superSlam()     return slam_level() >= 2 end
function M.superDuperSlam() return slam_level() >= 3 end
M.slam_level = slam_level

-- Keys.
function M.JapesKey()   return has("k1") end
function M.AztecKey()   return has("k2") end
function M.FactoryKey() return has("k3") end
function M.GalleonKey() return has("k4") end
function M.ForestKey() return has("k5") end
function M.CavesKey()   return has("k6") end
function M.CastleKey()  return has("k7") end
function M.HelmKey()    return has("k8") end

-- Misc collectible counts that lambdas occasionally read.
function M.Beans()    return count("bean")    end
function M.Pearls()   return count("pearl")   end
function M.Melons()   return true -- Only important for lava water
end
function M.Blueprints() return count("dkbp") + count("diddybp") + count("lankybp") + count("tinybp") + count("chunkybp") end

-- "kong" — current Kong as enum-value-int. With tag-anywhere on, treat as donkey by default.
function M.kong() return 0 end

-- Always-false assumption flags (matches archipelago/Logic.py's overrides).
function M.assumeAztecEntry()      return false end
function M.assumeKRoolAccess()     return false end
function M.assumeLevel4Entry()     return false end
function M.assumeLevel5Entry()     return false end
function M.assumeLevel7Entry()     return false end
function M.assumeLevel8Entry()     return false end
function M.assumeUpperIslesAccess() return false end

-- Region/area access flags driven by tracker toggles or NPC presence.
function M.snideAccess()  return has("snide")  end
function M.crankyAccess() return has("cranky") end
function M.candyAccess()  return has("candy")  end
function M.funkyAccess()  return has("funky")  end
-- Day/Night became shuffled items in slot_data version 2.0.0+. For older
-- versions the tracker codes don't exist, so treat as always-on.
function M.dayAccess()
  if not M.slot_data_version_at_least(2, 0, 0) then return true end
  return has("day")
end
function M.nightAccess()
  if not M.slot_data_version_at_least(2, 0, 0) then return true end
  return has("night")
end
function M.allTrainingChecks() return true end

-- =============================================================================
-- Glitch / trick flags
-- @logic Logic.py:104-126
-- =============================================================================

local function glitch(name)
  if settings.logic_type() ~= "glitch" then return false end
  return settings.glitches_selected_contains(name)
end
local function trick(name)
  local lt = settings.logic_type()
  if lt ~= "glitch" and lt ~= "advanced_glitchless" then return false end
  return settings.tricks_selected_contains(name)
end

function M.phasewalk()           return glitch("phase_walking") end
function M.phaseswim()           return glitch("phase_swimming") end
function M.phasefall()           return glitch("phasefall") end
function M.moonkicks()           return glitch("moonkicks") end
function M.moontail()            return glitch("moontail") end
function M.ledgeclip()           return glitch("ledge_clips") end
function M.generalclips()        return glitch("general_clips") end
function M.lanky_blocker_skip()  return glitch("b_locker_skips") end
function M.dk_blocker_skip()     return glitch("b_locker_skips") end
function M.troff_skip()          return glitch("troff_n_scoff_skips") end
function M.spawn_snags()         return glitch("spawn_snags") end
function M.swim_through_shores() return glitch("swim_through_shores") end
function M.skew()                return glitch("skew") end
function M.tbs()
  if not glitch("tag_barrel_storage") then return false end
  return not settings.disable_tag_barrels()
end

function M.monkey_maneuvers()    return trick("advanced_platforming") end
function M.hard_shooting()       return trick("hard_shooting") end
function M.advanced_grenading()  return trick("advanced_grenading") end
function M.slope_resets()        return trick("slope_resets") end
function M.adv_orange_usage()    return trick("advanced_orange_usage") end

-- =============================================================================
-- Helper methods (ported from randomizer/Logic.py)
-- =============================================================================

-- @logic Logic.py:692
function M.CanPhaseswim() return M.phaseswim() and M.swim() end
-- @logic Logic.py:696
function M.CanSTS() return M.swim_through_shores() and M.swim() end
-- @logic Logic.py:700
function M.CanMoonkick()
  -- Krusha-model DK can't moonkick; until we model kong models, accept the glitch toggle.
  return M.moonkicks() and M.donkey()
end
-- @logic Logic.py:735
function M.CanMoontail() return M.moontail() and M.diddy() end
-- @logic Logic.py:704
function M.CanOStandTBSNoclip() return M.tbs() and M.handstand() and M.lanky() end
-- @logic Logic.py:739
function M.CanPhase() return M.phasewalk() or (M.phasefall() and M.chunky() and M.camera()) end
-- @logic Logic.py:708
function M.CanAccessRNDRoom() return M.CanPhase() or M.generalclips() or M.CanOStandTBSNoclip() end

-- @logic Logic.py:716
function M.CanSkew(swim, is_japes, kong_req)
  if is_japes == nil then is_japes = true end
  if kong_req == nil then kong_req = "any" end
  if swim then
    return M.skew() and M.swim() and M.HasGun(kong_req) and M.CanPhaseswim()
  end
  local satisfies_cannon_req = true
  if is_japes then satisfies_cannon_req = M.event("JapesAccessToCannon") end
  return M.skew() and M.oranges() and (settings.damage_amount() ~= "ohko") and satisfies_cannon_req
end

-- @logic Logic.py:712
function M.CanGetOnCannonGamePlatform()
  return M.event("WaterRaised") or (M.monkey_maneuvers() and (M.chunky() or M.lanky()))
end

-- @logic Logic.py:570
-- @logic Logic.py:570 — alter_switch_allocation (slot_data["ProgressiveSwitchStrength"])
-- replaces the lambda's default slam tier with a per-level value from
-- slot_data["SlamLevels"] (CSV "JungleJapes: green, AngryAztec: blue, ...").
local SLAM_TIER = { no_slam = 0, green = 1, blue = 2, red = 3 }
local function _slam_req_for_level(level, default_req)
  local d = _G.SLOT_DATA
  if not (d and d["ProgressiveSwitchStrength"] and d["SlamLevels"]
          and d["SlamLevels"] ~= "") then
    return default_req or 1
  end
  for entry in tostring(d["SlamLevels"]):gmatch("[^,]+") do
    local lvl, tier = entry:match("^%s*(.-)%s*:%s*(.-)%s*$")
    if lvl == level then
      return SLAM_TIER[tier] or default_req or 1
    end
  end
  return default_req or 1
end

function M.CanSlamSwitch(level, default_req)
  local req = _slam_req_for_level(level, default_req)
  if req <= 0 then return true end
  if req == 1 then return M.Slam() end
  if req == 2 then return M.superSlam() end
  if req == 3 then return M.superDuperSlam() end
  return true
end

-- @logic Logic.py:1223
function M.CanSlamChunkyPhaseSwitch()
  local stg = settings.chunky_phase_slam_req_internal()
  if stg == "blue" then return M.superSlam() end
  if stg == "red" then return M.superDuperSlam() end
  return M.Slam()
end

-- @logic Logic.py:614
function M.checkBarrier(name) return settings.removed_barriers_selected_contains(name) end
-- @logic Logic.py:610
function M.checkFastCheck(name) return settings.faster_checks_selected_contains(name) end
-- @logic Logic.py:589
function M.IsLavaWater() return settings.hard_mode_selected_contains("water_is_lava") end
-- @logic Logic.py:599
function M.IsHardFallDamage() return settings.hard_mode_selected_contains("reduced_fall_damage_threshold") end
-- @logic Logic.py:593
function M.HardBossesSettingEnabled(name) return settings.hard_bosses_selected_contains(name) end
-- @logic Logic.py:619
function M.galleonGatesStayOpen() return settings.misc_changes_selected_contains("remove_galleon_ship_timers") end
-- @logic Logic.py:627
function M.cabinBarrelMoved() return settings.misc_changes_selected_contains("move_spring_cabin_rocketbarrel") end

-- @logic Logic.py:790
function M.HasKong(kong)
  if kong == "donkey" then return M.donkey() end
  if kong == "diddy"  then return M.diddy()  end
  if kong == "lanky"  then return M.lanky()  end
  if kong == "tiny"   then return M.tiny()   end
  if kong == "chunky" then return M.chunky() end
  if kong == "any" then
    return M.donkey() or M.diddy() or M.lanky() or M.tiny() or M.chunky()
  end
  return false
end

-- @logic Logic.py:775
function M.IsKong(kong)
  if kong == "any" then return true end
  return M.HasKong(kong)
end

-- @logic Logic.py:805
function M.HasGun(kong)
  if kong == "any" then
    return M.coconut() or M.peanut() or M.grape() or M.feather() or M.pineapple()
  end
  if kong == "donkey" then return M.coconut() end
  if kong == "diddy"  then return M.peanut()  end
  if kong == "lanky"  then return M.grape()   end
  if kong == "tiny"   then return M.feather() end
  if kong == "chunky" then return M.pineapple() end
  return false
end

-- @logic Logic.py:821
function M.HasInstrument(kong)
  if kong == "any" then
    return M.bongos() or M.guitar() or M.trombone() or M.saxophone() or M.triangle()
  end
  if kong == "donkey" then return M.bongos() end
  if kong == "diddy"  then return M.guitar() end
  if kong == "lanky"  then return M.trombone() end
  if kong == "tiny"   then return M.saxophone() end
  if kong == "chunky" then return M.triangle() end
  return false
end

-- @logic Logic.py:649 — switchsanity gate
function M.hasMoveSwitchsanity(switch_name, kong_needs_current, level, default_slam_level)
  if kong_needs_current == nil then kong_needs_current = true end
  level = level or "JungleJapes"
  default_slam_level = default_slam_level or 0
  -- The randomizer reads settings.switchsanity_data[switch] which the tracker
  -- exposes as settings.switchsanity(<switch>) returning {kong=..., switch_type=...}.
  local data = settings.switchsanity(switch_name)
  if not data then return false end
  local kong_ok
  if kong_needs_current then kong_ok = M.IsKong(data.kong) else kong_ok = M.HasKong(data.kong) end
  local t = data.switch_type
  if t == "PadMove" then
    local pads = { donkey = M.blast(), diddy = M.spring(), lanky = M.balloon(), tiny = M.monkeyport(), chunky = M.gorillaGone() }
    return kong_ok and pads[data.kong] == true
  elseif t == "MiscActivator" then
    local misc = { donkey = M.grab(), diddy = M.charge(), lanky = false, tiny = false, chunky = false }
    return kong_ok and misc[data.kong] == true
  elseif t == "GunSwitch" then
    if data.kong == "any" then return M.HasGun("any") end
    return kong_ok and M.HasGun(data.kong)
  elseif t == "InstrumentPad" then
    if data.kong == "any" then return M.HasInstrument("any") end
    return kong_ok and M.HasInstrument(data.kong)
  elseif t == "SlamSwitch" then
    return kong_ok and M.CanSlamSwitch(level, default_slam_level)
  elseif t == "GunInstrumentCombo" then
    if data.kong == "any" then return M.HasGun("any") and M.HasInstrument("any") end
    return kong_ok and M.HasGun(data.kong) and M.HasInstrument(data.kong)
  elseif t == "PushableButton" or t == "PunchGrate" or t == "IceWall" or t == "Gong" then
    if data.kong == "diddy"  then return kong_ok and M.charge() end
    if data.kong == "chunky" then return kong_ok and M.punch()  end
  end
  return false
end

-- @logic Logic.py:1212
function M.isKrushaAdjacent(_kong)
  -- Without modeling per-Kong skin choice we conservatively assume default skins.
  return false
end

-- @logic Logic.py:931 — checks whether Diddy's cage can be opened.
-- Real impl reads spoiler.LocationList to short-circuit if item is NoItem; the
-- tracker doesn't have the spoiler, so we assume the cage has a real item.
function M.CanFreeDiddy() return M.hasMoveSwitchsanity("JapesFreeKong") end

-- @logic Logic.py:935 — picking up the caged item, which opens Japes' gates.
function M.CanOpenJapesGates()
  if not M.CanFreeDiddy() then return false end
  if M.IsKong(settings.diddy_freeing_kong()) then return true end
  if settings.free_trade_items() then return true end
  return false
end

-- @logic Logic.py:961
function M.CanFreeTiny()
  local kong = settings.tiny_freeing_kong()
  if kong == "diddy" or kong == "chunky" then return M.hasMoveSwitchsanity("AztecOKONGPuzzle") end
  if kong == "any" then return true end
  return M.IsKong(kong) or settings.free_trade_items()
end

-- @logic Logic.py:971
function M.CanLlamaSpit() return M.HasInstrument(settings.lanky_freeing_kong()) end

-- @logic Logic.py:975
function M.CanFreeLanky()
  return (M.swim() and M.hasMoveSwitchsanity("AztecLlamaPuzzle")) or M.CanPhase() or M.CanPhaseswim()
end

-- @logic Logic.py:982
function M.CanFreeChunky()
  return M.hasMoveSwitchsanity("FactoryFreeKong", true, "FranticFactory", 1)
end
function M.canOpenLlamaTemple()
  if not (M.checkBarrier("aztec_llama_switches") or M.event("LlamaFreed")) then return false end
  return M.hasMoveSwitchsanity("AztecLlamaCoconut")
      or M.hasMoveSwitchsanity("AztecLlamaGrape")
      or M.hasMoveSwitchsanity("AztecLlamaFeather")
end
function M.canTravelToMechFish()
  if settings.shuffle_loading_zones() ~= "all" or settings.bananaport_rando() == "off" then
    return M.swim()
  end
  local lh = M.checkBarrier("galleon_lighthouse_gate") or M.hasMoveSwitchsanity("GalleonLighthouse", false)
  local sy = M.checkBarrier("galleon_shipyard_area_gate") or M.hasMoveSwitchsanity("GalleonShipwreck", false)
  return M.swim() and lh and sy
end
function M.CanOpenForestLobbyGoneDoor()
  return M.gorillaGone() and M.chunky()
end

-- @logic Logic.py:603
function M.canAccessHelm()
  if M.HardBossesSettingEnabled("strict_helm_timer") then
    return M.snideAccess() and M.Blueprints() > (4 + 2 * (settings.helm_phase_count() or 0))
  end
  return M.snideAccess()
end

-- @logic Logic.py:1331
function M.CanBeatLankyPhase()
  if M.HardBossesSettingEnabled("beta_lanky_phase") then
    return M.lanky() and M.grape() and M.barrels()
  end
  return M.lanky() and M.trombone() and M.barrels()
end

-- @logic Logic.py:1232 — IsBossBeatable. Kept faithful to fill-time semantics
-- but skipping the level-order constraints (tracker doesn't fill).
function M.IsBossBeatable(level)
  local required_kong = settings.boss_kongs(level)
  local boss_map = settings.boss_maps(level)
  local has_moves = true
  if boss_map == "FactoryBoss" and required_kong == "tiny"
     and not M.HardBossesSettingEnabled("alternative_mad_jack_kongs") then
    has_moves = M.twirl() and M.Slam()
  elseif boss_map == "FactoryBoss" then
    has_moves = M.Slam()
  elseif boss_map == "FungiBoss" then
    has_moves = M.hunkyChunky() and M.barrels()
  elseif boss_map == "JapesBoss" or boss_map == "AztecBoss" or boss_map == "CavesBoss" then
    has_moves = M.barrels()
  elseif boss_map == "CastleBoss" then
    if M.IsLavaWater() then has_moves = M.Melons() >= 3 end
    has_moves = has_moves and M.cannons()
  elseif boss_map == "KroolDonkeyPhase" then
    has_moves = (M.blast() or not settings.cannons_require_blast()) and M.climbing()
  elseif boss_map == "KroolDiddyPhase" then
    has_moves = M.jetpack() and M.peanut()
  elseif boss_map == "KroolLankyPhase" then
    has_moves = M.CanBeatLankyPhase()
  elseif boss_map == "KroolTinyPhase" then
    has_moves = M.mini() and M.feather()
  elseif boss_map == "KroolChunkyPhase" then
    has_moves = M.punch() and M.CanSlamChunkyPhaseSwitch() and M.hunkyChunky() and M.gorillaGone()
  end
  return M.IsKong(required_kong) and has_moves
end

-- @logic Logic.py:1189 — IsBossReachable: T&S CB threshold + glitch bypass.
-- HasEnoughKongs is a fill-time constraint we treat as always-true for the tracker.
local KONGS_FOR_CB_SUM = { "donkey", "diddy", "lanky", "tiny", "chunky" }
function M.IsBossReachable(level)
  if M.troff_skip() then return true end
  local total = 0
  for _, kong in ipairs(KONGS_FOR_CB_SUM) do
    total = total + (M.cb(level, kong) or 0)
  end
  local req = settings.boss_bananas(level) or 0
  return total >= req
end

-- @logic Logic.py:1351 — IsLevelEnterable: B-Locker gating + glitch bypasses.
-- Delegates the "pay the blocker" check to dk64pt's existing canEnterLevel() in
-- scripts/logic/blocker.lua (which reads BLOCKER_VALUES populated by archipelago.lua).
local LEVEL_TO_DK64PT_NAME = {
  JungleJapes    = "Japes",
  AngryAztec     = "Aztec",
  FranticFactory = "Factory",
  GloomyGalleon  = "Galleon",
  FungiForest    = "Forest",
  CrystalCaves   = "Caves",
  CreepyCastle   = "Castle",
  HideoutHelm    = "Helm",
}

local DK_SKIP_LEVELS = {
  AngryAztec     = true,
  GloomyGalleon  = true,
  FungiForest    = true,
  CrystalCaves   = true,
  CreepyCastle   = true,
}

function M.IsLevelEnterable(level)
  if not M.HasFillRequirementsForLevel(level) then return false end

  -- Glitch-based blocker bypasses (Logic.py lines 1356-1370).
  local dk_skip = DK_SKIP_LEVELS[level] or (level == "HideoutHelm" and M.CanMoonkick())
  if M.donkey() and M.dk_blocker_skip() and dk_skip then return true end
  if M.diddy() and M.lanky_blocker_skip() and level == "HideoutHelm" and M.generalclips() then return true end
  if M.lanky() and M.lanky_blocker_skip() and level ~= "HideoutHelm" then return true end
  if M.tiny()  and M.lanky_blocker_skip() and level == "HideoutHelm" and M.generalclips() then return true end
  if M.chunky() and M.lanky_blocker_skip() and M.punch() and level ~= "FranticFactory" and level ~= "HideoutHelm" then
    return true
  end

  -- Pay the blocker — defer to dk64pt's canEnterLevel() if it's loaded.
  local short = LEVEL_TO_DK64PT_NAME[level]
  if short and _G.canEnterLevel then return _G.canEnterLevel(short) end

  -- Test harness path: no canEnterLevel global, so treat as paid.
  return true
end

-- @logic Logic.py:1282 — HasFillRequirementsForLevel.
-- Skipped for tracker: the randomizer short-circuits this with `assumeFillSuccess`
-- during playthrough, and the prior-level key requirements are already enforced
-- by the region graph (each lobby's transition checks JapesKeyTurnedIn etc.).
function M.HasFillRequirementsForLevel(_level) return true end
-- @logic Logic.py:919/925 — Crown/Coin door logic is implemented further down,
-- after _tracker_count is defined (the helm-door check needs to sum tracker
-- counts for the configured slot_data["{Crown,Coin}DoorItem"]).
-- @logic Logic.py:1185
function M.IsKLumsyFree() return M.event("KLumsyTalkedTo") end
-- @logic Logic.py:331 — Each kong's helm room can only be entered after the
-- prior kong (per slot_data["HelmOrder"]) has both bonus barrels collected.
-- HelmOrder is a CSV of Kongs-enum values (Enums/Kongs.py): DK=0, Diddy=1,
-- Lanky=2, Tiny=3, Chunky=4. ROOM_SEQ is indexed by that same enum.
local ROOM_SEQ = { "donkey", "diddy", "lanky", "tiny", "chunky" }
local KONG_DONE_EVENT = {
  donkey = "HelmDonkeyDone",
  chunky = "HelmChunkyDone",
  tiny   = "HelmTinyDone",
  lanky  = "HelmLankyDone",
  diddy  = "HelmDiddyDone",
}

local function _helm_order_indices()
  local d = _G.SLOT_DATA
  if not d or not d["HelmOrder"] or d["HelmOrder"] == "" then
    return { 0, 1, 2, 3, 4 }  -- vanilla helm_order
  end
  local out = {}
  for n in tostring(d["HelmOrder"]):gmatch("%d+") do
    table.insert(out, tonumber(n))
  end
  if #out == 0 then return { 0, 1, 2, 3, 4 } end
  return out
end

function M.isPriorHelmComplete(kong)
  -- Skip-all helm or already finished → always complete.
  if settings.helm_setting() == "skip_all" then return true end
  if M.event("HelmFinished") then return true end
  -- Find this kong's index in ROOM_SEQ.
  local desired = nil
  for i, k in ipairs(ROOM_SEQ) do if k == kong then desired = i - 1; break end end
  if desired == nil then return true end
  local order = _helm_order_indices()
  -- Find the kong's slot in helm_order.
  local slot = nil
  for i, idx in ipairs(order) do if idx == desired then slot = i; break end end
  if not slot or slot == 1 then return true end  -- not in order, or first → always reachable
  local prior_idx = order[slot - 1]
  local prior_kong = ROOM_SEQ[prior_idx + 1]
  if not prior_kong then return true end
  return M.event(KONG_DONE_EVENT[prior_kong]) == true
end

-- @logic Logic.py:1337
function M.HasEnoughRaceCoins(_map_id, _default_kong, _kong_mandatory)
  -- Race coin rando isn't surfaced in dk64pt yet; assume we have enough.
  return true
end

-- @logic Logic.py:1469 — Rareware Coin: collected medals must meet the
-- Jetpac medal requirement (slot_data["JetpacReq"], surfaced via the JetpacReq
-- tracker code). Fill-time level-order constraint is skipped — tracker doesn't
-- model fill.
local function _tracker_count(code)
  if _G.Tracker and _G.Tracker.ProviderCountForCode then
    return _G.Tracker:ProviderCountForCode(code) or 0
  end
  local v = M.attrs and M.attrs[code]
  return type(v) == "number" and v or (v and 1 or 0)
end
function M.CanGetRarewareCoin()
  return _tracker_count("medals") >= _tracker_count("JetpacReq")
end
-- @logic Logic.py:1476 — Rareware GB: fairy count must meet the BFI requirement
-- (slot_data["FairyRequirement"], surfaced via "bfiReq"); kong is tiny unless
-- free_trade_items.
function M.CanGetRarewareGB()
  if _tracker_count("fairies") < _tracker_count("bfiReq") then return false end
  return M.tiny() or settings.free_trade_items()
end
function M.CanGetBlueprintReward(value)
  return M.Blueprints() >= (tonumber(value) or 0)
end

-- @logic Logic.py:919/925 — CrownDoorOpened / CoinDoorOpened.
-- slot_data["{Crown,Coin}DoorItem"] is the HelmDoorItem enum NAME, and
-- slot_data["{Crown,Coin}DoorItemCount"] is the count needed. Door is open if
-- the player has at least that many of the configured item.
local _DOOR_ITEM_KEYS = {
  req_gb=true, req_bp=true, req_companycoins=true, req_key=true,
  req_medal=true, req_crown=true, req_fairy=true, req_rainbowcoin=true,
  req_bean=true, req_pearl=true,
}
local function _door_item_count(item_name)
  if item_name == "req_gb"          then return _tracker_count("gb") end
  if item_name == "req_bp"          then
    return _tracker_count("dkbp") + _tracker_count("diddybp") + _tracker_count("lankybp")
         + _tracker_count("tinybp") + _tracker_count("chunkybp")
  end
  if item_name == "req_companycoins" then
    return _tracker_count("nintendo") + _tracker_count("rareware")
  end
  if item_name == "req_key" then
    local n = 0
    for i = 1, 8 do n = n + _tracker_count("k" .. i) end
    return n
  end
  if item_name == "req_medal"       then return _tracker_count("medals") end
  if item_name == "req_crown"       then return _tracker_count("crowns") end
  if item_name == "req_fairy"       then return _tracker_count("fairies") end
  if item_name == "req_rainbowcoin" then return _tracker_count("rainbow") end
  if item_name == "req_bean"        then return _tracker_count("bean") end
  if item_name == "req_pearl"       then return _tracker_count("pearl") end
  return 0
end

local function _helm_door_open(item_key, count_key, vanilla_item)
  local d = _G.SLOT_DATA
  -- Not connected / no slot_data → assume open so the tracker is usable
  -- offline. (The randomizer side conservatively returns false here, but the
  -- tracker is consulted by the user, not by fill, so default-open is safer.)
  if not d then return true end
  local item = d[item_key]
  if not item or item == "opened" then return true end
  if item == "vanilla" then item = vanilla_item end
  if item == "easy_random" or item == "medium_random" or item == "hard_random" then
    return true
  end
  local needed = tonumber(d[count_key]) or 0
  if needed <= 0 then return true end
  -- _door_item_count returns 0 for any item key it doesn't recognize; map that
  -- to "always open" rather than hard-block, so an unmapped slot_data value
  -- doesn't silently lock the door.
  local got = _door_item_count(item)
  if got <= 0 and not _DOOR_ITEM_KEYS[item] then return true end
  return got >= needed
end

function M.CrownDoorOpened()
  return _helm_door_open("CrownDoorItem", "CrownDoorItemCount", "req_crown")
end
function M.CoinDoorOpened()
  return _helm_door_open("CoinDoorItem",  "CoinDoorItemCount",  "req_companycoins")
end

-- @logic Logic.py:1545
function M.CanSurviveFallDamage() return true end
-- @logic Logic.py:1100 (CanAccessKRool) — full evaluation is recursive and seed-dependent;
-- the region graph ultimately gates access, so this just checks the hard-coded blocker.
function M.CanAccessKRool() return M.JapesKey() and M.AztecKey() and M.FactoryKey() and M.GalleonKey() and M.ForestKey() and M.CavesKey() and M.CastleKey() and M.HelmKey() end
-- @logic Logic.py:1376 — too seed-specific; deferred until win-condition needs it.
function M.WinConditionMet() return false end

-- @logic Logic.py:1092
function M.CanBuy(_loc, _empty) return true end
function M.AnyKongCanBuy(_loc, _empty) return true end
function M.PurchaseShopItem(_loc) return true end

function M.GetCoins(kong)
  if _G.graph and _G.graph.coin_count then return _G.graph.coin_count(kong) end
  return 0
end

-- =============================================================================
-- Shop pricing — used by state.CanBuy / AnyKongCanBuy in shop lambdas.
-- Reads the price table from SLOT_DATA["ShopPrices"] (populated by archipelago.lua),
-- and the location's owning kong from the generated location_kong map.
-- =============================================================================
-- Populated by location_kong.lua at load time (after state.lua).
M._location_kong_table = {}
local function _location_kong(loc_name)
  return M._location_kong_table[loc_name] or "any"
end

local function _shop_price(loc_name)
  local d = _G.SLOT_DATA
  if not d or not d["ShopPrices"] then return nil end
  return d["ShopPrices"][loc_name]
end

local OWNED_KONGS = { "donkey", "diddy", "lanky", "tiny", "chunky" }

-- @logic Logic.py:1092 (CanBuy) + Prices.py:KongCanBuy
function M.CanBuy(loc_name, _empty)
  local price = _shop_price(loc_name)
  if price == nil then return true end  -- empty / no price set => free
  local owner = _location_kong(loc_name)
  if owner == "any" then
    -- Shared move: any owned kong with enough coins can buy.
    for _, k in ipairs(OWNED_KONGS) do
      if M.HasKong(k) and M.GetCoins(k) >= price then return true end
    end
    return false
  end
  return M.HasKong(owner) and M.GetCoins(owner) >= price
end

function M.AnyKongCanBuy(loc_name, _empty)
  local price = _shop_price(loc_name)
  if price == nil then return true end
  for _, k in ipairs(OWNED_KONGS) do
    if M.HasKong(k) and M.GetCoins(k) >= price then return true end
  end
  return false
end
function M.HasAccess(_region, _kong) return true end
function M.TimeAccess(_region, _time) return true end
function M.BlueprintAccess(_item) return true end
function M.HintAccess(_loc, _region) return true end

-- =============================================================================
-- Colored bananas — delegated to graph.cb_count() which walks reachable regions
-- and sums weighted collectibles from randomizer/CollectibleLogicFiles. A
-- harness-only override path (cb_<level>_<kong> code) is kept for unit tests
-- that want to inject specific totals without setting up the full graph.
-- =============================================================================
function M.cb(level, kong)
  local probe_code = "cb_" .. tostring(level) .. "_" .. tostring(kong)
  local override = M.attrs[probe_code]
  if override ~= nil then return override end
  if _G.Tracker and _G.Tracker.ProviderCountForCode then
    local tracker_v = _G.Tracker:ProviderCountForCode(probe_code)
    if tracker_v and tracker_v > 0 then return tracker_v end
  end
  if _G.graph and _G.graph.cb_count then return _G.graph.cb_count(level, kong) end
  return 0
end

-- =============================================================================
-- Helm puzzle / K. Rool ordering attributes.
-- These are pass-throughs from settings; lambdas read them as state.HelmDonkey1 etc.
-- =============================================================================
local function passthrough_setting(opt_name)
  return function() return settings[opt_name]() end
end
-- Helm bonus-barrel completion. Per archipelago/Regions.py: a barrel's "MinigameType"
-- is HelmBarrelFirst or HelmBarrelSecond. The slot's "HelmBarrelCount" option
-- activates First when >= 1 and Second when == 2. When INACTIVE, the barrel
-- doesn't need to be done (treated as auto-complete).
--
-- For ACTIVE barrels the player must (a) be able to enter via tag-barrel (chunky's
-- tag-barrel = state.barrels(); also the room's kong), and (b) be able to clear
-- the minigame stored in slot_data["MinigameData"][<location_enum>]. Per-minigame
-- requirements come from randomizer/Lists/Minigame.py — most have no extra gates,
-- so we currently allow any kong+barrels. Busy Barrel Barrage variants force the
-- room's kong (already enforced by the kong arg).
local _HELM_BARREL_TYPE = {
  HelmDonkey1 = "second", HelmDonkey2 = "first",
  HelmChunky1 = "first",  HelmChunky2 = "second",
  HelmTiny1   = "second", HelmTiny2   = "first",
  HelmLanky1  = "first",  HelmLanky2  = "second",
  HelmDiddy1  = "first",  HelmDiddy2  = "second",
}
local _KONG_TO_ROOM_SEQ_INDEX = {
  donkey = 0, diddy = 1, lanky = 2, tiny = 3, chunky = 4,
}

local function _helm_barrel_count()
  local d = _G.SLOT_DATA
  return tonumber(d and d["HelmBarrelCount"]) or 2
end

local function _kong_in_helm_order(kong)
  local desired = _KONG_TO_ROOM_SEQ_INDEX[kong]
  if desired == nil then return false end
  local d = _G.SLOT_DATA
  if not d or not d["HelmOrder"] or d["HelmOrder"] == "" then
    -- Vanilla helm_order has all 5 kongs.
    return true
  end
  for n in tostring(d["HelmOrder"]):gmatch("%d+") do
    if tonumber(n) == desired then return true end
  end
  return false
end

local _INSTRUMENT_BY_KONG = {
  donkey = "bongos",
  diddy  = "guitar",
  lanky  = "trombone",
  tiny   = "saxophone",
  chunky = "triangle",
}

-- Room entry conditions mirror the HideoutHelmMain → HideoutHelm<Kong>Room exits
-- (see generated/regions/HideoutHelm.lua). Required by state.HelmX1/X2 because
-- these helpers feed the HelmXDone events; without the entry check, the events
-- can fire when the player can't actually reach the room (e.g. Chunky in
-- helm_order with HelmBarrelCount=0 used to auto-fire HelmChunkyDone, which
-- spuriously satisfied isPriorHelmComplete for the next kong).
local function _can_enter_helm_kong_room(kong)
  if not M.HasKong(kong) then return false end
  local instr = _INSTRUMENT_BY_KONG[kong]
  if not instr or not M[instr]() then return false end
  if not M.isPriorHelmComplete(kong) then return false end
  if kong == "diddy" then
    return M.event("HelmDoorsOpened")
  end
  return M.event("HelmGatesPunched")
end

local function _can_do_helm_barrel(loc_name, kong)
  -- Kongs NOT in helm_order have their bonus barrels auto-completed (the
  -- HelmEntry-side LocationLogic gates on `not helm_<kong>`, so the location
  -- is freely accessible without doing the barrel).
  if not _kong_in_helm_order(kong) then return true end
  -- Must actually be able to enter the kong's helm room — instrument, kong,
  -- prior-helm chain, and gates/doors. Without this, HelmXDone events fire
  -- spuriously and break isPriorHelmComplete for downstream kongs.
  if not _can_enter_helm_kong_room(kong) then return false end
  local pos = _HELM_BARREL_TYPE[loc_name]
  local count = _helm_barrel_count()
  -- Inactive barrel slot → auto-complete (room entry already gated above).
  if pos == "first"  and count < 1 then return true end
  if pos == "second" and count < 2 then return true end
  -- Active: need the kong + barrels (tag-barrel access).
  return M.HasKong(kong) and M.barrels()
end

M.HelmDonkey1 = function() return _can_do_helm_barrel("HelmDonkey1", "donkey") end
M.HelmDonkey2 = function() return _can_do_helm_barrel("HelmDonkey2", "donkey") end
M.HelmChunky1 = function() return _can_do_helm_barrel("HelmChunky1", "chunky") end
M.HelmChunky2 = function() return _can_do_helm_barrel("HelmChunky2", "chunky") end
M.HelmTiny1   = function() return _can_do_helm_barrel("HelmTiny1",   "tiny")   end
M.HelmTiny2   = function() return _can_do_helm_barrel("HelmTiny2",   "tiny")   end
M.HelmLanky1  = function() return _can_do_helm_barrel("HelmLanky1",  "lanky")  end
M.HelmLanky2  = function() return _can_do_helm_barrel("HelmLanky2",  "lanky")  end
M.HelmDiddy1  = function() return _can_do_helm_barrel("HelmDiddy1",  "diddy")  end
M.HelmDiddy2  = function() return _can_do_helm_barrel("HelmDiddy2",  "diddy")  end

-- Expose as a global for ScriptHost:LoadScript callers (PopTracker doesn't
-- propagate the module return value, so consumers read _G.state directly).
_G.state = M
return M
