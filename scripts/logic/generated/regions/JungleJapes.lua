-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/JungleJapes.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: JungleJapesMedals  (Jungle Japes Medals)
M.regions["JungleJapesMedals"] = {
  display_name = [[Jungle Japes Medals]],
  hint_region  = "JapesCBs",
  level        = "JungleJapes",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "JapesDonkeyMedal", logic = function() return (state.cb("JungleJapes", "donkey") >= settings.medal_cb_req_level(0)) end },
    { id = "JapesDiddyMedal", logic = function() return (state.cb("JungleJapes", "diddy") >= settings.medal_cb_req_level(0)) end },
    { id = "JapesLankyMedal", logic = function() return (state.cb("JungleJapes", "lanky") >= settings.medal_cb_req_level(0)) end },
    { id = "JapesTinyMedal", logic = function() return (state.cb("JungleJapes", "tiny") >= settings.medal_cb_req_level(0)) end },
    { id = "JapesChunkyMedal", logic = function() return (state.cb("JungleJapes", "chunky") >= settings.medal_cb_req_level(0)) end },
    { id = "JapesDonkeyHalfMedal", logic = function() return (state.cb("JungleJapes", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
    { id = "JapesDiddyHalfMedal", logic = function() return (state.cb("JungleJapes", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
    { id = "JapesLankyHalfMedal", logic = function() return (state.cb("JungleJapes", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
    { id = "JapesTinyHalfMedal", logic = function() return (state.cb("JungleJapes", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
    { id = "JapesChunkyHalfMedal", logic = function() return (state.cb("JungleJapes", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: JungleJapesEntryHandler  (Jungle Japes Entry Handler)
M.regions["JungleJapesEntryHandler"] = {
  display_name = [[Jungle Japes Entry Handler]],
  hint_region  = "Error",
  level        = "JungleJapes",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "JapesEntered", logic = function() return true end },
  },
  exits = {
    { dest = "JungleJapesLobby", logic = function() return true end, exitShuffleId="JapesToIsles" },
    { dest = "JungleJapesStart", logic = function() return true end },
  },
}

-- region: JungleJapesStart  (Jungle Japes Start)
M.regions["JungleJapesStart"] = {
  display_name = [[Jungle Japes Start]],
  hint_region  = "Lowlands",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesDonkeyCagedBanana", logic = function() return (((state.event("JapesDonkeySwitch") or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and state.donkey()) or ((state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
    { id = "JapesChunkyBoulder", logic = function() return (state.chunky() and state.barrels()) end },
    { id = "Balloon006", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "JapesMainEnemy_Start", logic = function() return true end },
    { id = "JapesMainEnemy_Tunnel0", logic = function() return true end },
    { id = "JapesMainEnemy_Tunnel1", logic = function() return true end },
    { id = "JapesMainEnemy_KilledInDemo", logic = function() return true end },
    { id = "JapesMainEnemy_NearUnderground", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_Start", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Tunnel0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Tunnel1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_KilledInDemo", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_NearUnderground", logic = function() return state.camera() end },
  },
  events = {
    { id = "JapesW1aTagged", logic = function() return true end },
    { id = "JapesW1bTagged", logic = function() return true end },
    { id = "JapesW2aTagged", logic = function() return true end },
    { id = "JapesW3bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "JungleJapesMain", logic = function() return true end },
    { dest = "JapesHill", logic = function() return state.climbing() end },
    { dest = "JapesBeyondPeanutGate", logic = function() return (state.hasMoveSwitchsanity("JapesDiddyCave", false) or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false) or state.generalclips()) end },
    { dest = "JapesBeyondCoconutGate1", logic = function() return (state.checkBarrier("japes_coconut_gates") or state.event("JapesFreeKongOpenGates") or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false) or state.generalclips()) end },
    { dest = "JapesBeyondCoconutGate2", logic = function() return (state.checkBarrier("japes_coconut_gates") or state.event("JapesFreeKongOpenGates") or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false) or state.generalclips()) end },
    { dest = "JapesCatacomb", logic = function() return ((state.Slam() and state.chunky() and state.barrels()) or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) end, exitShuffleId="JapesMainToCatacomb" },
    { dest = "JapesBlastPadPlatform", logic = function() return ((state.can_use_vines() or state.CanMoonkick()) and state.climbing() and (state.donkey() or state.diddy() or state.chunky())) end },
  },
}

-- region: JapesBlastPadPlatform  (Japes Blast Pad Platform)
M.regions["JapesBlastPadPlatform"] = {
  display_name = [[Japes Blast Pad Platform]],
  hint_region  = "Lowlands",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return true end },
    { dest = "JapesBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: JapesCannonPlatform  (Jungle Japes Cannon Platform)
M.regions["JapesCannonPlatform"] = {
  display_name = [[Jungle Japes Cannon Platform]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesLankyCagedBanana", logic = function() return (((state.event("JapesLankySwitch") or ((not settings.shuffle_shops()) and state.CanSkew(true)) or state.CanSkew(false)) and state.lanky()) or (((not settings.shuffle_shops()) and state.CanSkew(true)) or (state.CanSkew(false) and settings.free_trade_items()))) end },
  },
  events = {
    { id = "JapesAccessToCannon", logic = function() return state.cannons() end },
  },
  exits = {
    { dest = "JapesHillTop", logic = function() return state.cannons() end },
    { dest = "JungleJapesMain", logic = function() return true end },
    { dest = "JapesHill", logic = function() return state.can_use_vines() end },
  },
}

-- region: JapesHillTop  (Jungle Japes Hilltop)
M.regions["JapesHillTop"] = {
  display_name = [[Jungle Japes Hilltop]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "DiddyKong", logic = function() return state.CanFreeDiddy() end },
    { id = "Balloon002", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "JapesDonkeyFrontofCage", logic = function() return (state.HasKong(settings.diddy_freeing_kong()) or settings.free_trade_items()) end },
    { id = "JapesDonkeyFreeDiddy", logic = function() return state.event("JapesFreeKongOpenGates") end },
    { id = "MelonCrate_Location00", logic = function() return true end },
    { id = "JapesMainEnemy_Mountain", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_Mountain", logic = function() return state.camera() end },
    { id = "JapesChunkyCagedBanana", logic = function() return (((state.event("JapesChunkySwitch") or state.CanPhase() or ((not settings.shuffle_shops()) and (state.CanSkew(true) or state.CanSkew(false)))) and state.chunky()) or ((state.CanPhase() or ((not settings.shuffle_shops()) and (state.CanSkew(true) or state.CanSkew(false)))) and settings.free_trade_items())) end },
  },
  events = {
    { id = "JapesFreeKongOpenGates", logic = function() return state.CanOpenJapesGates() end },
    { id = "JapesW2bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "Snide", logic = function() return state.snideAccess() end },
    { dest = "JapesTnSAlcove", logic = function() return (state.monkey_maneuvers() and (not state.IsHardFallDamage())) end },
    { dest = "Mine", logic = function() return (state.peanut() and state.diddy()) end, exitShuffleId="JapesMainToMine" },
    { dest = "JapesTopOfMountain", logic = function() return ((state.peanut() and state.diddy()) or state.CanMoonkick()) end },
    { dest = "JapesHill", logic = function() return true end },
    { dest = "JapesCannonPlatform", logic = function() return true end },
    { dest = "JungleJapesMain", logic = function() return true end },
  },
}

-- region: JapesHill  (Jungle Japes Hill)
M.regions["JapesHill"] = {
  display_name = [[Jungle Japes Hill]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesDiddyCagedBanana", logic = function() return (((state.event("JapesDiddySwitch1") or state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and state.diddy()) or ((state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
    { id = "JapesBattleArena", logic = function() return (not settings.crown_placement_rando()) end },
  },
  events = {
  },
  exits = {
    { dest = "JapesHillTop", logic = function() return state.climbing() end },
    { dest = "JapesCannonPlatform", logic = function() return state.can_use_vines() end },
    { dest = "FunkyJapes", logic = function() return state.funkyAccess() end },
    { dest = "JungleJapesStart", logic = function() return true end },
  },
}

-- region: JungleJapesMain  (Jungle Japes Main)
M.regions["JungleJapesMain"] = {
  display_name = [[Jungle Japes Main]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesTinyCagedBanana", logic = function() return (((state.event("JapesTinySwitch") or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and state.tiny()) or ((state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
    { id = "JapesMainEnemy_NearPainting0", logic = function() return true end },
    { id = "JapesMainEnemy_NearPainting1", logic = function() return true end },
    { id = "JapesMainEnemy_NearPainting2", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_NearPainting0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_NearPainting1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_NearPainting2", logic = function() return state.camera() end },
  },
  events = {
    { id = "JapesW3aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return true end },
    { dest = "JapesCannonPlatform", logic = function() return ((state.handstand() and state.lanky() and state.monkey_maneuvers()) or ((not state.isKrushaAdjacent("tiny")) and state.tiny() and state.slope_resets())) end },
    { dest = "JapesBeyondCoconutGate2", logic = function() return (state.checkBarrier("japes_coconut_gates") or state.event("JapesFreeKongOpenGates") or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false) or state.generalclips()) end },
    { dest = "JapesPaintingRoomHill", logic = function() return ((state.handstand() and state.lanky()) or (state.twirl() and state.tiny() and state.climbing()) or state.CanMoonkick() or state.CanSkew(true) or state.CanSkew(false) or state.slope_resets()) end },
    { dest = "JapesLankyCave", logic = function() return (((state.hasMoveSwitchsanity("JapesPainting", false) or state.CanSkew(true) or state.CanSkew(false)) and ((state.handstand() and state.lanky()) or (state.twirl() and state.tiny() and state.climbing()) or state.CanMoonkick() or state.slope_resets())) or (state.CanMoonkick() and (state.CanPhase() or state.CanSkew(true) or state.CanSkew(false))) or ((state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and (state.diddy() or state.tiny()))) end, exitShuffleId="JapesMainToLankyCave", isGlitchTransition=true },
    { dest = "BeyondRambiGate", logic = function() return (state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false) or state.CanPhase() or state.generalclips()) end },
    { dest = "JapesTnSAlcove", logic = function() return ((state.can_use_vines() or state.CanMoonkick()) and state.climbing()) end },
  },
}

-- region: JapesPaintingRoomHill  (Japes Painting Room Hill)
M.regions["JapesPaintingRoomHill"] = {
  display_name = [[Japes Painting Room Hill]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "RainbowCoin_Location00", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesMain", logic = function() return true end },
    { dest = "JapesLankyCave", logic = function() return (state.hasMoveSwitchsanity("JapesPainting", false) or state.CanSkew(true) or state.CanSkew(false) or state.CanPhase()) end, exitShuffleId="JapesMainToLankyCave" },
  },
}

-- region: JapesTnSAlcove  (Japes T&S Alcove)
M.regions["JapesTnSAlcove"] = {
  display_name = [[Japes T&S Alcove]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesMain", logic = function() return true end },
    { dest = "JapesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: JapesTopOfMountain  (Japes Top of Mountain)
M.regions["JapesTopOfMountain"] = {
  display_name = [[Japes Top of Mountain]],
  hint_region  = "Hillside",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesDiddyMountain", logic = function() return (state.event("JapesDiddySwitch2") and (state.diddy() or settings.free_trade_items())) end },
    { id = "Balloon005", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "JapesW5bTagged", logic = function() return state.special_loc("JapesDiddyMountain") end },
  },
  exits = {
    { dest = "JapesHillTop", logic = function() return true end },
  },
}

-- region: JapesBaboonBlast  (Japes Baboon Blast)
M.regions["JapesBaboonBlast"] = {
  display_name = [[Japes Baboon Blast]],
  hint_region  = "Lowlands",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesDonkeyBaboonBlast", logic = function() return state.donkey() end },
  },
  events = {
  },
  exits = {
    { dest = "JapesBlastPadPlatform", logic = function() return true end },
  },
}

-- region: JapesBeyondPeanutGate  (Japes Beyond Peanut Gate)
M.regions["JapesBeyondPeanutGate"] = {
  display_name = [[Japes Beyond Peanut Gate]],
  hint_region  = "Lowlands",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "Balloon001", logic = function() return (state.diddy() and state.peanut()) end },
    { id = "JapesDiddyTunnel", logic = function() return (state.diddy() or settings.free_trade_items()) end },
    { id = "JapesLankyGrapeGate", logic = function() return ((state.grape() and state.lanky()) or ((state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and (state.lanky() or settings.free_trade_items()))) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "JapesTinyFeatherGateBarrel", logic = function() return ((state.feather() and state.tiny()) or ((state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) and (state.tiny() or settings.free_trade_items()))) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "JapesMainEnemy_DiddyCavern", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_DiddyCavern", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return true end },
    { dest = "JapesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: JapesBeyondCoconutGate1  (Japes Beyond Coconut Gate 1)
M.regions["JapesBeyondCoconutGate1"] = {
  display_name = [[Japes Beyond Coconut Gate 1]],
  hint_region  = "HiveTunnel",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesKasplatLeftTunnelNear", logic = function() return (not settings.kasplat_rando()) end },
    { id = "JapesKasplatLeftTunnelFar", logic = function() return (not settings.kasplat_rando()) end },
    { id = "JapesMainEnemy_FeatherTunnel", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_FeatherTunnel", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return true end },
    { dest = "JapesBeyondFeatherGate", logic = function() return (state.checkBarrier("japes_shellhive_gate") or state.hasMoveSwitchsanity("JapesFeather", false) or state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) end },
  },
}

-- region: JapesBeyondFeatherGate  (Japes Beyond Feather Gate)
M.regions["JapesBeyondFeatherGate"] = {
  display_name = [[Japes Beyond Feather Gate]],
  hint_region  = "HiveTunnel",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesTinyStump", logic = function() return (((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) and state.tiny()) end },
    { id = "JapesChunkyGiantBonusBarrel", logic = function() return (state.climbing() and state.hunkyChunky() and state.chunky()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "JapesMainEnemy_Hive0", logic = function() return true end },
    { id = "JapesMainEnemy_Hive1", logic = function() return true end },
    { id = "JapesMainEnemy_Hive2", logic = function() return true end },
    { id = "JapesMainEnemy_Hive3", logic = function() return true end },
    { id = "JapesMainEnemy_Hive4", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_Hive0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Hive1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Hive2", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Hive3", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Hive4", logic = function() return state.camera() end },
  },
  events = {
    { id = "JapesW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "JapesBeyondCoconutGate1", logic = function() return true end },
    { dest = "TinyHive", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true) or state.CanSkew(false) or (state.hunkyChunky() and state.chunky() and state.generalclips())) end, exitShuffleId="JapesMainToTinyHive" },
    { dest = "BeyondRambiGate", logic = function() return (state.hunkyChunky() and state.chunky() and state.generalclips()) end },
  },
}

-- region: TinyHive  (Tiny Hive)
M.regions["TinyHive"] = {
  display_name = [[Tiny Hive]],
  hint_region  = "HiveTunnel",
  level        = "JungleJapes",
  deathwarp    = -1,
  locations = {
    { id = "JapesTinyBeehive", logic = function() return ((state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) or (settings.free_trade_items() and state.CanPhase())) end },
    { id = "JapesShellhiveEnemy_FirstRoom", logic = function() return true end },
    { id = "JapesShellhiveEnemy_SecondRoom0", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_SecondRoom1", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_ThirdRoom0", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_ThirdRoom1", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_ThirdRoom2", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_ThirdRoom3", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
    { id = "JapesShellhiveEnemy_MainRoom", logic = function() return true end },
    { id = "KremKap_JapesShellhiveEnemy_FirstRoom", logic = function() return state.camera() end },
    { id = "KremKap_JapesShellhiveEnemy_SecondRoom0", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_SecondRoom1", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_ThirdRoom0", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_ThirdRoom1", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_ThirdRoom2", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_ThirdRoom3", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
    { id = "KremKap_JapesShellhiveEnemy_MainRoom", logic = function() return state.camera() end },
    { id = "Balloon013", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "JapesBeyondFeatherGate", logic = function() return (state.diddy() or state.tiny() or state.lanky() or state.CanPhase()) end, exitShuffleId="JapesTinyHiveToMain" },
  },
}

-- region: JapesBeyondCoconutGate2  (Japes Beyond Coconut Gate 2)
M.regions["JapesBeyondCoconutGate2"] = {
  display_name = [[Japes Beyond Coconut Gate 2]],
  hint_region  = "StormyTunnel",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesLankySlope", logic = function() return ((state.handstand() and state.lanky()) or state.slope_resets()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "JapesKasplatNearPaintingRoom", logic = function() return (not settings.kasplat_rando()) end },
    { id = "JapesKasplatNearLab", logic = function() return (not settings.kasplat_rando()) end },
    { id = "JapesMainEnemy_Storm0", logic = function() return true end },
    { id = "JapesMainEnemy_Storm1", logic = function() return true end },
    { id = "JapesMainEnemy_Storm2", logic = function() return true end },
    { id = "JapesMainEnemy_MiddleTunnel", logic = function() return true end },
    { id = "KremKap_JapesMainEnemy_Storm0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Storm1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_Storm2", logic = function() return state.camera() end },
    { id = "KremKap_JapesMainEnemy_MiddleTunnel", logic = function() return state.camera() end },
    { id = "BreakableJapesDKHut", logic = function() return state.event("Rambi") end },
    { id = "BreakableJapesDiddyHut", logic = function() return state.event("Rambi") end },
    { id = "BreakableJapesLankyHut", logic = function() return state.event("Rambi") end },
    { id = "BreakableJapesTinyHut", logic = function() return state.event("Rambi") end },
    { id = "Balloon004", logic = function() return (state.lanky() and state.grape()) end },
    { id = "Balloon007", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "Balloon008", logic = function() return (state.tiny() and state.feather()) end },
    { id = "Balloon012", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
    { id = "Rambi", logic = function() return (state.hasMoveSwitchsanity("JapesRambi", false) or state.CanPhase()) end },
    { id = "JapesDonkeySwitch", logic = function() return ((state.event("Rambi") or state.CanPhase()) and state.CanSlamSwitch("JungleJapes", 1) and state.donkey()) end },
    { id = "JapesDiddySwitch1", logic = function() return ((state.event("Rambi") or state.CanPhase()) and state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) end },
    { id = "JapesLankySwitch", logic = function() return ((state.event("Rambi") or state.CanPhase()) and state.CanSlamSwitch("JungleJapes", 1) and state.lanky()) end },
    { id = "JapesTinySwitch", logic = function() return ((state.event("Rambi") or state.CanPhase()) and state.CanSlamSwitch("JungleJapes", 1) and state.tiny()) end },
    { id = "JapesW4aTagged", logic = function() return true end },
    { id = "JapesW4bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return true end },
    { dest = "JungleJapesMain", logic = function() return true end },
    { dest = "JapesUselessSlope", logic = function() return ((state.handstand() and state.lanky()) or state.CanPhase() or state.slope_resets()) end },
    { dest = "BeyondRambiGate", logic = function() return (state.event("Rambi") or state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) end },
    { dest = "CrankyJapes", logic = function() return state.crankyAccess() end },
    { dest = "JapesBeyondFeatherGate", logic = function() return state.CanMoonkick() end },
  },
}

-- region: JapesUselessSlope  (Japes Useless Slope)
M.regions["JapesUselessSlope"] = {
  display_name = [[Japes Useless Slope]],
  hint_region  = "StormyTunnel",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "JapesBeyondCoconutGate2", logic = function() return true end },
  },
}

-- region: BeyondRambiGate  (Beyond Rambi Gate)
M.regions["BeyondRambiGate"] = {
  display_name = [[Beyond Rambi Gate]],
  hint_region  = "StormyTunnel",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesBananaFairyRambiCave", logic = function() return state.camera() end },
    { id = "MelonCrate_Location01", logic = function() return true end },
    { id = "Balloon003", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon009", logic = function() return (state.tiny() and state.feather()) end },
    { id = "Balloon010", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon011", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
    { id = "JapesChunkySwitch", logic = function() return (state.CanSlamSwitch("JungleJapes", 1) and state.chunky() and state.barrels()) end },
  },
  exits = {
    { dest = "JapesBeyondCoconutGate2", logic = function() return true end },
    { dest = "JapesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: JapesLankyCave  (Japes Lanky Cave)
M.regions["JapesLankyCave"] = {
  display_name = [[Japes Lanky Cave]],
  hint_region  = "CavesAndMines",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesLankyFairyCave", logic = function() return ((((state.grape() or state.trombone() or state.adv_orange_usage()) and state.Slam()) or state.generalclips()) and state.lanky()) end },
    { id = "JapesBananaFairyLankyCave", logic = function() return ((((state.grape() or state.trombone() or state.adv_orange_usage()) and state.Slam()) or state.generalclips()) and state.lanky() and state.camera()) end },
    { id = "Balloon014", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "JapesPaintingRoomHill", logic = function() return true end, exitShuffleId="JapesLankyCaveToMain" },
  },
}

-- region: Mine  (Mine)
M.regions["Mine"] = {
  display_name = [[Mine]],
  hint_region  = "CavesAndMines",
  level        = "JungleJapes",
  deathwarp    = -1,
  locations = {
    { id = "Balloon000", logic = function() return (state.diddy() and (state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) and state.peanut()) end },
    { id = "JapesMountainEnemy_Start0", logic = function() return true end },
    { id = "JapesMountainEnemy_Start1", logic = function() return true end },
    { id = "JapesMountainEnemy_Start2", logic = function() return true end },
    { id = "JapesMountainEnemy_Start3", logic = function() return true end },
    { id = "JapesMountainEnemy_Start4", logic = function() return true end },
    { id = "JapesMountainEnemy_NearGateSwitch0", logic = function() return true end },
    { id = "JapesMountainEnemy_NearGateSwitch1", logic = function() return true end },
    { id = "JapesMountainEnemy_HiLo", logic = function() return ((state.charge() and state.diddy()) or state.CanPhase()) end },
    { id = "JapesMountainEnemy_Conveyor0", logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase()) end },
    { id = "JapesMountainEnemy_Conveyor1", logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase()) end },
    { id = "KremKap_JapesMountainEnemy_Start0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_Start1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_Start2", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_Start3", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_Start4", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_NearGateSwitch0", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_NearGateSwitch1", logic = function() return state.camera() end },
    { id = "KremKap_JapesMountainEnemy_HiLo", logic = function() return (state.camera() and ((state.charge() and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_JapesMountainEnemy_Conveyor0", logic = function() return (state.camera() and ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_JapesMountainEnemy_Conveyor1", logic = function() return (state.camera() and ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase())) end },
  },
  events = {
    { id = "JapesDiddySwitch2", logic = function() return (state.CanSlamSwitch("JungleJapes", 1) and (state.peanut() or state.monkey_maneuvers()) and state.diddy()) end },
  },
  exits = {
    { dest = "JapesHillTop", logic = function() return true end, exitShuffleId="JapesMineToMain" },
    { dest = "JapesMinecarts", logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) and ((state.charge() and state.diddy()) or state.CanPhase() or (state.monkey_maneuvers() and state.diddy()))) end },
  },
}

-- region: JapesMinecarts  (Japes Minecarts)
M.regions["JapesMinecarts"] = {
  display_name = [[Japes Minecarts]],
  hint_region  = "CavesAndMines",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesDiddyMinecarts", logic = function() return state.HasEnoughRaceCoins("JapesMinecarts", "diddy", true) end },
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesMain", logic = function() return true end },
  },
}

-- region: JapesCatacomb  (Japes Catacomb)
M.regions["JapesCatacomb"] = {
  display_name = [[Japes Catacomb]],
  hint_region  = "CavesAndMines",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesChunkyUnderground", logic = function() return ((state.can_use_vines() and state.pineapple() and state.chunky()) or (((state.twirl() and state.tiny()) or (state.can_use_vines() and (state.diddy() or state.tiny())) or (state.donkey() and (not state.isKrushaAdjacent("donkey")))) and state.monkey_maneuvers() and settings.free_trade_items()) or state.CanPhase()) end },
    { id = "JapesKasplatUnderground", logic = function() return ((not settings.kasplat_rando()) and ((state.can_use_vines() and state.pineapple() and state.chunky()) or (state.can_use_vines() and (state.diddy() or state.tiny()) and state.monkey_maneuvers() and settings.free_trade_items()) or state.CanPhase())) end },
  },
  events = {
  },
  exits = {
    { dest = "JungleJapesStart", logic = function() return state.cannons() end, exitShuffleId="JapesCatacombToMain" },
  },
}

-- region: JapesBossLobby  (Japes Boss Lobby)
M.regions["JapesBossLobby"] = {
  display_name = [[Japes Boss Lobby]],
  hint_region  = "Bosses",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "JapesBoss", logic = function() return state.IsBossReachable("JungleJapes") end },
  },
}

-- region: JapesBoss  (Japes Boss)
M.regions["JapesBoss"] = {
  display_name = [[Japes Boss]],
  hint_region  = "Bosses",
  level        = "JungleJapes",
  deathwarp    = nil,
  locations = {
    { id = "JapesKey", logic = function() return state.IsBossBeatable("JungleJapes") end },
  },
  events = {
  },
  exits = {
  },
}

if _G.graph and _G.graph.regions then
  for _name, _region in pairs(M.regions) do _G.graph.regions[_name] = _region end
end
return M