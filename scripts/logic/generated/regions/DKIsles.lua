-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/DKIsles.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: GameStart  (Game Start)
M.regions["GameStart"] = {
  display_name = [[Game Start]],
  hint_region  = "GameStart",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesVinesTrainingBarrel", logic = function() return settings.fast_start_beginning_of_game() end },
    { id = "IslesSwimTrainingBarrel", logic = function() return settings.fast_start_beginning_of_game() end },
    { id = "IslesOrangesTrainingBarrel", logic = function() return settings.fast_start_beginning_of_game() end },
    { id = "IslesBarrelsTrainingBarrel", logic = function() return settings.fast_start_beginning_of_game() end },
    { id = "ShopOwner_Location00", logic = function() return true end },
    { id = "ShopOwner_Location01", logic = function() return true end },
    { id = "ShopOwner_Location02", logic = function() return true end },
    { id = "ShopOwner_Location03", logic = function() return true end },
    { id = "TimeLocationDay", logic = function() return true end },
    { id = "TimeLocationNight", logic = function() return true end },
    { id = "IslesFirstMove", logic = function() return settings.fast_start_beginning_of_game() end },
    { id = "IslesClimbing", logic = function() return true end },
    { id = "IslesCannons", logic = function() return true end },
    { id = "PreGiven_Location00", logic = function() return true end },
    { id = "PreGiven_Location01", logic = function() return true end },
    { id = "PreGiven_Location02", logic = function() return true end },
    { id = "PreGiven_Location03", logic = function() return true end },
    { id = "PreGiven_Location04", logic = function() return true end },
    { id = "PreGiven_Location05", logic = function() return true end },
    { id = "PreGiven_Location06", logic = function() return true end },
    { id = "PreGiven_Location07", logic = function() return true end },
    { id = "PreGiven_Location08", logic = function() return true end },
    { id = "PreGiven_Location09", logic = function() return true end },
    { id = "PreGiven_Location10", logic = function() return true end },
    { id = "PreGiven_Location11", logic = function() return true end },
    { id = "PreGiven_Location12", logic = function() return true end },
    { id = "PreGiven_Location13", logic = function() return true end },
    { id = "PreGiven_Location14", logic = function() return true end },
    { id = "PreGiven_Location15", logic = function() return true end },
    { id = "PreGiven_Location16", logic = function() return true end },
    { id = "PreGiven_Location17", logic = function() return true end },
    { id = "PreGiven_Location18", logic = function() return true end },
    { id = "PreGiven_Location19", logic = function() return true end },
    { id = "PreGiven_Location20", logic = function() return true end },
    { id = "PreGiven_Location21", logic = function() return true end },
    { id = "PreGiven_Location22", logic = function() return true end },
    { id = "PreGiven_Location23", logic = function() return true end },
    { id = "PreGiven_Location24", logic = function() return true end },
    { id = "PreGiven_Location25", logic = function() return true end },
    { id = "PreGiven_Location26", logic = function() return true end },
    { id = "PreGiven_Location27", logic = function() return true end },
    { id = "PreGiven_Location28", logic = function() return true end },
    { id = "PreGiven_Location29", logic = function() return true end },
    { id = "PreGiven_Location30", logic = function() return true end },
    { id = "PreGiven_Location31", logic = function() return true end },
    { id = "PreGiven_Location32", logic = function() return true end },
    { id = "PreGiven_Location33", logic = function() return true end },
    { id = "PreGiven_Location34", logic = function() return true end },
    { id = "PreGiven_Location35", logic = function() return true end },
    { id = "PreGiven_Location36", logic = function() return true end },
  },
  events = {
    { id = "KLumsyTalkedTo", logic = function() return (settings.fast_start_beginning_of_game() or settings.auto_keys()) end },
    { id = "JapesKeyTurnedIn", logic = function() return (settings.auto_keys() and state.JapesKey() and state.HasFillRequirementsForLevel(settings.level_order(2))) end },
    { id = "AztecKeyTurnedIn", logic = function() return (settings.auto_keys() and state.AztecKey() and state.HasFillRequirementsForLevel(settings.level_order(3))) end },
    { id = "FactoryKeyTurnedIn", logic = function() return (settings.auto_keys() and state.FactoryKey()) end },
    { id = "GalleonKeyTurnedIn", logic = function() return (settings.auto_keys() and state.GalleonKey() and state.HasFillRequirementsForLevel(settings.level_order(5))) end },
    { id = "ForestKeyTurnedIn", logic = function() return (settings.auto_keys() and state.ForestKey() and state.HasFillRequirementsForLevel(settings.level_order(6))) end },
    { id = "CavesKeyTurnedIn", logic = function() return (settings.auto_keys() and state.CavesKey() and state.HasFillRequirementsForLevel(settings.level_order(7))) end },
    { id = "CastleKeyTurnedIn", logic = function() return (settings.auto_keys() and state.CastleKey() and state.HasFillRequirementsForLevel(settings.level_order(7))) end },
    { id = "HelmKeyTurnedIn", logic = function() return (settings.auto_keys() and state.HelmKey()) end },
    { id = "Night", logic = function() return (((settings.fungi_time_internal() == "night") or (settings.fungi_time_internal() == "dusk") or (settings.fungi_time_internal() == "progressive")) and state.nightAccess()) end },
    { id = "Day", logic = function() return (((settings.fungi_time_internal() == "day") or (settings.fungi_time_internal() == "dusk") or (settings.fungi_time_internal() == "progressive")) and state.dayAccess()) end },
    { id = "AztecIceMelted", logic = function() return state.checkBarrier("aztec_tiny_temple_ice") end },
    { id = "TestingGateOpened", logic = function() return state.checkBarrier("factory_testing_gate") end },
    { id = "MainCoreActivated", logic = function() return state.checkBarrier("factory_production_room") end },
    { id = "LighthouseGateOpened", logic = function() return state.checkBarrier("galleon_lighthouse_gate") end },
    { id = "ShipyardGateOpened", logic = function() return state.checkBarrier("galleon_shipyard_area_gate") end },
    { id = "ActivatedLighthouse", logic = function() return state.checkBarrier("galleon_seasick_ship") end },
    { id = "ShipyardTreasureRoomOpened", logic = function() return state.checkBarrier("galleon_treasure_room") end },
    { id = "WormGatesOpened", logic = function() return state.checkBarrier("forest_green_tunnel") end },
    { id = "HollowTreeGateOpened", logic = function() return state.checkBarrier("forest_yellow_tunnel") end },
    { id = "DonkeyVerse", logic = function() return (state.coconut() and state.strongKong()) end },
    { id = "DiddyVerse", logic = function() return (state.jetpack() and state.peanut() and state.guitar()) end },
    { id = "LankyVerse", logic = function() return (state.handstand() and state.balloon() and state.trombone()) end },
    { id = "TinyVerse", logic = function() return (state.mini() and state.twirl() and state.climbing()) end },
    { id = "ChunkyVerse", logic = function() return state.barrels() end },
    { id = "FridgeVerse", logic = function() return (state.crankyAccess() and state.peanut() and state.pineapple() and state.grape() and state.oranges() and state.coconut()) end },
  },
  exits = {
    { dest = "Credits", logic = function() return true end },
    { dest = "IslesMain", logic = function() return settings.fast_start_beginning_of_game() end },
    { dest = "Treehouse", logic = function() return (not settings.fast_start_beginning_of_game()) end },
    { dest = "DKIslesMedals", logic = function() return true end },
    { dest = "JungleJapesMedals", logic = function() return true end },
    { dest = "AngryAztecMedals", logic = function() return true end },
    { dest = "FranticFactoryMedals", logic = function() return true end },
    { dest = "GloomyGalleonMedals", logic = function() return true end },
    { dest = "FungiForestMedals", logic = function() return true end },
    { dest = "CrystalCavesMedals", logic = function() return true end },
    { dest = "CreepyCastleMedals", logic = function() return true end },
  },
}

-- region: DKIslesMedals  (DK Isles Medals)
M.regions["DKIslesMedals"] = {
  display_name = [[DK Isles Medals]],
  hint_region  = "IslesCBs",
  level        = "DKIsles",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "IslesDonkeyMedal", logic = function() return (state.cb("DKIsles", "donkey") >= settings.medal_cb_req_level(7)) end },
    { id = "IslesDiddyMedal", logic = function() return (state.cb("DKIsles", "diddy") >= settings.medal_cb_req_level(7)) end },
    { id = "IslesLankyMedal", logic = function() return (state.cb("DKIsles", "lanky") >= settings.medal_cb_req_level(7)) end },
    { id = "IslesTinyMedal", logic = function() return (state.cb("DKIsles", "tiny") >= settings.medal_cb_req_level(7)) end },
    { id = "IslesChunkyMedal", logic = function() return (state.cb("DKIsles", "chunky") >= settings.medal_cb_req_level(7)) end },
    { id = "IslesDonkeyHalfMedal", logic = function() return (state.cb("DKIsles", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
    { id = "IslesDiddyHalfMedal", logic = function() return (state.cb("DKIsles", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
    { id = "IslesLankyHalfMedal", logic = function() return (state.cb("DKIsles", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
    { id = "IslesTinyHalfMedal", logic = function() return (state.cb("DKIsles", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
    { id = "IslesChunkyHalfMedal", logic = function() return (state.cb("DKIsles", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: Credits  (Credits)
M.regions["Credits"] = {
  display_name = [[Credits]],
  hint_region  = "Credits",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "BananaHoard", logic = function() return state.WinConditionMet() end },
  },
  events = {
  },
  exits = {
  },
}

-- region: Treehouse  (Treehouse)
M.regions["Treehouse"] = {
  display_name = [[Treehouse]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "TrainingGrounds", logic = function() return true end, exitShuffleId="IslesTreehouseToStart" },
  },
}

-- region: TrainingGrounds  (Training Grounds)
M.regions["TrainingGrounds"] = {
  display_name = [[Training Grounds]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesVinesTrainingBarrel", logic = function() return state.event("TrainingBarrelsSpawned") end, bonusBarrel="MinigameType.TrainingBarrel" },
    { id = "IslesSwimTrainingBarrel", logic = function() return state.event("TrainingBarrelsSpawned") end, bonusBarrel="MinigameType.TrainingBarrel" },
    { id = "IslesOrangesTrainingBarrel", logic = function() return state.event("TrainingBarrelsSpawned") end, bonusBarrel="MinigameType.TrainingBarrel" },
    { id = "IslesBarrelsTrainingBarrel", logic = function() return state.event("TrainingBarrelsSpawned") end, bonusBarrel="MinigameType.TrainingBarrel" },
    { id = "IslesFirstMove", logic = function() return ((state.allTrainingChecks() and state.crankyAccess()) or settings.fast_start_beginning_of_game()) end },
    { id = "RainbowCoin_Location13", logic = function() return true end },
    { id = "RainbowCoin_Location14", logic = function() return ((state.can_use_vines() or state.CanMoonkick()) and state.climbing()) end },
  },
  events = {
    { id = "TrainingBarrelsSpawned", logic = function() return (state.crankyAccess() or settings.fast_start_beginning_of_game()) end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return (state.Slam() or settings.fast_start_beginning_of_game()) end, exitShuffleId="IslesStartToMain" },
    { dest = "Treehouse", logic = function() return state.climbing() end, exitShuffleId="IslesStartToTreehouse" },
    { dest = "CrankyIsles", logic = function() return state.crankyAccess() end },
  },
}

-- region: IslesMain  (Isles Main)
M.regions["IslesMain"] = {
  display_name = [[Isles Main]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDonkeyJapesRock", logic = function() return (settings.open_lobbies() or state.event("KLumsyTalkedTo")) end },
    { id = "IslesChunkyCagedBanana", logic = function() return ((state.pineapple() and state.chunky()) or ((state.CanSTS() or state.CanPhase()) and (state.chunky() or settings.free_trade_items()))) end },
    { id = "IslesMainEnemy_PineappleCage0", logic = function() return true end },
    { id = "IslesMainEnemy_FungiCannon0", logic = function() return true end },
    { id = "IslesMainEnemy_JapesEntrance", logic = function() return true end },
    { id = "IslesMainEnemy_FungiCannon1", logic = function() return true end },
    { id = "IslesMainEnemy_PineappleCage1", logic = function() return true end },
    { id = "KremKap_IslesMainEnemy_PineappleCage0", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_FungiCannon0", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_JapesEntrance", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_FungiCannon1", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_PineappleCage1", logic = function() return state.camera() end },
  },
  events = {
    { id = "IslesW1aTagged", logic = function() return true end },
    { id = "IslesW1bTagged", logic = function() return true end },
    { id = "IslesW2aTagged", logic = function() return true end },
    { id = "IslesW3aTagged", logic = function() return true end },
    { id = "IslesW3bTagged", logic = function() return true end },
    { id = "IslesW4aTagged", logic = function() return true end },
    { id = "IslesW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "TrainingGrounds", logic = function() return true end, exitShuffleId="IslesMainToStart" },
    { dest = "OuterIsles", logic = function() return true end },
    { dest = "JungleJapesLobby", logic = function() return (settings.open_lobbies() or state.event("KLumsyTalkedTo") or state.CanPhase() or state.CanSTS()) end, exitShuffleId="IslesMainToJapesLobby" },
    { dest = "KremIsle", logic = function() return true end },
    { dest = "IslesHill", logic = function() return (state.climbing() or state.assumeUpperIslesAccess()) end },
    { dest = "CabinIsle", logic = function() return ((settings.open_lobbies() or state.event("GalleonKeyTurnedIn")) and state.cannons()) end },
    { dest = "CreepyCastleLobby", logic = function() return ((settings.open_lobbies() or state.event("ForestKeyTurnedIn")) and (state.cannons() or state.assumeLevel7Entry())) end, exitShuffleId="IslesMainToCastleLobby" },
    { dest = "KremIsleTopLevel", logic = function() return state.tbs() end },
    { dest = "KRool", logic = function() return (state.CanAccessKRool() or state.assumeKRoolAccess()) end },
    { dest = "CabinDoor", logic = function() return state.assumeLevel5Entry() end },
  },
}

-- region: OuterIsles  (Outer Isles)
M.regions["OuterIsles"] = {
  display_name = [[Outer Isles]],
  hint_region  = "OuterIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesTinyCagedBanana", logic = function() return ((state.feather() and state.tiny()) or ((state.CanPhase() or state.CanSTS()) and (state.tiny() or settings.free_trade_items()))) end },
    { id = "IslesChunkyPoundtheX", logic = function() return (state.event("IslesChunkyBarrelSpawn") and state.hunkyChunky() and state.Slam() and state.chunky()) end },
    { id = "IslesBananaFairyIsland", logic = function() return state.camera() end },
  },
  events = {
    { id = "IslesW5bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "BananaFairyRoom", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSTS()) end, exitShuffleId="IslesMainToFairy" },
  },
}

-- region: IslesHill  (Isles Hill)
M.regions["IslesHill"] = {
  display_name = [[Isles Hill]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "RainbowCoin_Location04", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "IslesMainUpper", logic = function() return (state.can_use_vines() or state.CanMoonkick() or state.assumeUpperIslesAccess()) end },
    { dest = "IslesEar", logic = function() return state.CanMoonkick() end },
  },
}

-- region: IslesMainUpper  (Isles Main Upper)
M.regions["IslesMainUpper"] = {
  display_name = [[Isles Main Upper]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesChunkyInstrumentPad", logic = function() return (state.triangle() and state.chunky() and state.barrels()) end },
    { id = "IslesMainEnemy_NearAztec", logic = function() return true end },
    { id = "KremKap_IslesMainEnemy_NearAztec", logic = function() return state.camera() end },
    { id = "HoldableBoulderIslesNearAztec", logic = function() return (state.barrels() and state.chunky()) end },
    { id = "HoldableBoulderIslesNearCaves", logic = function() return (state.barrels() and state.chunky()) end },
  },
  events = {
    { id = "IslesDiddyBarrelSpawn", logic = function() return (state.chunky() and state.hasMoveSwitchsanity("IslesSpawnRocketbarrel", false) and state.barrels()) end },
    { id = "IslesW2bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "IslesHill", logic = function() return true end },
    { dest = "AztecLobbyRoof", logic = function() return state.CanMoonkick() end },
    { dest = "AngryAztecLobby", logic = function() return (settings.open_lobbies() or state.event("JapesKeyTurnedIn") or state.CanPhase()) end, exitShuffleId="IslesMainToAztecLobby" },
    { dest = "IslesEar", logic = function() return ((settings.open_lobbies() or state.event("ForestKeyTurnedIn")) and ((state.tiny() and state.twirl()) or (state.donkey() or state.chunky() or (((state.diddy() or state.lanky()) and state.monkey_maneuvers()) and (not state.isKrushaAdjacent(state.kong())))))) end },
  },
}

-- region: IslesEar  (Isles Ear)
M.regions["IslesEar"] = {
  display_name = [[Isles Ear]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CrystalCavesLobby", logic = function() return true end, exitShuffleId="IslesMainToCavesLobby" },
    { dest = "IslesHill", logic = function() return true end },
    { dest = "IslesMainUpper", logic = function() return ((state.tiny() and state.twirl()) or (state.donkey() or state.chunky() or (((state.diddy() or state.lanky()) and state.monkey_maneuvers()) and (not state.isKrushaAdjacent(state.kong()))))) end },
  },
}

-- region: Prison  (Prison)
M.regions["Prison"] = {
  display_name = [[Prison]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesLankyPrisonOrangsprint", logic = function() return ((state.sprint() and state.lanky()) or (state.CanPhase() and (state.lanky() or settings.free_trade_items()))) end },
    { id = "RainbowCoin_Location12", logic = function() return true end },
  },
  events = {
    { id = "KLumsyTalkedTo", logic = function() return true end },
    { id = "JapesKeyTurnedIn", logic = function() return (state.JapesKey() and state.HasFillRequirementsForLevel(settings.level_order(2))) end },
    { id = "AztecKeyTurnedIn", logic = function() return (state.AztecKey() and state.HasFillRequirementsForLevel(settings.level_order(3))) end },
    { id = "FactoryKeyTurnedIn", logic = function() return state.FactoryKey() end },
    { id = "GalleonKeyTurnedIn", logic = function() return (state.GalleonKey() and state.HasFillRequirementsForLevel(settings.level_order(5))) end },
    { id = "ForestKeyTurnedIn", logic = function() return (state.ForestKey() and state.HasFillRequirementsForLevel(settings.level_order(6))) end },
    { id = "CavesKeyTurnedIn", logic = function() return (state.CavesKey() and state.HasFillRequirementsForLevel(settings.level_order(6))) end },
    { id = "CastleKeyTurnedIn", logic = function() return (state.CastleKey() and state.HasFillRequirementsForLevel(settings.level_order(6))) end },
    { id = "HelmKeyTurnedIn", logic = function() return state.HelmKey() end },
  },
  exits = {
    { dest = "KremIsle", logic = function() return true end, exitShuffleId="IslesPrisonToMain" },
  },
}

-- region: BananaFairyRoom  (Banana Fairy Room)
M.regions["BananaFairyRoom"] = {
  display_name = [[Banana Fairy Room]],
  hint_region  = "OuterIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "CameraAndShockwave", logic = function() return true end },
    { id = "KremKap_IslesNPC_BFIQueen", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "OuterIsles", logic = function() return true end, exitShuffleId="IslesFairyToMain" },
    { dest = "RarewareGBRoom", logic = function() return state.CanGetRarewareGB() end },
  },
}

-- region: RarewareGBRoom  (Rareware GB Room)
M.regions["RarewareGBRoom"] = {
  display_name = [[Rareware GB Room]],
  hint_region  = "OuterIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "RarewareBanana", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "BananaFairyRoom", logic = function() return true end },
  },
}

-- region: JungleJapesLobby  (Jungle Japes Lobby)
M.regions["JungleJapesLobby"] = {
  display_name = [[Jungle Japes Lobby]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesLankyInstrumentPad", logic = function() return (state.chunky() and state.trombone() and state.lanky() and state.barrels()) end },
    { id = "JapesDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "JapesDiddyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "JapesLankyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "JapesTinyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "JapesChunkyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "JapesLobbyEnemy_Enemy0", logic = function() return true end },
    { id = "JapesLobbyEnemy_Enemy1", logic = function() return true end },
    { id = "KremKap_JapesLobbyEnemy_Enemy0", logic = function() return state.camera() end },
    { id = "KremKap_JapesLobbyEnemy_Enemy1", logic = function() return state.camera() end },
    { id = "HoldableBoulderJapesLobby", logic = function() return (state.barrels() and state.chunky()) end },
  },
  events = {
    { id = "JapesLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end, exitShuffleId="IslesJapesLobbyToMain" },
    { dest = "JungleJapesEntryHandler", logic = function() return state.IsLevelEnterable("JungleJapes") end, exitShuffleId="IslesToJapes" },
  },
}

-- region: AngryAztecLobby  (Angry Aztec Lobby)
M.regions["AngryAztecLobby"] = {
  display_name = [[Angry Aztec Lobby]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesTinyAztecLobby", logic = function() return ((((state.charge() and state.diddy() and state.twirl()) or (settings.bonus_barrels() == "skip")) and state.tiny()) or ((settings.bonus_barrels() == "skip") and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "AztecDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "AztecDiddyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "AztecLankyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "AztecTinyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "AztecChunkyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and (state.hasMoveSwitchsanity("IslesAztecLobbyFeather", false) or state.CanPhase()) and ((state.chunky() and state.hunkyChunky()) or settings.remove_wrinkly_puzzles())) end },
  },
  events = {
    { id = "AztecLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMainUpper", logic = function() return true end, exitShuffleId="IslesAztecLobbyToMain" },
    { dest = "AngryAztecEntryHandler", logic = function() return state.IsLevelEnterable("AngryAztec") end, exitShuffleId="IslesToAztec" },
  },
}

-- region: KremIsle  (Krem Isle Base)
M.regions["KremIsle"] = {
  display_name = [[Krem Isle Base]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesLankyCagedBanana", logic = function() return (((state.grape() or state.CanPhaseswim() or state.CanPhase()) and state.lanky()) or (state.CanPhase() and settings.free_trade_items())) end },
    { id = "IslesMainEnemy_MonkeyportPad", logic = function() return true end },
    { id = "KremKap_IslesMainEnemy_MonkeyportPad", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "Prison", logic = function() return true end, exitShuffleId="IslesMainToPrison" },
    { dest = "GloomyGalleonLobbyEntrance", logic = function() return ((settings.open_lobbies() or state.event("AztecKeyTurnedIn") or state.CanPhaseswim()) and (state.swim() or state.assumeLevel4Entry())) end, exitShuffleId="IslesMainToGalleonLobby" },
    { dest = "KremIsleBeyondLift", logic = function() return (settings.open_lobbies() or state.event("AztecKeyTurnedIn") or state.CanMoonkick() or state.tbs() or state.CanMoontail()) end },
    { dest = "KremIsleTopLevel", logic = function() return state.hasMoveSwitchsanity("IslesMonkeyport", (not state.assumeLevel8Entry())) end },
    { dest = "KremIsleMouth", logic = function() return state.assumeLevel8Entry() end },
  },
}

-- region: KremIsleBeyondLift  (Krem Isle Beyond Lift)
M.regions["KremIsleBeyondLift"] = {
  display_name = [[Krem Isle Beyond Lift]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDonkeyCagedBanana", logic = function() return (state.coconut() and state.donkey()) end },
    { id = "IslesMainEnemy_UpperFactoryPath", logic = function() return true end },
    { id = "IslesMainEnemy_LowerFactoryPath0", logic = function() return true end },
    { id = "IslesMainEnemy_LowerFactoryPath1", logic = function() return true end },
    { id = "KremKap_IslesMainEnemy_UpperFactoryPath", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_LowerFactoryPath0", logic = function() return state.camera() end },
    { id = "KremKap_IslesMainEnemy_LowerFactoryPath1", logic = function() return state.camera() end },
  },
  events = {
    { id = "IslesW4bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "KremIsle", logic = function() return true end },
    { dest = "IslesSnideRoom", logic = function() return true end, exitShuffleId="IslesMainToSnideRoom" },
    { dest = "FranticFactoryLobby", logic = function() return (settings.open_lobbies() or state.event("AztecKeyTurnedIn")) end, exitShuffleId="IslesMainToFactoryLobby" },
  },
}

-- region: KremIsleTopLevel  (Krem Isle Top Level)
M.regions["KremIsleTopLevel"] = {
  display_name = [[Krem Isle Top Level]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesTinyInstrumentPad", logic = function() return (state.event("IslesChunkyBarrelSpawn") and state.tiny()) end },
    { id = "IslesBananaFairyCrocodisleIsle", logic = function() return state.camera() end },
  },
  events = {
    { id = "IslesChunkyBarrelSpawn", logic = function() return (state.saxophone() and state.tiny()) end },
  },
  exits = {
    { dest = "HideoutHelmLobby", logic = function() return ((state.generalclips() and state.twirl()) or state.tbs()) end, exitShuffleId="IslesMainToHelmLobby", isGlitchTransition=true },
    { dest = "KremIsleMouth", logic = function() return (settings.open_lobbies() or (state.event("CavesKeyTurnedIn") and state.event("CastleKeyTurnedIn"))) end },
    { dest = "KremIsleBeyondLift", logic = function() return true end },
  },
}

-- region: KremIsleMouth  (Krem Isle Mouth)
M.regions["KremIsleMouth"] = {
  display_name = [[Krem Isle Mouth]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmLobby", logic = function() return (settings.open_lobbies() or (state.event("CavesKeyTurnedIn") and state.event("CastleKeyTurnedIn"))) end, exitShuffleId="IslesMainToHelmLobby" },
    { dest = "KremIsleTopLevel", logic = function() return ((not state.assumeLevel8Entry()) and (settings.open_lobbies() or (state.event("CavesKeyTurnedIn") and state.event("CastleKeyTurnedIn")))) end },
    { dest = "KremIsleBeyondLift", logic = function() return (state.CanSurviveFallDamage() or settings.open_lobbies() or (state.event("CavesKeyTurnedIn") and state.event("CastleKeyTurnedIn"))) end },
    { dest = "IslesMain", logic = function() return ((not settings.perma_death()) and (not settings.wipe_file_on_death())) end },
  },
}

-- region: IslesSnideRoom  (Isles Snide Room)
M.regions["IslesSnideRoom"] = {
  display_name = [[Isles Snide Room]],
  hint_region  = "KremIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDiddySnidesLobby", logic = function() return ((((settings.bonus_barrels() == "skip") or state.spring()) and state.diddy()) or ((settings.bonus_barrels() == "skip") and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "IslesBattleArena1", logic = function() return ((not settings.crown_placement_rando()) and state.chunky() and state.barrels()) end },
  },
  events = {
  },
  exits = {
    { dest = "KremIsleBeyondLift", logic = function() return true end, exitShuffleId="IslesSnideRoomToMain" },
    { dest = "Snide", logic = function() return state.snideAccess() end },
  },
}

-- region: FranticFactoryLobby  (Frantic Factory Lobby)
M.regions["FranticFactoryLobby"] = {
  display_name = [[Frantic Factory Lobby]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDonkeyInstrumentPad", logic = function() return ((state.grab() or state.CanMoonkick()) and state.bongos() and state.donkey()) end },
    { id = "IslesKasplatFactoryLobby", logic = function() return ((not settings.kasplat_rando()) and state.punch() and state.chunky()) end },
    { id = "IslesBananaFairyFactoryLobby", logic = function() return (state.camera() and state.punch() and state.chunky()) end },
    { id = "FactoryDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "FactoryDiddyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or (state.monkey_maneuvers() and (state.tiny() or state.diddy())))) end },
    { id = "FactoryLankyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or state.monkey_maneuvers())) end },
    { id = "FactoryTinyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or (state.monkey_maneuvers() and (state.tiny() or state.diddy())))) end },
    { id = "FactoryChunkyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "FactoryLobbyEnemy_Enemy0", logic = function() return true end },
    { id = "KremKap_FactoryLobbyEnemy_Enemy0", logic = function() return state.camera() end },
  },
  events = {
    { id = "FactoryLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "KremIsleBeyondLift", logic = function() return true end, exitShuffleId="IslesFactoryLobbyToMain" },
    { dest = "FranticFactoryEntryHandler", logic = function() return state.IsLevelEnterable("FranticFactory") end, exitShuffleId="IslesToFactory" },
  },
}

-- region: GloomyGalleonLobbyEntrance  (Gloomy Galleon Lobby Entrance)
M.regions["GloomyGalleonLobbyEntrance"] = {
  display_name = [[Gloomy Galleon Lobby Entrance]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "KremIsle", logic = function() return true end, exitShuffleId="IslesGalleonLobbyToMain" },
    { dest = "GloomyGalleonLobby", logic = function() return true end },
  },
}

-- region: GloomyGalleonLobby  (Gloomy Galleon Lobby)
M.regions["GloomyGalleonLobby"] = {
  display_name = [[Gloomy Galleon Lobby]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesTinyGalleonLobby", logic = function() return (((state.chunky() and state.CanSlamSwitch("GloomyGalleon", 2) and state.mini() and state.twirl() and state.swim() and state.tiny()) or (state.CanPhaseswim() and (state.tiny() or settings.free_trade_items()))) and ((not state.IsLavaWater()) or (state.Melons() >= 3))) end },
    { id = "IslesKasplatGalleonLobby", logic = function() return (not settings.kasplat_rando()) end },
    { id = "GalleonDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "GalleonDiddyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "GalleonLankyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "GalleonTinyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "GalleonChunkyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
  },
  events = {
    { id = "GalleonLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "GloomyGalleonLobbyEntrance", logic = function() return state.swim() end },
    { dest = "GloomyGalleonEntryHandler", logic = function() return state.IsLevelEnterable("GloomyGalleon") end, exitShuffleId="IslesToGalleon" },
  },
}

-- region: CabinIsle  (Cabin Isle)
M.regions["CabinIsle"] = {
  display_name = [[Cabin Isle]],
  hint_region  = "OuterIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "RainbowCoin_Location03", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "IslesMainUpper", logic = function() return (state.twirl() and state.tiny() and state.monkey_maneuvers()) end },
    { dest = "IslesAboveWaterfall", logic = function() return (state.monkey_maneuvers() and (((state.diddy() or state.donkey() or state.chunky()) and (not state.isKrushaAdjacent(state.kong()))) or (state.tiny() and state.twirl()))) end },
    { dest = "IslesAirspace", logic = function() return (state.event("IslesDiddyBarrelSpawn") and state.jetpack() and state.diddy()) end },
    { dest = "CabinDoor", logic = function() return true end },
  },
}

-- region: CabinDoor  (Cabin Door)
M.regions["CabinDoor"] = {
  display_name = [[Cabin Door]],
  hint_region  = "OuterIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CabinIsle", logic = function() return (not state.assumeLevel5Entry()) end },
    { dest = "FungiForestLobby", logic = function() return true end, exitShuffleId="IslesMainToForestLobby" },
  },
}

-- region: IslesAboveWaterfall  (Isles Above Waterfall)
M.regions["IslesAboveWaterfall"] = {
  display_name = [[Isles Above Waterfall]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDiddyCagedBanana", logic = function() return (state.peanut() and state.diddy()) end },
  },
  events = {
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "IslesMainUpper", logic = function() return state.monkey_maneuvers() end },
    { dest = "CabinIsle", logic = function() return (state.CanMoonkick() or (state.monkey_maneuvers() and (((state.diddy() or state.donkey() or state.chunky()) and (not state.isKrushaAdjacent(state.kong()))) or (state.tiny() and state.twirl())))) end },
    { dest = "AztecLobbyRoof", logic = function() return (state.monkey_maneuvers() and state.tiny() and state.twirl()) end },
  },
}

-- region: IslesAirspace  (Isles Airspace)
M.regions["IslesAirspace"] = {
  display_name = [[Isles Airspace]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDiddySummit", logic = function() return true end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
    { id = "AirSpaceEntered", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end },
    { dest = "IslesMainUpper", logic = function() return true end },
    { dest = "CabinIsle", logic = function() return true end },
    { dest = "AztecLobbyRoof", logic = function() return true end },
    { dest = "IslesAboveWaterfall", logic = function() return true end },
    { dest = "IslesEar", logic = function() return (settings.open_lobbies() or state.event("ForestKeyTurnedIn")) end },
  },
}

-- region: AztecLobbyRoof  (Aztec Lobby Roof)
M.regions["AztecLobbyRoof"] = {
  display_name = [[Aztec Lobby Roof]],
  hint_region  = "MainIsles",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "RainbowCoin_Location05", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "IslesMainUpper", logic = function() return true end },
    { dest = "IslesAboveWaterfall", logic = function() return state.CanMoonkick() end },
  },
}

-- region: FungiForestLobby  (Fungi Forest Lobby)
M.regions["FungiForestLobby"] = {
  display_name = [[Fungi Forest Lobby]],
  hint_region  = "EarlyLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesBattleArena2", logic = function() return ((not settings.crown_placement_rando()) and (state.CanOpenForestLobbyGoneDoor() and state.gorillaGone() and state.chunky())) end },
    { id = "IslesBananaFairyForestLobby", logic = function() return (state.camera() and state.hasMoveSwitchsanity("IslesFungiLobbyFeather", false)) end },
    { id = "ForestDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "ForestDiddyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "ForestLankyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "ForestTinyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "ForestChunkyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
  },
  events = {
    { id = "ForestLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "CabinIsle", logic = function() return true end, exitShuffleId="IslesForestLobbyToMain" },
    { dest = "FungiForestEntryHandler", logic = function() return state.IsLevelEnterable("FungiForest") end, exitShuffleId="IslesToForest" },
  },
}

-- region: CrystalCavesLobby  (Crystal Caves Lobby)
M.regions["CrystalCavesLobby"] = {
  display_name = [[Crystal Caves Lobby]],
  hint_region  = "LateLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesDonkeyLavaBanana", logic = function() return (((state.punch() and state.chunky() and state.strongKong()) or state.CanPhase()) and state.donkey()) end },
    { id = "IslesDiddyInstrumentPad", logic = function() return (state.jetpack() and state.guitar() and state.diddy()) end },
    { id = "IslesKasplatCavesLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.punch() and state.chunky()) or state.CanPhase() or state.ledgeclip())) end },
    { id = "CavesDonkeyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
    { id = "CavesDiddyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles()) and ((state.diddy() and state.jetpack()) or state.CanMoonkick())) end },
    { id = "CavesLankyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
    { id = "CavesTinyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
    { id = "CavesChunkyDoor", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
    { id = "HoldableBoulderCavesLobby", logic = function() return (state.barrels() and state.chunky() and (state.punch() or state.CanPhase())) end },
  },
  events = {
    { id = "CavesLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "IslesEar", logic = function() return true end, exitShuffleId="IslesCavesLobbyToMain" },
    { dest = "CrystalCavesEntryHandler", logic = function() return state.IsLevelEnterable("CrystalCaves") end, exitShuffleId="IslesToCaves" },
  },
}

-- region: CreepyCastleLobby  (Creepy Castle Lobby)
M.regions["CreepyCastleLobby"] = {
  display_name = [[Creepy Castle Lobby]],
  hint_region  = "LateLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesLankyCastleLobby", logic = function() return ((state.chunky() and state.balloon() and state.lanky() and state.barrels()) or ((state.CanMoonkick() or (state.monkey_maneuvers() and state.tiny() and state.twirl() and (not state.isKrushaAdjacent("tiny")))) and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "IslesKasplatCastleLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
    { id = "CastleDonkeyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "CastleDiddyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "CastleLankyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "CastleTinyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "CastleChunkyDoor", logic = function() return (not settings.wrinkly_location_rando()) end },
    { id = "RainbowCoin_Location15", logic = function() return ((state.chunky() and state.balloon() and state.lanky() and state.barrels()) or state.CanMoonkick() or (state.monkey_maneuvers() and state.tiny() and state.twirl() and (not state.isKrushaAdjacent("tiny")))) end },
    { id = "CastleLobbyEnemy_Left", logic = function() return true end },
    { id = "CastleLobbyEnemy_FarRight", logic = function() return true end },
    { id = "CastleLobbyEnemy_NearRight", logic = function() return true end },
    { id = "KremKap_CastleLobbyEnemy_Left", logic = function() return state.camera() end },
    { id = "KremKap_CastleLobbyEnemy_FarRight", logic = function() return state.camera() end },
    { id = "KremKap_CastleLobbyEnemy_NearRight", logic = function() return state.camera() end },
    { id = "HoldableBoulderCastleLobby", logic = function() return (state.barrels() and state.chunky()) end },
  },
  events = {
    { id = "CastleLobbyAccessed", logic = function() return true end },
  },
  exits = {
    { dest = "IslesMain", logic = function() return true end, exitShuffleId="IslesCastleLobbyToMain" },
    { dest = "CreepyCastleEntryHandler", logic = function() return state.IsLevelEnterable("CreepyCastle") end, exitShuffleId="IslesToCastle" },
  },
}

-- region: HideoutHelmLobby  (Hideout Helm Lobby)
M.regions["HideoutHelmLobby"] = {
  display_name = [[Hideout Helm Lobby]],
  hint_region  = "LateLobbies",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
    { id = "IslesChunkyHelmLobby", logic = function() return ((state.hasMoveSwitchsanity("IslesHelmLobbyGone", false) and state.chunky() and state.can_use_vines()) or ((settings.bonus_barrels() == "skip") and state.monkey_maneuvers() and state.tiny() and state.twirl() and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "IslesKasplatHelmLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.scope() and state.coconut()) or (state.twirl() and state.tiny() and state.monkey_maneuvers()))) end },
  },
  events = {
    { id = "HelmLobbyAccessed", logic = function() return true end },
    { id = "HelmLobbyW1aTagged", logic = function() return true end },
    { id = "HelmLobbyTraversable", logic = function() return ((state.hasMoveSwitchsanity("IslesHelmLobbyGone") and state.can_use_vines()) or (state.CanMoonkick() and state.donkey())) end },
  },
  exits = {
    { dest = "KremIsleMouth", logic = function() return true end, exitShuffleId="IslesHelmLobbyToMain" },
    { dest = "HideoutHelmLobbyPastVines", logic = function() return (state.event("HelmLobbyTraversable") or state.event("HelmLobbyW1bTagged")) end },
  },
}

-- region: HideoutHelmLobbyPastVines  (Hideout Helm Lobby Past Vines)
M.regions["HideoutHelmLobbyPastVines"] = {
  display_name = [[Hideout Helm Lobby Past Vines]],
  hint_region  = "LateLobbies",
  level        = "DKIsles",
  deathwarp    = "Regions.HideoutHelmLobby",
  locations = {
  },
  events = {
    { id = "HelmLobbyW1bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "HideoutHelmLobby", logic = function() return state.event("HelmLobbyW1aTagged") end },
    { dest = "HideoutHelmEntry", logic = function() return state.IsLevelEnterable("HideoutHelm") end, exitShuffleId="IslesToHelm" },
  },
}

-- region: KRool  (K. Rool)
M.regions["KRool"] = {
  display_name = [[K. Rool]],
  hint_region  = "KRool",
  level        = "DKIsles",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "KRoolDonkey", logic = function() return ((not settings.krool_donkey()) or ((state.blast() or (not settings.cannons_require_blast())) and state.donkey() and state.climbing())) end },
    { id = "KRoolDiddy", logic = function() return ((not settings.krool_diddy()) or (state.jetpack() and state.peanut() and state.diddy())) end },
    { id = "KRoolLanky", logic = function() return ((not settings.krool_lanky()) or state.CanBeatLankyPhase()) end },
    { id = "KRoolTiny", logic = function() return ((not settings.krool_tiny()) or (state.mini() and state.feather() and state.tiny())) end },
    { id = "KRoolChunky", logic = function() return ((not settings.krool_chunky()) or (state.CanSlamChunkyPhaseSwitch() and state.gorillaGone() and state.hunkyChunky() and state.punch() and state.chunky())) end },
    { id = "KRoolDillo1", logic = function() return ((not settings.krool_dillo1()) or state.barrels()) end },
    { id = "KRoolDog1", logic = function() return ((not settings.krool_dog1()) or state.barrels()) end },
    { id = "KRoolJack", logic = function() return ((not settings.krool_madjack()) or (state.Slam() and state.twirl() and state.tiny())) end },
    { id = "KRoolPufftoss", logic = function() return ((not settings.krool_pufftoss()) or true) end },
    { id = "KRoolDog2", logic = function() return ((not settings.krool_dog2()) or (state.barrels() and state.hunkyChunky() and state.chunky())) end },
    { id = "KRoolDillo2", logic = function() return ((not settings.krool_dillo2()) or state.barrels()) end },
    { id = "KRoolKKO", logic = function() return ((not settings.krool_kutout()) or (((not state.IsLavaWater()) or (state.Melons() >= 3)) and state.cannons())) end },
    { id = "KRoolDefeated", logic = function() return (state.event("KRoolDonkey") and state.event("KRoolDiddy") and state.event("KRoolLanky") and state.event("KRoolTiny") and state.event("KRoolChunky") and state.event("KRoolDillo1") and state.event("KRoolDillo2") and state.event("KRoolDog1") and state.event("KRoolDog2") and state.event("KRoolJack") and state.event("KRoolPufftoss") and state.event("KRoolKKO")) end },
  },
  exits = {
  },
}

if _G.graph and _G.graph.regions then
  for _name, _region in pairs(M.regions) do _G.graph.regions[_name] = _region end
end
return M