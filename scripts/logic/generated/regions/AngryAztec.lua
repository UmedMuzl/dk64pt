-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/AngryAztec.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: AngryAztecMedals  (Angry Aztec Medals)
M.regions["AngryAztecMedals"] = {
  display_name = [[Angry Aztec Medals]],
  hint_region  = "AztecCBs",
  level        = "AngryAztec",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "AztecDonkeyMedal", logic = function() return (state.cb("AngryAztec", "donkey") >= settings.medal_cb_req_level(1)) end },
    { id = "AztecDiddyMedal", logic = function() return (state.cb("AngryAztec", "diddy") >= settings.medal_cb_req_level(1)) end },
    { id = "AztecLankyMedal", logic = function() return (state.cb("AngryAztec", "lanky") >= settings.medal_cb_req_level(1)) end },
    { id = "AztecTinyMedal", logic = function() return (state.cb("AngryAztec", "tiny") >= settings.medal_cb_req_level(1)) end },
    { id = "AztecChunkyMedal", logic = function() return (state.cb("AngryAztec", "chunky") >= settings.medal_cb_req_level(1)) end },
    { id = "AztecDonkeyHalfMedal", logic = function() return (state.cb("AngryAztec", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
    { id = "AztecDiddyHalfMedal", logic = function() return (state.cb("AngryAztec", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
    { id = "AztecLankyHalfMedal", logic = function() return (state.cb("AngryAztec", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
    { id = "AztecTinyHalfMedal", logic = function() return (state.cb("AngryAztec", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
    { id = "AztecChunkyHalfMedal", logic = function() return (state.cb("AngryAztec", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: AngryAztecEntryHandler  (Angry Aztec Entry Handler)
M.regions["AngryAztecEntryHandler"] = {
  display_name = [[Angry Aztec Entry Handler]],
  hint_region  = "Error",
  level        = "AngryAztec",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "AztecEntered", logic = function() return true end },
  },
  exits = {
    { dest = "AngryAztecLobby", logic = function() return true end, exitShuffleId="AztecToIsles" },
    { dest = "AngryAztecStart", logic = function() return true end },
  },
}

-- region: AngryAztecStart  (Angry Aztec Start)
M.regions["AngryAztecStart"] = {
  display_name = [[Angry Aztec Start]],
  hint_region  = "AztecTunnels",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "BetweenVinesByPortal", logic = function() return (state.assumeAztecEntry() or state.can_use_vines() or (state.tiny() and state.twirl()) or state.CanPhase()) end },
  },
}

-- region: BetweenVinesByPortal  (Angry Aztec Between Vines By Portal)
M.regions["BetweenVinesByPortal"] = {
  display_name = [[Angry Aztec Between Vines By Portal]],
  hint_region  = "AztecTunnels",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecChunkyVases", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
    { id = "HoldableVaseCircle", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
    { id = "HoldableVaseTriangle", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
    { id = "HoldableVaseColon", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
    { id = "HoldableVasePlus", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
    { id = "AztecMainEnemy_VaseRoom0", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
    { id = "AztecMainEnemy_VaseRoom1", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
    { id = "AztecMainEnemy_VaseRoom2", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
    { id = "AztecMainEnemy_StartingTunnel0", logic = function() return true end },
    { id = "AztecMainEnemy_StartingTunnel1", logic = function() return true end },
    { id = "AztecMainEnemy_StartingTunnel2", logic = function() return true end },
    { id = "KremKap_AztecMainEnemy_VaseRoom0", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
    { id = "KremKap_AztecMainEnemy_VaseRoom1", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
    { id = "KremKap_AztecMainEnemy_VaseRoom2", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
    { id = "KremKap_AztecMainEnemy_StartingTunnel0", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_StartingTunnel1", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_StartingTunnel2", logic = function() return state.camera() end },
  },
  events = {
    { id = "AztecW1aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "AngryAztecStart", logic = function() return (state.can_use_vines() or (state.tiny() and state.twirl()) or state.CanPhase()) end },
    { dest = "AztecTunnelBeforeOasis", logic = function() return (state.assumeAztecEntry() or state.can_use_vines() or (state.tiny() and state.twirl()) or state.CanPhase()) end },
  },
}

-- region: AztecTunnelBeforeOasis  (Angry Aztec Tunnel Before Oasis)
M.regions["AztecTunnelBeforeOasis"] = {
  display_name = [[Angry Aztec Tunnel Before Oasis]],
  hint_region  = "AztecTunnels",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecKasplatSandyBridge", logic = function() return ((not settings.kasplat_rando()) and (state.CanPhase() or (state.hasMoveSwitchsanity("AztecBlueprintDoor", false) and ((state.strongKong() and state.donkey()) or (state.twirl() and state.tiny()))))) end },
    { id = "AztecMainEnemy_StartingTunnel3", logic = function() return true end },
    { id = "KremKap_AztecMainEnemy_StartingTunnel3", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "BetweenVinesByPortal", logic = function() return (state.can_use_vines() or (state.tiny() and state.twirl()) or state.CanPhase()) end },
    { dest = "AngryAztecOasis", logic = function() return true end },
  },
}

-- region: AngryAztecOasis  (Angry Aztec Oasis)
M.regions["AngryAztecOasis"] = {
  display_name = [[Angry Aztec Oasis]],
  hint_region  = "OasisAndTotem",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecDonkeyFreeLlama", logic = function() return state.event("LlamaFreed") end },
    { id = "AztecKasplatOnTinyTemple", logic = function() return ((not settings.kasplat_rando()) and state.jetpack() and state.diddy() and state.climbing()) end },
    { id = "RainbowCoin_Location06", logic = function() return true end },
    { id = "AztecMainEnemy_NearCandy", logic = function() return true end },
    { id = "AztecMainEnemy_OasisDoor", logic = function() return true end },
    { id = "KremKap_AztecMainEnemy_NearCandy", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_OasisDoor", logic = function() return state.camera() end },
    { id = "Balloon055", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "AztecGuitarPad", logic = function() return (((state.can_use_vines() and state.climbing()) or (state.jetpack() and state.diddy() and state.climbing()) or (state.monkey_maneuvers() and (state.tiny() or state.diddy()))) and state.hasMoveSwitchsanity("AztecGuitar", true)) end },
    { id = "AztecW1bTagged", logic = function() return true end },
    { id = "AztecW2aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "AztecTunnelBeforeOasis", logic = function() return true end },
    { dest = "TempleStart", logic = function() return (((state.peanut() and state.diddy()) or (state.grape() and state.lanky()) or (state.feather() and state.tiny()) or (state.pineapple() and state.chunky())) or state.CanPhase()) end, exitShuffleId="AztecStartToTemple" },
    { dest = "AngryAztecConnectorTunnel", logic = function() return (state.checkBarrier("aztec_tunnel_door") or state.event("AztecGuitarPad") or state.CanPhase() or state.generalclips()) end },
    { dest = "CandyAztec", logic = function() return state.candyAccess() end },
    { dest = "AztecBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: TempleStart  (Temple Start)
M.regions["TempleStart"] = {
  display_name = [[Temple Start]],
  hint_region  = "TinyTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecChunkyKlaptrapRoom", logic = function() return ((state.triangle() or (state.CanPhaseswim() and state.event("AztecIceMelted")) or state.CanPhase()) and state.chunky()) end },
    { id = "AztecTempleEnemy_GuardRotating0", logic = function() return true end },
    { id = "AztecTempleEnemy_GuardRotating1", logic = function() return true end },
    { id = "AztecTempleEnemy_MainRoom0", logic = function() return true end },
    { id = "AztecTempleEnemy_MainRoom1", logic = function() return true end },
    { id = "AztecTempleEnemy_MainRoom2", logic = function() return true end },
    { id = "KremKap_AztecTempleEnemy_GuardRotating0", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_GuardRotating1", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_MainRoom0", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_MainRoom1", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_MainRoom2", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecOasis", logic = function() return true end, exitShuffleId="AztecTempleToStart" },
    { dest = "TempleGuitarPad", logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.peanut() and state.diddy()) end },
    { dest = "TempleUnderwater", logic = function() return (state.swim() and state.event("AztecIceMelted")) end },
  },
}

-- region: TempleGuitarPad  (Temple Guitar Pad)
M.regions["TempleGuitarPad"] = {
  display_name = [[Temple Guitar Pad]],
  hint_region  = "TinyTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
  },
  events = {
    { id = "AztecIceMelted", logic = function() return (state.guitar() and state.diddy()) end },
  },
  exits = {
    { dest = "TempleStart", logic = function() return true end },
  },
}

-- region: TempleUnderwater  (Temple Underwater)
M.regions["TempleUnderwater"] = {
  display_name = [[Temple Underwater]],
  hint_region  = "TinyTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecTinyKlaptrapRoom", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.generalclips() or state.CanPhaseswim()) end },
    { id = "KremKap_AztecTempleEnemy_Underwater", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "TempleStart", logic = function() return state.event("AztecIceMelted") end },
    { dest = "TempleVultureRoom", logic = function() return true end },
    { dest = "TempleKONGRoom", logic = function() return true end },
  },
}

-- region: TempleVultureRoom  (Temple Vulture Room)
M.regions["TempleVultureRoom"] = {
  display_name = [[Temple Vulture Room]],
  hint_region  = "TinyTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecLankyVulture", logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.grape() and state.lanky()) end },
    { id = "AztecBattleArena", logic = function() return ((not settings.crown_placement_rando()) and state.CanSlamSwitch("AngryAztec", 1) and state.grape() and state.lanky()) end },
    { id = "Balloon017", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "TempleUnderwater", logic = function() return state.swim() end },
  },
}

-- region: TempleKONGRoom  (Temple KONG Room)
M.regions["TempleKONGRoom"] = {
  display_name = [[Temple KONG Room]],
  hint_region  = "TinyTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "TinyKong", logic = function() return state.CanFreeTiny() end },
    { id = "AztecDiddyFreeTiny", logic = function() return (state.CanFreeTiny() or state.CanPhase() or state.ledgeclip() or state.CanPhaseswim()) end },
    { id = "AztecTempleEnemy_KongRoom0", logic = function() return true end },
    { id = "AztecTempleEnemy_KongRoom1", logic = function() return true end },
    { id = "AztecTempleEnemy_KongRoom2", logic = function() return true end },
    { id = "AztecTempleEnemy_KongRoom3", logic = function() return true end },
    { id = "AztecTempleEnemy_KongRoom4", logic = function() return true end },
    { id = "KremKap_AztecTempleEnemy_KongRoom0", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_KongRoom1", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_KongRoom2", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_KongRoom3", logic = function() return state.camera() end },
    { id = "KremKap_AztecTempleEnemy_KongRoom4", logic = function() return state.camera() end },
    { id = "Balloon015", logic = function() return (state.tiny() and state.feather()) end },
    { id = "Balloon016", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "TempleUnderwater", logic = function() return state.swim() end },
  },
}

-- region: AngryAztecConnectorTunnel  (Angry Aztec Connector Tunnel)
M.regions["AngryAztecConnectorTunnel"] = {
  display_name = [[Angry Aztec Connector Tunnel]],
  hint_region  = "AztecTunnels",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecChunkyCagedBarrel", logic = function() return (state.chunky() and ((state.hunkyChunky() and (state.barrels() or state.generalclips())) or state.CanPhase())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "AztecKasplatNearLab", logic = function() return (not settings.kasplat_rando()) end },
    { id = "AztecMainEnemy_TunnelPad0", logic = function() return true end },
    { id = "AztecMainEnemy_TunnelCage0", logic = function() return true end },
    { id = "AztecMainEnemy_TunnelCage1", logic = function() return true end },
    { id = "AztecMainEnemy_TunnelCage2", logic = function() return true end },
    { id = "AztecMainEnemy_TunnelCage3", logic = function() return true end },
    { id = "AztecMainEnemy_TunnelPad1", logic = function() return true end },
    { id = "KremKap_AztecMainEnemy_TunnelPad0", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_TunnelCage0", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_TunnelCage1", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_TunnelCage2", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_TunnelCage3", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_TunnelPad1", logic = function() return state.camera() end },
    { id = "HoldableBoulderAztec", logic = function() return (state.barrels() and state.hunkyChunky() and state.chunky()) end },
    { id = "Balloon054", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "Balloon057", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "AztecW3bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "AngryAztecOasis", logic = function() return true end },
    { dest = "AngryAztecMain", logic = function() return true end },
    { dest = "CrankyAztec", logic = function() return state.crankyAccess() end },
  },
}

-- region: AngryAztecMain  (Angry Aztec Main)
M.regions["AngryAztecMain"] = {
  display_name = [[Angry Aztec Main]],
  hint_region  = "OasisAndTotem",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecDiddyRamGongs", logic = function() return (state.charge() and state.jetpack() and state.diddy()) end },
    { id = "AztecDiddyVultureRace", logic = function() return (state.jetpack() and state.diddy()) end },
    { id = "MelonCrate_Location06", logic = function() return ((state.jetpack() and state.diddy()) or state.CanMoonkick()) end },
    { id = "MelonCrate_Location07", logic = function() return true end },
    { id = "AztecMainEnemy_OutsideLlama", logic = function() return true end },
    { id = "AztecMainEnemy_OutsideTower", logic = function() return true end },
    { id = "AztecMainEnemy_AroundTotem", logic = function() return true end },
    { id = "AztecMainEnemy_Outside5DT", logic = function() return true end },
    { id = "AztecMainEnemy_OutsideSnide", logic = function() return true end },
    { id = "AztecMainEnemy_NearSnoopTunnel", logic = function() return true end },
    { id = "KremKap_AztecMainEnemy_OutsideLlama", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_OutsideTower", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_AroundTotem", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_Outside5DT", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_OutsideSnide", logic = function() return state.camera() end },
    { id = "KremKap_AztecMainEnemy_NearSnoopTunnel", logic = function() return state.camera() end },
    { id = "Balloon056", logic = function() return (state.donkey() and state.coconut() and state.strongKong()) end },
  },
  events = {
    { id = "FedTotem", logic = function() return (state.checkBarrier("aztec_5dtemple_switches") or (state.jetpack() and state.CanSlamSwitch("AngryAztec", 1) and state.peanut() and state.diddy())) end },
    { id = "AztecW2bTagged", logic = function() return true end },
    { id = "AztecW3aTagged", logic = function() return true end },
    { id = "AztecW4aTagged", logic = function() return true end },
    { id = "AztecW4bTagged", logic = function() return true end },
    { id = "AztecW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "AngryAztecConnectorTunnel", logic = function() return true end },
    { dest = "DonkeyTemple", logic = function() return ((state.event("FedTotem") and state.coconut() and state.donkey()) or state.CanPhase() or state.generalclips()) end, exitShuffleId="AztecMainToDonkey" },
    { dest = "DiddyTemple", logic = function() return ((state.event("FedTotem") and state.peanut() and state.diddy()) or (state.generalclips() and state.charge() and state.diddy()) or state.CanPhase()) end, exitShuffleId="AztecMainToDiddy" },
    { dest = "LankyTempleEntrance", logic = function() return ((state.event("FedTotem") and state.grape() and state.lanky()) or state.CanPhase()) end, exitShuffleId="AztecMainToLanky" },
    { dest = "TinyTempleEntrance", logic = function() return ((state.event("FedTotem") and state.feather() and state.tiny()) or state.CanPhase()) end, exitShuffleId="AztecMainToTiny" },
    { dest = "ChunkyTempleEntrance", logic = function() return ((state.event("FedTotem") and state.pineapple() and state.chunky()) or state.CanPhase() or (state.generalclips() and state.chunky() and state.hunkyChunky())) end, exitShuffleId="AztecMainToChunky" },
    { dest = "AztecTinyRace", logic = function() return (state.charge() and state.jetpack() and state.diddy() and state.mini() and state.saxophone() and state.tiny()) end, exitShuffleId="AztecMainToRace" },
    { dest = "LlamaTemple", logic = function() return (state.canOpenLlamaTemple() or state.CanPhase() or (state.generalclips() and (state.donkey() or state.diddy() or state.tiny() or state.chunky()))) end, exitShuffleId="AztecMainToLlama" },
    { dest = "AztecBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
    { dest = "Snide", logic = function() return state.snideAccess() end },
    { dest = "FunkyAztec", logic = function() return state.funkyAccess() end },
    { dest = "AztecDonkeyQuicksandCave", logic = function() return ((((state.event("AztecDonkeySwitch") and state.strongKong()) or ((not settings.shuffle_shops()) and state.generalclips())) and state.donkey()) or state.CanPhase()) end },
    { dest = "AztecBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: AztecDonkeyQuicksandCave  (Aztec Donkey Sand Tunnel)
M.regions["AztecDonkeyQuicksandCave"] = {
  display_name = [[Aztec Donkey Sand Tunnel]],
  hint_region  = "AztecTunnels",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecDonkeyQuicksandCave", logic = function() return (state.donkey() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "Balloon058", logic = function() return (state.diddy() and state.peanut() and state.donkey() and state.strongKong()) end },
  },
  events = {
    { id = "AztecW5bTagged", logic = function() return state.special_loc("AztecDonkeyQuicksandCave") end },
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return ((state.donkey() and state.strongKong()) or state.CanPhase()) end },
  },
}

-- region: AztecBaboonBlast  (Aztec Baboon Blast)
M.regions["AztecBaboonBlast"] = {
  display_name = [[Aztec Baboon Blast]],
  hint_region  = "OasisAndTotem",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "LlamaFreed", logic = function() return state.donkey() end },
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end },
  },
}

-- region: DonkeyTemple  (Donkey Temple)
M.regions["DonkeyTemple"] = {
  display_name = [[Donkey Temple]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  locations = {
    { id = "AztecDonkey5DoorTemple", logic = function() return ((state.coconut() or state.CanPhase()) and (state.donkey() or settings.free_trade_items())) end },
    { id = "AztecDK5DTEnemy_EndTrap0", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "AztecDK5DTEnemy_EndTrap1", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "AztecDK5DTEnemy_EndTrap2", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "AztecDK5DTEnemy_EndPath0", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "AztecDK5DTEnemy_EndPath1", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "AztecDK5DTEnemy_StartPath", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
    { id = "KremKap_AztecDK5DTEnemy_EndTrap0", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_AztecDK5DTEnemy_EndTrap1", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_AztecDK5DTEnemy_EndTrap2", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_AztecDK5DTEnemy_EndPath0", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_AztecDK5DTEnemy_EndPath1", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_AztecDK5DTEnemy_StartPath", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecDonkeyToMain" },
    { dest = "DonkeyTempleDeadEndRight", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
  },
}

-- region: DonkeyTempleDeadEndRight  (Donkey Temple Dead End Right)
M.regions["DonkeyTempleDeadEndRight"] = {
  display_name = [[Donkey Temple Dead End Right]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecDK5DTEnemy_StartTrap0", logic = function() return true end },
    { id = "AztecDK5DTEnemy_StartTrap1", logic = function() return true end },
    { id = "AztecDK5DTEnemy_StartTrap2", logic = function() return true end },
    { id = "KremKap_AztecDK5DTEnemy_StartTrap0", logic = function() return state.camera() end },
    { id = "KremKap_AztecDK5DTEnemy_StartTrap1", logic = function() return state.camera() end },
    { id = "KremKap_AztecDK5DTEnemy_StartTrap2", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "DonkeyTemple", logic = function() return true end },
  },
}

-- region: DiddyTemple  (Diddy Temple)
M.regions["DiddyTemple"] = {
  display_name = [[Diddy Temple]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  locations = {
    { id = "AztecDiddy5DoorTemple", logic = function() return ((state.peanut() or state.CanPhase()) and (state.diddy() or settings.free_trade_items())) end },
    { id = "AztecDiddy5DTEnemy_StartLeft0", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
    { id = "AztecDiddy5DTEnemy_StartLeft1", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
    { id = "AztecDiddy5DTEnemy_Reward", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
    { id = "AztecDiddy5DTEnemy_SecondSwitch", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
    { id = "KremKap_AztecDiddy5DTEnemy_StartLeft0", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_AztecDiddy5DTEnemy_StartLeft1", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_AztecDiddy5DTEnemy_Reward", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_AztecDiddy5DTEnemy_SecondSwitch", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
    { id = "Balloon021", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecDiddyToMain" },
    { dest = "DiddyTempleDeadEndRight", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
  },
}

-- region: DiddyTempleDeadEndRight  (Diddy Temple Dead End Right)
M.regions["DiddyTempleDeadEndRight"] = {
  display_name = [[Diddy Temple Dead End Right]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecDiddy5DTEnemy_EndTrap0", logic = function() return true end },
    { id = "AztecDiddy5DTEnemy_EndTrap1", logic = function() return true end },
    { id = "AztecDiddy5DTEnemy_EndTrap2", logic = function() return true end },
    { id = "KremKap_AztecDiddy5DTEnemy_EndTrap0", logic = function() return state.camera() end },
    { id = "KremKap_AztecDiddy5DTEnemy_EndTrap1", logic = function() return state.camera() end },
    { id = "KremKap_AztecDiddy5DTEnemy_EndTrap2", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "DiddyTemple", logic = function() return true end },
  },
}

-- region: LankyTempleEntrance  (Lanky Temple Entrance)
M.regions["LankyTempleEntrance"] = {
  display_name = [[Lanky Temple Entrance]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecLankyToMain" },
    { dest = "LankyTemple", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
  },
}

-- region: LankyTemple  (Lanky Temple)
M.regions["LankyTemple"] = {
  display_name = [[Lanky Temple]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecLanky5DoorTemple", logic = function() return ((state.grape() or state.CanPhase()) and (state.lanky() or settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "AztecLanky5DTEnemy_JoiningPaths", logic = function() return true end },
    { id = "AztecLanky5DTEnemy_EndTrap", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
    { id = "AztecLanky5DTEnemy_Reward", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
    { id = "KremKap_AztecLanky5DTEnemy_JoiningPaths", logic = function() return state.camera() end },
    { id = "KremKap_AztecLanky5DTEnemy_EndTrap", logic = function() return (state.camera() and ((state.grape() and state.lanky()) or state.CanPhase())) end },
    { id = "KremKap_AztecLanky5DTEnemy_Reward", logic = function() return (state.camera() and ((state.grape() and state.lanky()) or state.CanPhase())) end },
    { id = "Balloon022", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "LankyTempleEntrance", logic = function() return true end },
  },
}

-- region: TinyTempleEntrance  (Tiny Temple Entrance)
M.regions["TinyTempleEntrance"] = {
  display_name = [[Tiny Temple Entrance]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecTinyToMain" },
    { dest = "TinyTemple", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
  },
}

-- region: TinyTemple  (Tiny Temple)
M.regions["TinyTemple"] = {
  display_name = [[Tiny Temple]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecTiny5DoorTemple", logic = function() return ((state.feather() or state.CanPhase()) and (state.tiny() or settings.free_trade_items())) end },
    { id = "AztecBananaFairyTinyTemple", logic = function() return (state.camera() and ((state.mini() and state.tiny()) or state.CanPhase())) end },
    { id = "AztecTiny5DTEnemy_StartRightFront", logic = function() return true end },
    { id = "AztecTiny5DTEnemy_StartLeftBack", logic = function() return true end },
    { id = "AztecTiny5DTEnemy_StartRightBack", logic = function() return true end },
    { id = "AztecTiny5DTEnemy_StartLeftFront", logic = function() return true end },
    { id = "AztecTiny5DTEnemy_Reward0", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
    { id = "AztecTiny5DTEnemy_Reward1", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
    { id = "AztecTiny5DTEnemy_DeadEnd0", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
    { id = "AztecTiny5DTEnemy_DeadEnd1", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
    { id = "KremKap_AztecTiny5DTEnemy_StartRightFront", logic = function() return state.camera() end },
    { id = "KremKap_AztecTiny5DTEnemy_StartLeftBack", logic = function() return state.camera() end },
    { id = "KremKap_AztecTiny5DTEnemy_StartRightBack", logic = function() return state.camera() end },
    { id = "KremKap_AztecTiny5DTEnemy_StartLeftFront", logic = function() return state.camera() end },
    { id = "KremKap_AztecTiny5DTEnemy_Reward0", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
    { id = "KremKap_AztecTiny5DTEnemy_Reward1", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
    { id = "KremKap_AztecTiny5DTEnemy_DeadEnd0", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
    { id = "KremKap_AztecTiny5DTEnemy_DeadEnd1", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
  },
  events = {
  },
  exits = {
    { dest = "TinyTempleEntrance", logic = function() return true end },
  },
}

-- region: ChunkyTempleEntrance  (Chunky Temple Entrance)
M.regions["ChunkyTempleEntrance"] = {
  display_name = [[Chunky Temple Entrance]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecChunkyToMain" },
    { dest = "ChunkyTemple", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
  },
}

-- region: ChunkyTemple  (Chunky Temple)
M.regions["ChunkyTemple"] = {
  display_name = [[Chunky Temple]],
  hint_region  = "FiveDoorTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecChunky5DoorTemple", logic = function() return ((state.pineapple() or state.CanPhase()) and (state.chunky() or settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "AztecKasplatChunky5DT", logic = function() return ((not settings.kasplat_rando()) and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
    { id = "RainbowCoin_Location01", logic = function() return true end },
    { id = "AztecChunky5DTEnemy_StartRight", logic = function() return true end },
    { id = "AztecChunky5DTEnemy_StartLeft", logic = function() return true end },
    { id = "AztecChunky5DTEnemy_SecondRight", logic = function() return true end },
    { id = "AztecChunky5DTEnemy_SecondLeft", logic = function() return true end },
    { id = "AztecChunky5DTEnemy_Reward", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
    { id = "KremKap_AztecChunky5DTEnemy_StartRight", logic = function() return state.camera() end },
    { id = "KremKap_AztecChunky5DTEnemy_StartLeft", logic = function() return state.camera() end },
    { id = "KremKap_AztecChunky5DTEnemy_SecondRight", logic = function() return state.camera() end },
    { id = "KremKap_AztecChunky5DTEnemy_SecondLeft", logic = function() return state.camera() end },
    { id = "KremKap_AztecChunky5DTEnemy_Reward", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
    { id = "Balloon023", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon024", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "ChunkyTempleEntrance", logic = function() return true end },
  },
}

-- region: AztecTinyRace  (Aztec Tiny Race)
M.regions["AztecTinyRace"] = {
  display_name = [[Aztec Tiny Race]],
  hint_region  = "OasisAndTotem",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
    { id = "AztecTinyBeetleRace", logic = function() return state.HasEnoughRaceCoins("AztecTinyRace", "tiny", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecRaceToMain" },
  },
}

-- region: LlamaTemple  (Llama Temple)
M.regions["LlamaTemple"] = {
  display_name = [[Llama Temple]],
  hint_region  = "LlamaTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "LankyKong", logic = function() return state.CanFreeLanky() end },
    { id = "AztecDonkeyFreeLanky", logic = function() return state.CanFreeLanky() end },
    { id = "AztecLankyLlamaTempleBarrel", logic = function() return (state.trombone() and ((state.handstand() and state.lanky()) or (settings.free_trade_items() and ((state.tiny() and ((state.twirl() and state.monkey_maneuvers()) or state.slope_resets())) or state.CanMoonkick())))) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "AztecBananaFairyLlamaTemple", logic = function() return state.camera() end },
    { id = "MelonCrate_Location02", logic = function() return true end },
    { id = "Balloon018", logic = function() return (state.tiny() and state.feather() and state.swim()) end },
    { id = "Balloon019", logic = function() return (state.lanky() and state.grape() and ((state.event("AztecLlamaSpit") and state.swim()) or state.CanPhaseswim() or state.CanPhase())) end },
    { id = "Balloon020", logic = function() return (state.lanky() and state.grape() and ((state.event("AztecLlamaSpit") and state.swim()) or state.CanPhaseswim() or state.CanPhase())) end },
    { id = "AztecLlamaEnemy_KongFreeInstrument", logic = function() return true end },
    { id = "AztecLlamaEnemy_DinoInstrument", logic = function() return true end },
    { id = "AztecLlamaEnemy_Right", logic = function() return true end },
    { id = "AztecLlamaEnemy_Left", logic = function() return true end },
    { id = "AztecLlamaEnemy_MelonCrate", logic = function() return true end },
    { id = "AztecLlamaEnemy_SlamSwitch", logic = function() return true end },
    { id = "KremKap_AztecLlamaEnemy_KongFreeInstrument", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_DinoInstrument", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_Right", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_Left", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_MelonCrate", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_SlamSwitch", logic = function() return state.camera() end },
    { id = "KremKap_AztecNPC_Llama", logic = function() return state.camera() end },
  },
  events = {
    { id = "AztecDonkeySwitch", logic = function() return state.hasMoveSwitchsanity("AztecQuicksandSwitch", false, "AngryAztec", 1) end },
    { id = "AztecLlamaSpit", logic = function() return state.CanLlamaSpit() end },
    { id = "LlamaW1aTagged", logic = function() return true end },
    { id = "LlamaW1bTagged", logic = function() return true end },
    { id = "LlamaW2aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "AngryAztecMain", logic = function() return true end, exitShuffleId="AztecLlamaToMain" },
    { dest = "LlamaTempleMatching", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
    { dest = "LlamaTempleBack", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.ledgeclip() or state.CanOStandTBSNoclip()) end },
  },
}

-- region: LlamaTempleMatching  (Llama Temple Matching)
M.regions["LlamaTempleMatching"] = {
  display_name = [[Llama Temple Matching]],
  hint_region  = "LlamaTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecLankyMatchingGame", logic = function() return (state.grape() and state.CanSlamSwitch("AngryAztec", 1) and state.lanky()) end },
    { id = "AztecLlamaEnemy_Matching0", logic = function() return true end },
    { id = "AztecLlamaEnemy_Matching1", logic = function() return true end },
    { id = "KremKap_AztecLlamaEnemy_Matching0", logic = function() return state.camera() end },
    { id = "KremKap_AztecLlamaEnemy_Matching1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "LlamaTemple", logic = function() return true end },
  },
}

-- region: LlamaTempleBack  (Llama Temple Back)
M.regions["LlamaTempleBack"] = {
  display_name = [[Llama Temple Back]],
  hint_region  = "LlamaTemple",
  level        = "AngryAztec",
  deathwarp    = -1,
  locations = {
    { id = "AztecTinyLlamaTemple", logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.tiny()) end },
    { id = "AztecKasplatLlamaTemple", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
    { id = "LlamaW2bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "LlamaTemple", logic = function() return true end },
  },
}

-- region: AztecBossLobby  (Aztec Boss Lobby)
M.regions["AztecBossLobby"] = {
  display_name = [[Aztec Boss Lobby]],
  hint_region  = "Bosses",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "AztecBoss", logic = function() return state.IsBossReachable("AngryAztec") end },
  },
}

-- region: AztecBoss  (Aztec Boss)
M.regions["AztecBoss"] = {
  display_name = [[Aztec Boss]],
  hint_region  = "Bosses",
  level        = "AngryAztec",
  deathwarp    = nil,
  locations = {
    { id = "AztecKey", logic = function() return state.IsBossBeatable("AngryAztec") end },
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