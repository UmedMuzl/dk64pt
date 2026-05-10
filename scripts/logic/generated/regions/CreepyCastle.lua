-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/CreepyCastle.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: CreepyCastleMedals  (Creepy Castle Medals)
M.regions["CreepyCastleMedals"] = {
  display_name = [[Creepy Castle Medals]],
  hint_region  = "CastleCBs",
  level        = "CreepyCastle",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "CastleDonkeyMedal", logic = function() return (state.cb("CreepyCastle", "donkey") >= settings.medal_cb_req_level(6)) end },
    { id = "CastleDiddyMedal", logic = function() return (state.cb("CreepyCastle", "diddy") >= settings.medal_cb_req_level(6)) end },
    { id = "CastleLankyMedal", logic = function() return (state.cb("CreepyCastle", "lanky") >= settings.medal_cb_req_level(6)) end },
    { id = "CastleTinyMedal", logic = function() return (state.cb("CreepyCastle", "tiny") >= settings.medal_cb_req_level(6)) end },
    { id = "CastleChunkyMedal", logic = function() return (state.cb("CreepyCastle", "chunky") >= settings.medal_cb_req_level(6)) end },
    { id = "CastleDonkeyHalfMedal", logic = function() return (state.cb("CreepyCastle", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
    { id = "CastleDiddyHalfMedal", logic = function() return (state.cb("CreepyCastle", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
    { id = "CastleLankyHalfMedal", logic = function() return (state.cb("CreepyCastle", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
    { id = "CastleTinyHalfMedal", logic = function() return (state.cb("CreepyCastle", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
    { id = "CastleChunkyHalfMedal", logic = function() return (state.cb("CreepyCastle", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: CreepyCastleEntryHandler  (Creepy Castle Entry Handler)
M.regions["CreepyCastleEntryHandler"] = {
  display_name = [[Creepy Castle Entry Handler]],
  hint_region  = "Error",
  level        = "CreepyCastle",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "CastleEntered", logic = function() return true end },
  },
  exits = {
    { dest = "CreepyCastleLobby", logic = function() return true end, exitShuffleId="CastleToIsles" },
    { dest = "CreepyCastleMain", logic = function() return true end },
  },
}

-- region: CreepyCastleMain  (Creepy Castle Main)
M.regions["CreepyCastleMain"] = {
  display_name = [[Creepy Castle Main]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleDiddyAboveCastle", logic = function() return (state.jetpack() and state.diddy()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CastleKasplatHalfway", logic = function() return (not settings.kasplat_rando()) end },
    { id = "RainbowCoin_Location11", logic = function() return true end },
    { id = "CastleMainEnemy_NearBridge0", logic = function() return true end },
    { id = "CastleMainEnemy_NearBridge1", logic = function() return true end },
    { id = "CastleMainEnemy_WoodenExtrusion0", logic = function() return true end },
    { id = "CastleMainEnemy_WoodenExtrusion1", logic = function() return true end },
    { id = "CastleMainEnemy_NearShed", logic = function() return true end },
    { id = "CastleMainEnemy_NearLibrary", logic = function() return true end },
    { id = "CastleMainEnemy_NearTower", logic = function() return true end },
    { id = "CastleMainEnemy_MuseumSteps", logic = function() return true end },
    { id = "CastleMainEnemy_PathToDungeon", logic = function() return true end },
    { id = "CastleMainEnemy_NearHeadphones", logic = function() return true end },
    { id = "KremKap_CastleMainEnemy_NearBridge0", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_NearBridge1", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_WoodenExtrusion0", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_WoodenExtrusion1", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_NearShed", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_NearLibrary", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_NearTower", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_MuseumSteps", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_PathToDungeon", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_NearHeadphones", logic = function() return state.camera() end },
    { id = "Balloon082", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "CastleW1aTagged", logic = function() return true end },
    { id = "CastleW1bTagged", logic = function() return true end },
    { id = "CastleW2aTagged", logic = function() return true end },
    { id = "CastleW2bTagged", logic = function() return true end },
    { id = "CastleW3aTagged", logic = function() return true end },
    { id = "CastleW3bTagged", logic = function() return true end },
    { id = "CastleW4aTagged", logic = function() return true end },
    { id = "CastleW4bTagged", logic = function() return true end },
    { id = "CastleW5aTagged", logic = function() return true end },
    { id = "CastleW5bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CastleWaterfall", logic = function() return true end },
    { dest = "CastleTree", logic = function() return (state.event("CastleTreeOpened") or state.CanPhase() or state.CanPhaseswim()) end, exitShuffleId="CastleMainToTree" },
    { dest = "CastleGraveyardPlatform", logic = function() return true end },
    { dest = "CastleVeryBottom", logic = function() return true end },
    { dest = "Library", logic = function() return (state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) end, exitShuffleId="CastleMainToLibraryStart" },
    { dest = "Ballroom", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.diddy()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CastleMainToBallroom" },
    { dest = "Tower", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.lanky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CastleMainToTower" },
    { dest = "Greenhouse", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.lanky()) or state.CanPhase() or state.ledgeclip() or state.CanSkew(true)) end, exitShuffleId="CastleMainToGreenhouse" },
    { dest = "TrashCan", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CastleMainToTrash" },
    { dest = "Shed", logic = function() return ((state.punch() and state.chunky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CastleMainToShed" },
    { dest = "Museum", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.chunky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CastleMainToMuseum" },
    { dest = "UpperCave", logic = function() return true end, exitShuffleId="CastleMainToUpper" },
    { dest = "CrankyCastle", logic = function() return state.crankyAccess() end },
    { dest = "Snide", logic = function() return state.snideAccess() end },
    { dest = "CastleBossLobby", logic = function() return (not settings.tns_location_rando()) end },
    { dest = "CastleBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: CastleVeryBottom  (Creepy Castle Very Bottom)
M.regions["CastleVeryBottom"] = {
  display_name = [[Creepy Castle Very Bottom]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleKasplatLowerLedge", logic = function() return (not settings.kasplat_rando()) end },
    { id = "CastleMainEnemy_NearLowCave", logic = function() return true end },
    { id = "CastleMainEnemy_PathToLowKasplat", logic = function() return true end },
    { id = "CastleMainEnemy_LowTnS", logic = function() return true end },
    { id = "KremKap_CastleMainEnemy_NearLowCave", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_PathToLowKasplat", logic = function() return state.camera() end },
    { id = "KremKap_CastleMainEnemy_LowTnS", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "LowerCave", logic = function() return true end, exitShuffleId="CastleMainToLower" },
    { dest = "CastleGraveyardPlatform", logic = function() return (state.climbing() or (state.monkey_maneuvers() and (state.diddy() or state.tiny()))) end },
    { dest = "CreepyCastleMain", logic = function() return (state.climbing() or (state.monkey_maneuvers() and (state.diddy() or state.tiny()))) end },
    { dest = "CastleBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: CastleGraveyardPlatform  (Creepy Graveyard Platform)
M.regions["CastleGraveyardPlatform"] = {
  display_name = [[Creepy Graveyard Platform]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return state.climbing() end },
    { dest = "CastleVeryBottom", logic = function() return true end },
  },
}

-- region: CastleBaboonBlast  (Castle Baboon Blast)
M.regions["CastleBaboonBlast"] = {
  display_name = [[Castle Baboon Blast]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "CastleTreeOpened", logic = function() return state.donkey() end },
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end },
  },
}

-- region: CastleWaterfall  (Castle Waterfall)
M.regions["CastleWaterfall"] = {
  display_name = [[Castle Waterfall]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end },
    { dest = "UpperCave", logic = function() return true end, exitShuffleId="CastleWaterfallToUpper" },
  },
}

-- region: CastleTree  (Castle Tree)
M.regions["CastleTree"] = {
  display_name = [[Castle Tree]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleDonkeyTree", logic = function() return (((state.scope() and state.coconut()) or state.generalclips() or state.CanPhase()) and state.donkey()) end },
    { id = "CastleKasplatTree", logic = function() return ((not settings.kasplat_rando()) and (state.coconut() or state.CanPhase() or state.generalclips()) and state.donkey()) end },
    { id = "CastleBananaFairyTree", logic = function() return (state.camera() and state.swim() and (((state.coconut() or state.generalclips()) and state.donkey()) or state.CanPhase())) end },
    { id = "CastleTreeEnemy_StartRoom0", logic = function() return true end },
    { id = "CastleTreeEnemy_StartRoom1", logic = function() return true end },
    { id = "KremKap_CastleTreeEnemy_StartRoom0", logic = function() return state.camera() end },
    { id = "KremKap_CastleTreeEnemy_StartRoom1", logic = function() return state.camera() end },
    { id = "Balloon099", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleTreeToMain" },
    { dest = "CastleTreePastPunch", logic = function() return ((state.punch() and state.chunky()) or state.CanPhase()) end },
    { dest = "CreepyCastleMain", logic = function() return ((((state.coconut() and state.swim()) or state.generalclips()) and state.donkey()) or state.CanPhase()) end, exitShuffleId="CastleTreeDrainToMain" },
  },
}

-- region: CastleTreePastPunch  (Castle Tree Past Punch)
M.regions["CastleTreePastPunch"] = {
  display_name = [[Castle Tree Past Punch]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleChunkyTree", logic = function() return ((((state.scope() or state.hard_shooting()) and state.pineapple() and state.chunky()) or state.CanPhase()) and (state.chunky() or settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "Balloon100", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "CastleTree", logic = function() return true end },
  },
}

-- region: Library  (Library)
M.regions["Library"] = {
  display_name = [[Library]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleLibraryEnemy_ForkLeft0", logic = function() return true end },
    { id = "CastleLibraryEnemy_ForkLeft1", logic = function() return true end },
    { id = "CastleLibraryEnemy_ForkCenter", logic = function() return true end },
    { id = "CastleLibraryEnemy_ForkRight", logic = function() return true end },
    { id = "KremKap_CastleLibraryEnemy_ForkLeft0", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_ForkLeft1", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_ForkCenter", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_ForkRight", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleLibraryStartToMain" },
    { dest = "LibraryPastSlam", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) or state.CanPhase() or state.ledgeclip()) end },
    { dest = "CreepyCastleMain", logic = function() return (state.CanPhase() or state.ledgeclip()) end, exitShuffleId="CastleLibraryEndToMain", isGlitchTransition=true },
  },
}

-- region: LibraryPastSlam  (Library Middle)
M.regions["LibraryPastSlam"] = {
  display_name = [[Library Middle]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "KremKap_CastleLibraryEnemy_Corridor00", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_Corridor01", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_Corridor02", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_Corridor03", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_Corridor04", logic = function() return state.camera() end },
    { id = "KremKap_CastleLibraryEnemy_Corridor05", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "Library", logic = function() return true end },
    { dest = "LibraryPastBooks", logic = function() return ((state.donkey() and state.strongKong()) or state.CanPhase() or state.ledgeclip()) end },
  },
}

-- region: LibraryPastBooks  (Library Rear)
M.regions["LibraryPastBooks"] = {
  display_name = [[Library Rear]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleDonkeyLibrary", logic = function() return (state.donkey() or settings.free_trade_items()) end },
  },
  events = {
  },
  exits = {
    { dest = "LibraryPastSlam", logic = function() return ((state.donkey() and state.strongKong()) or state.CanPhase()) end },
    { dest = "CreepyCastleMain", logic = function() return (state.donkey() and state.coconut()) end, exitShuffleId="CastleLibraryEndToMain" },
  },
}

-- region: Ballroom  (Ballroom)
M.regions["Ballroom"] = {
  display_name = [[Ballroom]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleDiddyBallroom", logic = function() return (state.jetpack() and state.diddy()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CastleBallroomEnemy_Start", logic = function() return true end },
    { id = "KremKap_CastleBallroomEnemy_Start", logic = function() return state.camera() end },
    { id = "Balloon083", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleBallroomToMain" },
    { dest = "MuseumBehindGlass", logic = function() return (state.monkeyport() and state.tiny()) end, exitShuffleId="CastleBallroomToMuseum" },
  },
}

-- region: MuseumBehindGlass  (Museum Behind Glass)
M.regions["MuseumBehindGlass"] = {
  display_name = [[Museum Behind Glass]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleBananaFairyBallroom", logic = function() return state.camera() end },
    { id = "Balloon092", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "Ballroom", logic = function() return (state.monkeyport() and state.tiny()) end, exitShuffleId="CastleMuseumToBallroom" },
    { dest = "CastleTinyRace", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase()) end, exitShuffleId="CastleMuseumToCarRace" },
    { dest = "Museum", logic = function() return state.CanPhase() end },
  },
}

-- region: CastleTinyRace  (Castle Tiny Race)
M.regions["CastleTinyRace"] = {
  display_name = [[Castle Tiny Race]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleTinyCarRace", logic = function() return state.HasEnoughRaceCoins("CastleTinyRace", "tiny", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "MuseumBehindGlass", logic = function() return true end, exitShuffleId="CastleRaceToMuseum" },
  },
}

-- region: Tower  (Tower)
M.regions["Tower"] = {
  display_name = [[Tower]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleLankyTower", logic = function() return ((state.scope() or (state.hard_shooting() and state.homing())) and state.balloon() and state.grape() and state.lanky()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "Balloon088", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleTowerToMain" },
  },
}

-- region: Greenhouse  (Greenhouse)
M.regions["Greenhouse"] = {
  display_name = [[Greenhouse]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleLankyGreenhouse", logic = function() return (state.lanky() or settings.free_trade_items()) end },
    { id = "CastleBattleArena", logic = function() return ((not settings.crown_placement_rando()) and (state.lanky() or settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleGreenhouseStartToMain" },
    { dest = "CreepyCastleMain", logic = function() return (state.lanky() or settings.free_trade_items()) end, exitShuffleId="CastleGreenhouseEndToMain" },
  },
}

-- region: TrashCan  (Trash Can)
M.regions["TrashCan"] = {
  display_name = [[Trash Can]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleTinyTrashCan", logic = function() return ((state.tiny() and (state.saxophone() or (state.feather() and (state.homing() or state.hard_shooting())))) or (settings.free_trade_items() and (state.HasInstrument("any") or (state.HasGun("any") and (state.homing() or state.hard_shooting()))))) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleTrashToMain" },
  },
}

-- region: Shed  (Shed)
M.regions["Shed"] = {
  display_name = [[Shed]],
  hint_region  = "CastleSurroundings",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleChunkyShed", logic = function() return ((state.punch() or state.CanPhase()) and ((state.gorillaGone() and state.pineapple()) or state.triangle()) and state.chunky()) end },
    { id = "BreakableCastleShed", logic = function() return (state.chunky() and state.punch()) end },
    { id = "Balloon101", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleShedToMain" },
  },
}

-- region: Museum  (Museum)
M.regions["Museum"] = {
  display_name = [[Museum]],
  hint_region  = "CastleRooms",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleChunkyMuseum", logic = function() return ((state.punch() and state.chunky() and state.barrels()) or (state.CanPhase() and (state.chunky() or settings.free_trade_items()))) end },
    { id = "CastleMuseumEnemy_MainFloor0", logic = function() return true end },
    { id = "CastleMuseumEnemy_MainFloor1", logic = function() return true end },
    { id = "CastleMuseumEnemy_MainFloor2", logic = function() return true end },
    { id = "CastleMuseumEnemy_MainFloor3", logic = function() return true end },
    { id = "CastleMuseumEnemy_Start", logic = function() return true end },
    { id = "KremKap_CastleMuseumEnemy_MainFloor0", logic = function() return state.camera() end },
    { id = "KremKap_CastleMuseumEnemy_MainFloor1", logic = function() return state.camera() end },
    { id = "KremKap_CastleMuseumEnemy_MainFloor2", logic = function() return state.camera() end },
    { id = "KremKap_CastleMuseumEnemy_MainFloor3", logic = function() return state.camera() end },
    { id = "KremKap_CastleMuseumEnemy_Start", logic = function() return state.camera() end },
    { id = "HoldableBoulderMuseum", logic = function() return (state.barrels() and state.chunky() and (state.punch() or state.CanPhase())) end },
    { id = "Balloon093", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleMuseumToMain" },
    { dest = "MuseumBehindGlass", logic = function() return state.CanPhase() end },
  },
}

-- region: LowerCave  (Lower Cave)
M.regions["LowerCave"] = {
  display_name = [[Lower Cave]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleKasplatCrypt", logic = function() return (not settings.kasplat_rando()) end },
    { id = "MelonCrate_Location12", logic = function() return true end },
    { id = "CastleLowCaveEnemy_NearCrypt", logic = function() return true end },
    { id = "CastleLowCaveEnemy_StairRight", logic = function() return true end },
    { id = "CastleLowCaveEnemy_StairLeft", logic = function() return true end },
    { id = "CastleLowCaveEnemy_NearMausoleum", logic = function() return true end },
    { id = "CastleLowCaveEnemy_NearFunky", logic = function() return true end },
    { id = "CastleLowCaveEnemy_NearTag", logic = function() return true end },
    { id = "KremKap_CastleLowCaveEnemy_NearCrypt", logic = function() return state.camera() end },
    { id = "KremKap_CastleLowCaveEnemy_StairRight", logic = function() return state.camera() end },
    { id = "KremKap_CastleLowCaveEnemy_StairLeft", logic = function() return state.camera() end },
    { id = "KremKap_CastleLowCaveEnemy_NearMausoleum", logic = function() return state.camera() end },
    { id = "KremKap_CastleLowCaveEnemy_NearFunky", logic = function() return state.camera() end },
    { id = "KremKap_CastleLowCaveEnemy_NearTag", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "CastleVeryBottom", logic = function() return true end, exitShuffleId="CastleLowerToMain" },
    { dest = "Crypt", logic = function() return ((state.coconut() and state.donkey()) or (state.peanut() and state.diddy()) or (state.pineapple() and state.chunky()) or state.CanPhase() or state.ledgeclip() or state.checkBarrier("castle_crypt_doors")) end, exitShuffleId="CastleLowerToCrypt" },
    { dest = "Mausoleum", logic = function() return ((state.grape() and state.lanky()) or (state.feather() and state.tiny()) or state.CanPhase() or state.checkBarrier("castle_crypt_doors")) end, exitShuffleId="CastleLowerToMausoleum" },
    { dest = "FunkyCastle", logic = function() return state.funkyAccess() end },
    { dest = "CastleBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: Crypt  (Crypt)
M.regions["Crypt"] = {
  display_name = [[Crypt]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleCryptEnemy_Fork", logic = function() return true end },
    { id = "CastleCryptEnemy_NearDiddy", logic = function() return true end },
    { id = "CastleCryptEnemy_NearChunky", logic = function() return true end },
    { id = "KremKap_CastleCryptEnemy_Fork", logic = function() return state.camera() end },
    { id = "KremKap_CastleCryptEnemy_NearDiddy", logic = function() return state.camera() end },
    { id = "KremKap_CastleCryptEnemy_NearChunky", logic = function() return state.camera() end },
  },
  events = {
    { id = "CryptW1aTagged", logic = function() return true end },
    { id = "CryptW1bTagged", logic = function() return true end },
    { id = "CryptW2aTagged", logic = function() return true end },
    { id = "CryptW2bTagged", logic = function() return true end },
    { id = "CryptW3aTagged", logic = function() return true end },
    { id = "CryptW3bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "LowerCave", logic = function() return true end, exitShuffleId="CastleCryptToLower" },
    { dest = "CryptDonkeyRoom", logic = function() return ((state.coconut() and state.donkey()) or state.checkBarrier("castle_crypt_doors") or state.CanPhase() or state.generalclips()) end },
    { dest = "CryptDiddyRoom", logic = function() return ((state.peanut() and state.diddy()) or state.checkBarrier("castle_crypt_doors") or state.CanPhase() or state.generalclips()) end },
    { dest = "CryptChunkyRoom", logic = function() return ((state.pineapple() and state.chunky()) or state.checkBarrier("castle_crypt_doors") or state.CanPhase() or state.generalclips()) end },
  },
}

-- region: CryptDonkeyRoom  (Crypt Donkey Room)
M.regions["CryptDonkeyRoom"] = {
  display_name = [[Crypt Donkey Room]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleCryptEnemy_MinecartEntry", logic = function() return true end },
    { id = "KremKap_CastleCryptEnemy_MinecartEntry", logic = function() return state.camera() end },
    { id = "Balloon091", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
  },
  exits = {
    { dest = "Crypt", logic = function() return true end },
    { dest = "CastleMinecarts", logic = function() return ((state.grab() and state.donkey()) or state.generalclips() or state.CanPhase()) end, exitShuffleId="CastleCryptToCarts" },
  },
}

-- region: CryptDiddyRoom  (Crypt Diddy Room)
M.regions["CryptDiddyRoom"] = {
  display_name = [[Crypt Diddy Room]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleDiddyCrypt", logic = function() return (state.charge() and state.diddy()) end },
    { id = "CastleCryptEnemy_DiddyCoffin0", logic = function() return (state.diddy() and state.charge()) end },
    { id = "CastleCryptEnemy_DiddyCoffin1", logic = function() return (state.diddy() and state.charge()) end },
    { id = "CastleCryptEnemy_DiddyCoffin2", logic = function() return (state.diddy() and state.charge()) end },
    { id = "CastleCryptEnemy_DiddyCoffin3", logic = function() return (state.diddy() and state.charge()) end },
    { id = "KremKap_CastleCryptEnemy_DiddyCoffin0", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
    { id = "KremKap_CastleCryptEnemy_DiddyCoffin1", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
    { id = "KremKap_CastleCryptEnemy_DiddyCoffin2", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
    { id = "KremKap_CastleCryptEnemy_DiddyCoffin3", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
    { id = "Balloon090", logic = function() return (state.diddy() and state.peanut() and state.charge()) end },
  },
  events = {
  },
  exits = {
    { dest = "Crypt", logic = function() return true end },
  },
}

-- region: CryptChunkyRoom  (Crypt Chunky Room)
M.regions["CryptChunkyRoom"] = {
  display_name = [[Crypt Chunky Room]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleChunkyCrypt", logic = function() return ((state.punch() and state.chunky()) or ((state.chunky() or settings.free_trade_items()) and (state.CanPhase() or state.generalclips()))) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CastleCryptEnemy_ChunkyCoffin0", logic = function() return (state.chunky() and state.Slam()) end },
    { id = "CastleCryptEnemy_ChunkyCoffin1", logic = function() return (state.chunky() and state.Slam()) end },
    { id = "CastleCryptEnemy_ChunkyCoffin2", logic = function() return (state.chunky() and state.Slam()) end },
    { id = "CastleCryptEnemy_ChunkyCoffin3", logic = function() return (state.chunky() and state.Slam()) end },
    { id = "KremKap_CastleCryptEnemy_ChunkyCoffin0", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
    { id = "KremKap_CastleCryptEnemy_ChunkyCoffin1", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
    { id = "KremKap_CastleCryptEnemy_ChunkyCoffin2", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
    { id = "KremKap_CastleCryptEnemy_ChunkyCoffin3", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
  },
  events = {
  },
  exits = {
    { dest = "Crypt", logic = function() return true end },
  },
}

-- region: CastleMinecarts  (Castle Minecarts)
M.regions["CastleMinecarts"] = {
  display_name = [[Castle Minecarts]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleDonkeyMinecarts", logic = function() return state.HasEnoughRaceCoins("CastleMinecarts", "donkey", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "CryptDonkeyRoom", logic = function() return true end, exitShuffleId="CastleCartsToCrypt" },
  },
}

-- region: Mausoleum  (Mausoleum)
M.regions["Mausoleum"] = {
  display_name = [[Mausoleum]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleLankyMausoleum", logic = function() return ((((state.grape() and state.sprint()) or state.generalclips() or state.CanPhase()) and ((state.trombone() and state.can_use_vines()) or (state.monkey_maneuvers() and state.sprint())) and state.lanky()) or (settings.free_trade_items() and state.CanPhase())) end },
    { id = "CastleTinyMausoleum", logic = function() return (state.CanSlamSwitch("CreepyCastle", 3) and state.twirl() and state.tiny()) end },
    { id = "CastleMausoleumEnemy_TinyPath", logic = function() return true end },
    { id = "CastleMausoleumEnemy_LankyPath0", logic = function() return true end },
    { id = "CastleMausoleumEnemy_LankyPath1", logic = function() return true end },
    { id = "KremKap_CastleMausoleumEnemy_TinyPath", logic = function() return state.camera() end },
    { id = "KremKap_CastleMausoleumEnemy_LankyPath0", logic = function() return state.camera() end },
    { id = "KremKap_CastleMausoleumEnemy_LankyPath1", logic = function() return state.camera() end },
    { id = "Balloon089", logic = function() return (state.lanky() and state.grape() and (state.sprint() or state.generalclips() or state.CanPhase())) end },
  },
  events = {
  },
  exits = {
    { dest = "LowerCave", logic = function() return true end, exitShuffleId="CastleMausoleumToLower" },
  },
}

-- region: UpperCave  (Upper Cave)
M.regions["UpperCave"] = {
  display_name = [[Upper Cave]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = -1,
  locations = {
    { id = "CastleTinyOverChasm", logic = function() return ((state.twirl() or state.CanPhase()) and state.tiny()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CastleKasplatNearCandy", logic = function() return (not settings.kasplat_rando()) end },
    { id = "CastleUpperCaveEnemy_NearDungeon", logic = function() return true end },
    { id = "CastleUpperCaveEnemy_NearPit", logic = function() return true end },
    { id = "CastleUpperCaveEnemy_NearEntrance", logic = function() return true end },
    { id = "KremKap_CastleUpperCaveEnemy_NearDungeon", logic = function() return state.camera() end },
    { id = "KremKap_CastleUpperCaveEnemy_NearPit", logic = function() return state.camera() end },
    { id = "KremKap_CastleUpperCaveEnemy_NearEntrance", logic = function() return state.camera() end },
    { id = "KremKap_CastleUpperCaveEnemy_Pit", logic = function() return state.camera() end },
    { id = "Balloon102", logic = function() return (state.diddy() and state.peanut()) end },
    { id = "Balloon103", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "CreepyCastleMain", logic = function() return true end, exitShuffleId="CastleUpperToMain" },
    { dest = "CastleWaterfall", logic = function() return true end, exitShuffleId="CastleUpperToWaterfall" },
    { dest = "Dungeon", logic = function() return true end, exitShuffleId="CastleUpperToDungeon" },
    { dest = "CandyCastle", logic = function() return state.candyAccess() end },
    { dest = "CastleBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: Dungeon  (Dungeon)
M.regions["Dungeon"] = {
  display_name = [[Dungeon]],
  hint_region  = "CastleUnderground",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleDonkeyDungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or (state.Slam() and state.CanPhase())) and state.donkey()) end },
    { id = "CastleDiddyDungeon", logic = function() return ((state.CanPhase() and (state.diddy() or settings.free_trade_items())) or (state.CanSlamSwitch("CreepyCastle", 3) and state.diddy() and (state.can_use_vines() and ((state.scope() and state.peanut() and state.diddy()) or state.CanMoontail())))) end },
    { id = "CastleLankyDungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.trombone() and state.balloon() and state.lanky()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CastleDungeonEnemy_FaceRoom", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) or state.CanPhase()) end },
    { id = "CastleDungeonEnemy_ChairRoom", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.diddy()) or state.CanPhase()) end },
    { id = "CastleDungeonEnemy_OutsideLankyRoom", logic = function() return true end },
    { id = "KremKap_CastleDungeonEnemy_FaceRoom", logic = function() return (state.camera() and ((state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) or state.CanPhase())) end },
    { id = "KremKap_CastleDungeonEnemy_ChairRoom", logic = function() return (state.camera() and ((state.CanSlamSwitch("CreepyCastle", 3) and state.diddy()) or state.CanPhase())) end },
    { id = "KremKap_CastleDungeonEnemy_OutsideLankyRoom", logic = function() return state.camera() end },
    { id = "Balloon094", logic = function() return (state.diddy() and state.peanut() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase())) end },
    { id = "Balloon095", logic = function() return (state.lanky() and state.grape() and state.trombone() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase())) end },
    { id = "Balloon096", logic = function() return (state.chunky() and state.pineapple() and state.punch()) end },
    { id = "Balloon097", logic = function() return (state.lanky() and state.grape() and state.trombone() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.balloon()) end },
    { id = "Balloon098", logic = function() return (state.chunky() and state.pineapple() and state.punch()) end },
  },
  events = {
  },
  exits = {
    { dest = "UpperCave", logic = function() return true end, exitShuffleId="CastleDungeonToUpper" },
  },
}

-- region: CastleBossLobby  (Castle Boss Lobby)
M.regions["CastleBossLobby"] = {
  display_name = [[Castle Boss Lobby]],
  hint_region  = "Bosses",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CastleBoss", logic = function() return state.IsBossReachable("CreepyCastle") end },
  },
}

-- region: CastleBoss  (Castle Boss)
M.regions["CastleBoss"] = {
  display_name = [[Castle Boss]],
  hint_region  = "Bosses",
  level        = "CreepyCastle",
  deathwarp    = nil,
  locations = {
    { id = "CastleKey", logic = function() return state.IsBossBeatable("CreepyCastle") end },
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