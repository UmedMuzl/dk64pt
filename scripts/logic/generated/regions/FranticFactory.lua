-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/FranticFactory.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: FranticFactoryMedals  (Frantic Factory Medals)
M.regions["FranticFactoryMedals"] = {
  display_name = [[Frantic Factory Medals]],
  hint_region  = "FactoryCBs",
  level        = "FranticFactory",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "FactoryDonkeyMedal", logic = function() return (state.cb("FranticFactory", "donkey") >= settings.medal_cb_req_level(2)) end },
    { id = "FactoryDiddyMedal", logic = function() return (state.cb("FranticFactory", "diddy") >= settings.medal_cb_req_level(2)) end },
    { id = "FactoryLankyMedal", logic = function() return (state.cb("FranticFactory", "lanky") >= settings.medal_cb_req_level(2)) end },
    { id = "FactoryTinyMedal", logic = function() return (state.cb("FranticFactory", "tiny") >= settings.medal_cb_req_level(2)) end },
    { id = "FactoryChunkyMedal", logic = function() return (state.cb("FranticFactory", "chunky") >= settings.medal_cb_req_level(2)) end },
    { id = "FactoryDonkeyHalfMedal", logic = function() return (state.cb("FranticFactory", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
    { id = "FactoryDiddyHalfMedal", logic = function() return (state.cb("FranticFactory", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
    { id = "FactoryLankyHalfMedal", logic = function() return (state.cb("FranticFactory", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
    { id = "FactoryTinyHalfMedal", logic = function() return (state.cb("FranticFactory", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
    { id = "FactoryChunkyHalfMedal", logic = function() return (state.cb("FranticFactory", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: FranticFactoryEntryHandler  (Frantic Factory Entry Handler)
M.regions["FranticFactoryEntryHandler"] = {
  display_name = [[Frantic Factory Entry Handler]],
  hint_region  = "Error",
  level        = "FranticFactory",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "FactoryEntered", logic = function() return true end },
    { id = "HatchOpened", logic = function() return true end },
  },
  exits = {
    { dest = "FranticFactoryLobby", logic = function() return true end, exitShuffleId="FactoryToIsles" },
    { dest = "FranticFactoryStart", logic = function() return true end },
  },
}

-- region: FranticFactoryStart  (Frantic Factory Foyer)
M.regions["FranticFactoryStart"] = {
  display_name = [[Frantic Factory Foyer]],
  hint_region  = "FactoryStart",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryMainEnemy_LobbyLeft", logic = function() return true end },
    { id = "FactoryMainEnemy_LobbyRight", logic = function() return true end },
    { id = "FactoryMainEnemy_TunnelToHatch", logic = function() return true end },
    { id = "KremKap_FactoryMainEnemy_LobbyLeft", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_LobbyRight", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_TunnelToHatch", logic = function() return state.camera() end },
    { id = "Balloon025", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
    { id = "HatchOpened", logic = function() return true end },
    { id = "FactoryW1aTagged", logic = function() return true end },
    { id = "FactoryW2aTagged", logic = function() return true end },
    { id = "FactoryW3aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "Testing", logic = function() return ((state.event("TestingGateOpened") or state.CanPhase()) and state.climbing()) end },
    { dest = "LowerCore", logic = function() return (state.event("HatchOpened") or state.CanPhase()) end },
    { dest = "AlcoveBeyondHatch", logic = function() return state.event("HatchOpened") end },
  },
}

-- region: Testing  (Testing)
M.regions["Testing"] = {
  display_name = [[Testing]],
  hint_region  = "Testing",
  level        = "FranticFactory",
  deathwarp    = -1,
  locations = {
    { id = "FactoryDonkeyNumberGame", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.donkey()) end },
    { id = "FactoryDiddyBlockTower", logic = function() return ((state.spring() or state.CanMoontail()) and state.diddy()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "FactoryLankyTestingRoomBarrel", logic = function() return ((state.balloon() or state.monkey_maneuvers()) and state.lanky()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "FactoryTinyDartboard", logic = function() return (state.event("DartsPlayed") and state.tiny()) end },
    { id = "FactoryKasplatBlocks", logic = function() return (not settings.kasplat_rando()) end },
    { id = "FactoryBananaFairybyCounting", logic = function() return state.camera() end },
    { id = "FactoryBananaFairybyFunky", logic = function() return (state.camera() and state.event("DartsPlayed")) end },
    { id = "MelonCrate_Location03", logic = function() return true end },
    { id = "FactoryMainEnemy_BlockTower0", logic = function() return true end },
    { id = "FactoryMainEnemy_BlockTower1", logic = function() return true end },
    { id = "FactoryMainEnemy_BlockTower2", logic = function() return true end },
    { id = "FactoryMainEnemy_TunnelToBlockTower", logic = function() return true end },
    { id = "FactoryMainEnemy_ToBlockTowerTunnel", logic = function() return true end },
    { id = "KremKap_FactoryMainEnemy_BlockTower0", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_BlockTower1", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_BlockTower2", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_TunnelToBlockTower", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_ToBlockTowerTunnel", logic = function() return state.camera() end },
    { id = "FactoryDonkeyDKArcade", logic = function() return ((not state.checkFastCheck("factory_arcade_round_1")) and (state.CanOStandTBSNoclip() and state.spawn_snags())) end },
    { id = "Balloon026", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon028", logic = function() return (state.tiny() and state.feather()) end },
    { id = "Balloon033", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "Balloon036", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
    { id = "DartsPlayed", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and (state.mini() or state.CanPhase()) and state.feather() and state.tiny()) end },
    { id = "FactoryW3bTagged", logic = function() return true end },
    { id = "FactoryW5bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FranticFactoryStart", logic = function() return (state.event("TestingGateOpened") or state.CanPhase()) end },
    { dest = "RandD", logic = function() return state.climbing() end },
    { dest = "Snide", logic = function() return state.snideAccess() end },
    { dest = "FunkyFactory", logic = function() return state.funkyAccess() end },
    { dest = "FactoryBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: RandDUpper  (R&D Upper)
M.regions["RandDUpper"] = {
  display_name = [[R&D Upper]],
  hint_region  = "ResearchAndDevelopment",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryDiddyRandD", logic = function() return ((state.guitar() or state.CanAccessRNDRoom()) and state.charge() and state.diddy()) end },
    { id = "FactoryChunkyRandD", logic = function() return (((state.triangle() and state.climbing()) or state.CanAccessRNDRoom()) and state.punch() and state.hunkyChunky() and state.chunky() and state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false)) end },
    { id = "FactoryKasplatRandD", logic = function() return (not settings.kasplat_rando()) end },
    { id = "FactoryBattleArena", logic = function() return ((not settings.crown_placement_rando()) and ((state.grab() and state.donkey()) or state.CanAccessRNDRoom())) end },
    { id = "Balloon029", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
    { id = "Balloon030", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
    { id = "Balloon031", logic = function() return (state.donkey() and state.coconut()) end },
    { id = "Balloon034", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
    { id = "Balloon038", logic = function() return (state.chunky() and state.pineapple() and ((state.triangle() and state.climbing() and state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false)) or state.CanAccessRNDRoom())) end },
  },
  events = {
  },
  exits = {
    { dest = "ChunkyRoomPlatform", logic = function() return true end },
    { dest = "RandD", logic = function() return true end },
  },
}

-- region: RandD  (R&D)
M.regions["RandD"] = {
  display_name = [[R&D]],
  hint_region  = "ResearchAndDevelopment",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryLankyRandD", logic = function() return ((((state.trombone() or state.CanAccessRNDRoom()) and state.CanSlamSwitch("FranticFactory", 1)) or (state.CanOStandTBSNoclip() and state.spawn_snags())) and state.lanky()) end },
    { id = "Balloon027", logic = function() return (state.lanky() and state.grape() and (state.trombone() or state.CanAccessRNDRoom())) end },
    { id = "FactoryMainEnemy_TunnelToRace0", logic = function() return true end },
    { id = "FactoryMainEnemy_TunnelToRace1", logic = function() return true end },
    { id = "KremKap_FactoryMainEnemy_TunnelToRace0", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_TunnelToRace1", logic = function() return state.camera() end },
  },
  events = {
    { id = "FactoryW2bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "Testing", logic = function() return true end },
    { dest = "RandDUpper", logic = function() return ((state.climbing() or state.diddy() or state.tiny()) or state.monkey_maneuvers()) end },
    { dest = "FactoryTinyRaceLobby", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanOStandTBSNoclip()) end },
    { dest = "FactoryTinyRace", logic = function() return (state.CanPhase() or state.CanOStandTBSNoclip()) end, exitShuffleId="FactoryRandDToRace", isGlitchTransition=true },
    { dest = "FactoryBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: FactoryTinyRaceLobby  (Factory Tiny Race Lobby)
M.regions["FactoryTinyRaceLobby"] = {
  display_name = [[Factory Tiny Race Lobby]],
  hint_region  = "ResearchAndDevelopment",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "RandD", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase()) end },
    { dest = "FactoryTinyRace", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase()) end, exitShuffleId="FactoryRandDToRace" },
  },
}

-- region: FactoryTinyRace  (Factory Tiny Race)
M.regions["FactoryTinyRace"] = {
  display_name = [[Factory Tiny Race]],
  hint_region  = "ResearchAndDevelopment",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryTinyCarRace", logic = function() return state.HasEnoughRaceCoins("FactoryTinyRace", "tiny", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "FactoryTinyRaceLobby", logic = function() return true end, exitShuffleId="FactoryRaceToRandD" },
  },
}

-- region: ChunkyRoomPlatform  (Chunky Room Platform)
M.regions["ChunkyRoomPlatform"] = {
  display_name = [[Chunky Room Platform]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryDiddyChunkyRoomBarrel", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.diddy() and (state.can_use_vines() or (settings.bonus_barrels() == "skip"))) end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "PowerHut", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase() or state.CanMoonkick()) end, exitShuffleId="FactoryChunkyRoomToPower" },
    { dest = "BeyondHatch", logic = function() return true end },
  },
}

-- region: PowerHut  (Power Hut)
M.regions["PowerHut"] = {
  display_name = [[Power Hut]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryDonkeyPowerHut", logic = function() return (state.event("MainCoreActivated") and (state.donkey() or settings.free_trade_items())) end },
  },
  events = {
    { id = "MainCoreActivated", logic = function() return (state.grab() and state.donkey()) end },
  },
  exits = {
    { dest = "ChunkyRoomPlatform", logic = function() return true end, exitShuffleId="FactoryPowerToChunkyRoom" },
  },
}

-- region: BeyondHatch  (Beyond Hatch)
M.regions["BeyondHatch"] = {
  display_name = [[Beyond Hatch]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = -1,
  locations = {
    { id = "ChunkyKong", logic = function() return state.event("ChunkyFreed") end },
    { id = "FactoryLankyFreeChunky", logic = function() return state.event("ChunkyFreed") end },
    { id = "FactoryChunkyDarkRoom", logic = function() return ((state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) and ((state.punch() and state.CanSlamSwitch("FranticFactory", 1)) or state.generalclips()) and state.chunky()) end },
    { id = "BreakableFactoryDarkRoom", logic = function() return ((state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) and state.Slam() and state.chunky()) end },
    { id = "RainbowCoin_Location02", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
    { id = "FactoryKasplatStorage", logic = function() return (not settings.kasplat_rando()) end },
    { id = "MelonCrate_Location04", logic = function() return true end },
    { id = "FactoryMainEnemy_CandyCranky0", logic = function() return true end },
    { id = "FactoryMainEnemy_CandyCranky1", logic = function() return true end },
    { id = "FactoryMainEnemy_DarkRoom0", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
    { id = "FactoryMainEnemy_DarkRoom1", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
    { id = "FactoryMainEnemy_StorageRoom", logic = function() return true end },
    { id = "KremKap_FactoryMainEnemy_CandyCranky0", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_CandyCranky1", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_DarkRoom0", logic = function() return (state.camera() and (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase())) end },
    { id = "KremKap_FactoryMainEnemy_DarkRoom1", logic = function() return (state.camera() and (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase())) end },
    { id = "KremKap_FactoryMainEnemy_StorageRoom", logic = function() return state.camera() end },
    { id = "Balloon032", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "TestingGateOpened", logic = function() return state.Slam() end },
    { id = "FactoryW1bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FactoryArcadePole", logic = function() return state.climbing() end, exitShuffleId="FactoryStorageToArcade" },
    { dest = "LowerCore", logic = function() return true end },
    { dest = "ChunkyRoomPlatform", logic = function() return (state.CanMoonkick() or (state.twirl() and state.tiny() and state.monkey_maneuvers()) or (state.diddy() and state.monkey_maneuvers())) end },
    { dest = "CrankyFactory", logic = function() return state.crankyAccess() end },
    { dest = "CandyFactory", logic = function() return state.candyAccess() end },
    { dest = "FactoryStoragePipe", logic = function() return ((state.lanky() and state.handstand()) or state.slope_resets()) end },
    { dest = "FactoryBossLobby", logic = function() return (not settings.tns_location_rando()) end },
    { dest = "FactoryBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: FactoryStoragePipe  (Factory Storage Pipe)
M.regions["FactoryStoragePipe"] = {
  display_name = [[Factory Storage Pipe]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "ChunkyFreed", logic = function() return state.CanFreeChunky() end },
  },
  exits = {
    { dest = "BeyondHatch", logic = function() return true end },
  },
}

-- region: FactoryArcadePole  (Factory Arcade Upper Pole)
M.regions["FactoryArcadePole"] = {
  display_name = [[Factory Arcade Upper Pole]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "FactoryArcadeTunnel", logic = function() return state.climbing() end },
    { dest = "BeyondHatch", logic = function() return true end, exitShuffleId="FactoryArcadeToStorage" },
  },
}

-- region: FactoryArcadeTunnel  (Arcade Tunnel)
M.regions["FactoryArcadeTunnel"] = {
  display_name = [[Arcade Tunnel]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "NintendoCoin", logic = function() return (state.event("ArcadeLeverSpawned") and state.grab() and state.donkey() and (state.GetCoins("donkey") >= 2)) end },
    { id = "FactoryTinybyArcade", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase()) end },
    { id = "FactoryChunkybyArcade", logic = function() return (((state.hasMoveSwitchsanity("FactoryArcadeTunnelGrate", false) or state.CanPhase()) and state.chunky()) or (state.CanPhase() and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "FactoryDonkeyDKArcade", logic = function() return ((not state.checkFastCheck("factory_arcade_round_1")) and (state.event("ArcadeLeverSpawned") and state.grab() and state.donkey())) end },
  },
  events = {
    { id = "FactoryW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FactoryArcadePole", logic = function() return true end },
  },
}

-- region: FactoryBaboonBlast  (Factory Baboon Blast)
M.regions["FactoryBaboonBlast"] = {
  display_name = [[Factory Baboon Blast]],
  hint_region  = "Storage",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryDonkeyDKArcade", logic = function() return (state.checkFastCheck("factory_arcade_round_1") and state.donkey()) end },
  },
  events = {
    { id = "ArcadeLeverSpawned", logic = function() return state.donkey() end },
  },
  exits = {
    { dest = "BeyondHatch", logic = function() return true end },
  },
}

-- region: AlcoveBeyondHatch  (Alcove Beyond Hatch)
M.regions["AlcoveBeyondHatch"] = {
  display_name = [[Alcove Beyond Hatch]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "LowerCore", logic = function() return true end },
    { dest = "FranticFactoryStart", logic = function() return (state.event("HatchOpened") and state.climbing()) end },
  },
}

-- region: LowerCore  (Lower Core)
M.regions["LowerCore"] = {
  display_name = [[Lower Core]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = -1,
  locations = {
    { id = "FactoryKasplatProductionBottom", logic = function() return (not settings.kasplat_rando()) end },
    { id = "FactoryMainEnemy_LowWarp4", logic = function() return true end },
    { id = "FactoryMainEnemy_DiddySwitch", logic = function() return true end },
    { id = "FactoryMainEnemy_TunnelToProd0", logic = function() return true end },
    { id = "FactoryMainEnemy_TunnelToProd1", logic = function() return true end },
    { id = "KremKap_FactoryMainEnemy_LowWarp4", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_DiddySwitch", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_TunnelToProd0", logic = function() return state.camera() end },
    { id = "KremKap_FactoryMainEnemy_TunnelToProd1", logic = function() return state.camera() end },
  },
  events = {
    { id = "DiddyCoreSwitch", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.diddy()) end },
    { id = "LankyCoreSwitch", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.lanky()) end },
    { id = "TinyCoreSwitch", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.tiny()) end },
    { id = "ChunkyCoreSwitch", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.chunky()) end },
    { id = "FactoryW4aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "BeyondHatch", logic = function() return true end },
    { dest = "AlcoveBeyondHatch", logic = function() return (state.event("HatchOpened") and state.climbing()) end },
    { dest = "FranticFactoryStart", logic = function() return (state.event("HatchOpened") and state.climbing()) end },
    { dest = "InsideCore", logic = function() return (state.event("MainCoreActivated") or state.CanPhase()) end, exitShuffleId="FactoryLowerCoreToInsideCore" },
    { dest = "MiddleCore", logic = function() return state.event("MainCoreActivated") end },
  },
}

-- region: InsideCore  (Inside Core)
M.regions["InsideCore"] = {
  display_name = [[Inside Core]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = -1,
  locations = {
    { id = "FactoryDonkeyCrusherRoom", logic = function() return ((state.strongKong() and state.donkey()) or state.generalclips() or state.CanPhase()) end },
    { id = "Balloon053", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "LowerCore", logic = function() return true end, exitShuffleId="FactoryInsideCoreToLowerCore" },
  },
}

-- region: MiddleCore  (Middle Core)
M.regions["MiddleCore"] = {
  display_name = [[Middle Core]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "Balloon035", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "LowerCore", logic = function() return true end },
    { dest = "SpinningCore", logic = function() return state.climbing() end },
    { dest = "InsideCore", logic = function() return state.ledgeclip() end, exitShuffleId="FactoryLowerCoreToInsideCore", isGlitchTransition=true },
  },
}

-- region: SpinningCore  (Spinning Core)
M.regions["SpinningCore"] = {
  display_name = [[Spinning Core]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryChunkyProductionRoom", logic = function() return (state.event("ChunkyCoreSwitch") and state.event("MainCoreActivated") and state.chunky()) end },
  },
  events = {
    { id = "FactoryW4bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "MiddleCore", logic = function() return true end },
    { dest = "UpperCore", logic = function() return state.event("MainCoreActivated") end },
  },
}

-- region: UpperCore  (Upper Core)
M.regions["UpperCore"] = {
  display_name = [[Upper Core]],
  hint_region  = "ProductionRoom",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryDiddyProductionRoom", logic = function() return (state.event("DiddyCoreSwitch") and state.event("MainCoreActivated") and state.spring() and state.diddy()) end },
    { id = "FactoryLankyProductionRoom", logic = function() return (state.event("LankyCoreSwitch") and state.event("MainCoreActivated") and ((state.handstand() and state.lanky()) or (state.tiny() and settings.free_trade_items() and state.slope_resets()))) end },
    { id = "FactoryTinyProductionRoom", logic = function() return (state.event("TinyCoreSwitch") and state.event("MainCoreActivated") and state.twirl() and state.tiny()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "FactoryKasplatProductionTop", logic = function() return (not settings.kasplat_rando()) end },
    { id = "Balloon037", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "LowerCore", logic = function() return true end },
    { dest = "SpinningCore", logic = function() return true end },
    { dest = "FactoryBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: FactoryBossLobby  (Factory Boss Lobby)
M.regions["FactoryBossLobby"] = {
  display_name = [[Factory Boss Lobby]],
  hint_region  = "Bosses",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "FactoryBoss", logic = function() return state.IsBossReachable("FranticFactory") end },
  },
}

-- region: FactoryBoss  (Factory Boss)
M.regions["FactoryBoss"] = {
  display_name = [[Factory Boss]],
  hint_region  = "Bosses",
  level        = "FranticFactory",
  deathwarp    = nil,
  locations = {
    { id = "FactoryKey", logic = function() return state.IsBossBeatable("FranticFactory") end },
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