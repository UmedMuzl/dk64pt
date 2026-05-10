-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/CrystalCaves.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: CrystalCavesMedals  (Crystal Caves Medals)
M.regions["CrystalCavesMedals"] = {
  display_name = [[Crystal Caves Medals]],
  hint_region  = "CavesCBs",
  level        = "CrystalCaves",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "CavesDonkeyMedal", logic = function() return (state.cb("CrystalCaves", "donkey") >= settings.medal_cb_req_level(5)) end },
    { id = "CavesDiddyMedal", logic = function() return (state.cb("CrystalCaves", "diddy") >= settings.medal_cb_req_level(5)) end },
    { id = "CavesLankyMedal", logic = function() return (state.cb("CrystalCaves", "lanky") >= settings.medal_cb_req_level(5)) end },
    { id = "CavesTinyMedal", logic = function() return (state.cb("CrystalCaves", "tiny") >= settings.medal_cb_req_level(5)) end },
    { id = "CavesChunkyMedal", logic = function() return (state.cb("CrystalCaves", "chunky") >= settings.medal_cb_req_level(5)) end },
    { id = "CavesDonkeyHalfMedal", logic = function() return (state.cb("CrystalCaves", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
    { id = "CavesDiddyHalfMedal", logic = function() return (state.cb("CrystalCaves", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
    { id = "CavesLankyHalfMedal", logic = function() return (state.cb("CrystalCaves", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
    { id = "CavesTinyHalfMedal", logic = function() return (state.cb("CrystalCaves", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
    { id = "CavesChunkyHalfMedal", logic = function() return (state.cb("CrystalCaves", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: CrystalCavesEntryHandler  (Crystal Caves Entry Handler)
M.regions["CrystalCavesEntryHandler"] = {
  display_name = [[Crystal Caves Entry Handler]],
  hint_region  = "Error",
  level        = "CreepyCastle",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "CavesEntered", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesLobby", logic = function() return true end, exitShuffleId="CavesToIsles" },
    { dest = "CrystalCavesMain", logic = function() return true end },
  },
}

-- region: CrystalCavesMain  (Crystal Caves Main)
M.regions["CrystalCavesMain"] = {
  display_name = [[Crystal Caves Main]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDiddyJetpackBarrel", logic = function() return ((state.jetpack() and state.diddy()) or ((not settings.shuffle_shops()) and state.monkey_maneuvers() and ((state.donkey() and (not state.isKrushaAdjacent("donkey"))) or (state.tiny() and state.twirl())) and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "CavesKasplatNearLab", logic = function() return (not settings.kasplat_rando()) end },
    { id = "CavesMainEnemy_Start", logic = function() return true end },
    { id = "CavesMainEnemy_NearIceCastle", logic = function() return true end },
    { id = "CavesMainEnemy_NearFunky", logic = function() return true end },
    { id = "CavesMainEnemy_NearBonusRoom", logic = function() return true end },
    { id = "CavesMainEnemy_NearSnide", logic = function() return true end },
    { id = "KremKap_CavesMainEnemy_Start", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_NearIceCastle", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_NearFunky", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_NearBonusRoom", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_NearSnide", logic = function() return state.camera() end },
    { id = "HoldableBoulderCavesSmall", logic = function() return (state.barrels() and state.chunky()) end },
    { id = "Balloon070", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "CavesSmallBoulderButton", logic = function() return (state.chunky() and state.barrels()) end },
    { id = "CavesW1aTagged", logic = function() return true end },
    { id = "CavesW2aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CavesGGRoom", logic = function() return (state.hasMoveSwitchsanity("CavesGoneCave", false) or state.CanPhase() or state.CanPhaseswim() or state.checkBarrier("caves_ice_walls")) end },
    { dest = "CavesBlueprintCave", logic = function() return ((state.mini() and state.twirl() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end },
    { dest = "CavesBonusCave", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end },
    { dest = "CavesBlueprintPillar", logic = function() return ((state.jetpack() and state.diddy()) or (state.monkey_maneuvers() and ((state.balloon() and state.lanky()) or ((not settings.shuffle_shops()) and state.twirl() and state.tiny())))) end },
    { dest = "CavesBananaportSpire", logic = function() return ((state.jetpack() and state.diddy()) or state.monkey_maneuvers()) end },
    { dest = "BoulderCave", logic = function() return (state.hasMoveSwitchsanity("CavesBoulderCave", false) or state.CanSkew(true) or state.checkBarrier("caves_ice_walls")) end },
    { dest = "CavesLankyRace", logic = function() return ((state.CanSlamSwitch("CrystalCaves", 2) and (state.balloon() or state.monkey_maneuvers()) and state.lanky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesMainToRace" },
    { dest = "FrozenCastle", logic = function() return ((state.CanSlamSwitch("CrystalCaves", 2) and state.lanky()) or state.CanSkew(true)) end, exitShuffleId="CavesMainToCastle" },
    { dest = "IglooArea", logic = function() return true end },
    { dest = "CabinArea", logic = function() return true end },
    { dest = "FunkyCaves", logic = function() return state.funkyAccess() end },
    { dest = "CrankyCaves", logic = function() return state.crankyAccess() end },
    { dest = "CavesSnideArea", logic = function() return (state.hasMoveSwitchsanity("CavesSnideCave", false) or state.CanPhase() or state.CanPhaseswim() or state.checkBarrier("caves_ice_walls")) end },
    { dest = "CavesBossLobby", logic = function() return ((not settings.tns_location_rando()) and (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase() or state.CanPhaseswim() or state.checkBarrier("caves_ice_walls"))) end },
    { dest = "CavesBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: CavesGGRoom  (Caves GG Room)
M.regions["CavesGGRoom"] = {
  display_name = [[Caves GG Room]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesChunkyGorillaGone", logic = function() return (state.gorillaGone() and state.chunky()) end },
    { id = "Balloon074", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
  },
}

-- region: CavesSnideArea  (Caves Snide Area)
M.regions["CavesSnideArea"] = {
  display_name = [[Caves Snide Area]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "Balloon071", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "Snide", logic = function() return state.snideAccess() end },
    { dest = "CrystalCavesMain", logic = function() return true end },
    { dest = "CavesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: CavesBlueprintCave  (Caves Blueprint Cave)
M.regions["CavesBlueprintCave"] = {
  display_name = [[Caves Blueprint Cave]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesKasplatNearFunky", logic = function() return (not settings.kasplat_rando()) end },
    { id = "Balloon077", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
    { id = "CavesMonkeyportAccess", logic = function() return (state.tiny() and state.monkeyport()) end },
    { id = "CavesW4bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end },
  },
}

-- region: CavesBonusCave  (Caves Bonus Cave)
M.regions["CavesBonusCave"] = {
  display_name = [[Caves Bonus Cave]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesTinyCaveBarrel", logic = function() return (state.tiny() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "Balloon076", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
    { id = "CavesW3bTagged", logic = function() return state.special_loc("CavesTinyCaveBarrel") end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end },
  },
}

-- region: CavesBlueprintPillar  (Caves Blueprint Pillar)
M.regions["CavesBlueprintPillar"] = {
  display_name = [[Caves Blueprint Pillar]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesKasplatPillar", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
    { id = "CavesW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
  },
}

-- region: CavesBananaportSpire  (Caves Bananaport Spire)
M.regions["CavesBananaportSpire"] = {
  display_name = [[Caves Bananaport Spire]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "CavesW4aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
  },
}

-- region: CavesBaboonBlast  (Caves Baboon Blast)
M.regions["CavesBaboonBlast"] = {
  display_name = [[Caves Baboon Blast]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDonkeyBaboonBlast", logic = function() return state.donkey() end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
  },
}

-- region: BoulderCave  (Boulder Cave)
M.regions["BoulderCave"] = {
  display_name = [[Boulder Cave]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "HoldableBoulderCavesLarge", logic = function() return (state.barrels() and state.chunky() and state.hunkyChunky() and state.event("CavesSmallBoulderButton")) end },
    { id = "Balloon078", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "CavesLargeBoulderButton", logic = function() return (state.event("CavesSmallBoulderButton") and state.hunkyChunky() and state.chunky() and state.barrels()) end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
    { dest = "CavesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: CavesLankyRace  (Caves Lanky Race)
M.regions["CavesLankyRace"] = {
  display_name = [[Caves Lanky Race]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesLankyBeetleRace", logic = function() return (state.sprint() and state.HasEnoughRaceCoins("CavesLankyRace", "lanky", true)) end },
  },
  events = {
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end, exitShuffleId="CavesRaceToMain" },
  },
}

-- region: FrozenCastle  (Frozen Castle)
M.regions["FrozenCastle"] = {
  display_name = [[Frozen Castle]],
  hint_region  = "MainCaves",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesLankyCastle", logic = function() return (state.Slam() and (state.lanky() or (settings.free_trade_items() and (state.diddy() or state.tiny() or state.chunky() or state.superSlam())))) end },
    { id = "KremKap_CavesNPC_IceTomato", logic = function() return state.camera() end },
    { id = "Balloon086", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end, exitShuffleId="CavesCastleToMain" },
  },
}

-- region: IglooArea  (Igloo Area)
M.regions["IglooArea"] = {
  display_name = [[Igloo Area]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesTinyMonkeyportIgloo", logic = function() return (((state.event("CavesMonkeyportAccess") or state.CanPhaseswim()) and state.tiny()) or (state.CanPhaseswim() and settings.free_trade_items())) end },
    { id = "CavesChunkyTransparentIgloo", logic = function() return (((state.event("CavesLargeBoulderButton") or state.generalclips() or state.CanPhaseswim()) and state.chunky()) or ((state.generalclips() or state.CanPhaseswim()) and settings.free_trade_items())) end },
    { id = "CavesKasplatOn5DI", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
    { id = "CavesW1bTagged", logic = function() return true end },
    { id = "CavesW3aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
    { dest = "GiantKosha", logic = function() return (state.event("CavesLargeBoulderButton") and state.monkeyport() and state.tiny()) end },
    { dest = "DonkeyIgloo", logic = function() return (((state.checkBarrier("caves_igloo_pads") or (state.jetpack() and state.diddy())) and (state.bongos() and state.donkey())) or state.CanPhaseswim() or state.CanPhase()) end, exitShuffleId="CavesIglooToDonkey" },
    { dest = "DiddyIgloo", logic = function() return (((state.checkBarrier("caves_igloo_pads") or (state.jetpack() and state.diddy())) and (state.guitar() and state.diddy())) or state.CanPhaseswim() or state.CanPhase()) end, exitShuffleId="CavesIglooToDiddy" },
    { dest = "LankyIgloo", logic = function() return (((state.checkBarrier("caves_igloo_pads") or (state.jetpack() and state.diddy())) and (state.trombone() and state.lanky())) or state.CanPhaseswim() or state.CanPhase()) end, exitShuffleId="CavesIglooToLanky" },
    { dest = "TinyIgloo", logic = function() return (((state.checkBarrier("caves_igloo_pads") or (state.jetpack() and state.diddy())) and (state.saxophone() and state.tiny())) or state.CanPhaseswim() or state.CanPhase()) end, exitShuffleId="CavesIglooToTiny" },
    { dest = "ChunkyIgloo", logic = function() return (((state.checkBarrier("caves_igloo_pads") or (state.jetpack() and state.diddy())) and (state.triangle() and state.chunky())) or state.CanPhaseswim() or state.CanPhase()) end, exitShuffleId="CavesIglooToChunky" },
    { dest = "CavesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: GiantKosha  (Giant Kosha)
M.regions["GiantKosha"] = {
  display_name = [[Giant Kosha]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = -1,
  locations = {
    { id = "RainbowCoin_Location10", logic = function() return true end },
  },
  events = {
    { id = "GiantKoshaDefeated", logic = function() return (state.shockwave() or state.HasInstrument("any")) end },
  },
  exits = {
  },
}

-- region: DonkeyIgloo  (Donkey Igloo)
M.regions["DonkeyIgloo"] = {
  display_name = [[Donkey Igloo]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDonkey5DoorIgloo", logic = function() return ((state.strongKong() and state.donkey()) or state.CanMoonkick()) end },
    { id = "Caves5DIDKEnemy_Right", logic = function() return true end },
    { id = "Caves5DIDKEnemy_Left", logic = function() return true end },
    { id = "KremKap_Caves5DIDKEnemy_Right", logic = function() return state.camera() end },
    { id = "KremKap_Caves5DIDKEnemy_Left", logic = function() return state.camera() end },
    { id = "Balloon081", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
  },
  exits = {
    { dest = "IglooArea", logic = function() return true end, exitShuffleId="CavesDonkeyToIgloo" },
  },
}

-- region: DiddyIgloo  (Diddy Igloo)
M.regions["DiddyIgloo"] = {
  display_name = [[Diddy Igloo]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDiddy5DoorIgloo", logic = function() return ((state.diddy() or settings.free_trade_items()) and state.barrels()) end },
    { id = "Balloon087", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
  },
  exits = {
    { dest = "IglooArea", logic = function() return true end, exitShuffleId="CavesDiddyToIgloo" },
  },
}

-- region: LankyIgloo  (Lanky Igloo)
M.regions["LankyIgloo"] = {
  display_name = [[Lanky Igloo]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  locations = {
    { id = "CavesLanky5DoorIgloo", logic = function() return (((state.balloon() or state.monkey_maneuvers()) and state.lanky()) or (settings.free_trade_items() and state.monkey_maneuvers() and (state.diddy() or state.tiny()))) end },
    { id = "Balloon080", logic = function() return (state.lanky() and state.grape() and (state.balloon() or state.monkey_maneuvers())) end },
  },
  events = {
  },
  exits = {
    { dest = "IglooArea", logic = function() return true end, exitShuffleId="CavesLankyToIgloo" },
  },
}

-- region: TinyIgloo  (Tiny Igloo)
M.regions["TinyIgloo"] = {
  display_name = [[Tiny Igloo]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = -1,
  locations = {
    { id = "CavesTiny5DoorIgloo", logic = function() return (state.Slam() and state.tiny()) end },
    { id = "CavesBananaFairyIgloo", logic = function() return (state.Slam() and state.tiny() and state.camera()) end },
    { id = "Caves5DITinyEnemy_BigEnemy", logic = function() return true end },
    { id = "KremKap_Caves5DITinyEnemy_BigEnemy", logic = function() return state.camera() end },
    { id = "Balloon079", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "IglooArea", logic = function() return true end, exitShuffleId="CavesTinyToIgloo" },
  },
}

-- region: ChunkyIgloo  (Chunky Igloo)
M.regions["ChunkyIgloo"] = {
  display_name = [[Chunky Igloo]],
  hint_region  = "Igloo",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesChunky5DoorIgloo", logic = function() return (state.chunky() or settings.free_trade_items()) end },
    { id = "Balloon085", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
    { id = "KilledRabbit", logic = function() return true end },
  },
  exits = {
    { dest = "IglooArea", logic = function() return true end, exitShuffleId="CavesChunkyToIgloo" },
  },
}

-- region: CabinArea  (Cabin Area)
M.regions["CabinArea"] = {
  display_name = [[Cabin Area]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesKasplatNearCandy", logic = function() return (not settings.kasplat_rando()) end },
    { id = "CavesMainEnemy_Outside5DC", logic = function() return true end },
    { id = "CavesMainEnemy_1DCWaterfall", logic = function() return true end },
    { id = "CavesMainEnemy_1DCHeadphones", logic = function() return true end },
    { id = "KremKap_CavesMainEnemy_Outside5DC", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_1DCWaterfall", logic = function() return state.camera() end },
    { id = "KremKap_CavesMainEnemy_1DCHeadphones", logic = function() return state.camera() end },
    { id = "Balloon072", logic = function() return (state.tiny() and state.feather()) end },
    { id = "Balloon073", logic = function() return (state.lanky() and state.grape()) end },
    { id = "Balloon075", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "CavesW2bTagged", logic = function() return true end },
    { id = "CavesW5bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "CrystalCavesMain", logic = function() return true end },
    { dest = "CavesRotatingCabinRoof", logic = function() return ((state.diddy() and state.jetpack()) or state.CanMoonkick() or ((state.diddy() or state.tiny() or (state.lanky() and (not state.isKrushaAdjacent("lanky")))) and state.monkey_maneuvers()) or state.CanPhase()) end },
    { dest = "RotatingCabin", logic = function() return ((state.bongos() and state.donkey()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToRotating" },
    { dest = "DonkeyCabin", logic = function() return ((state.bongos() and state.donkey()) or state.CanPhase() or state.CanSkew(true) or state.generalclips()) end, exitShuffleId="CavesCabinToDonkey" },
    { dest = "DiddyLowerCabin", logic = function() return ((state.guitar() and state.diddy()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToDiddyLower" },
    { dest = "DiddyUpperCabin", logic = function() return ((state.guitar() and state.diddy()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToDiddyUpper" },
    { dest = "CavesSprintCabinRoof", logic = function() return ((state.diddy() and state.jetpack()) or (state.lanky() and state.balloon()) or state.CanMoonkick() or state.CanPhase()) end },
    { dest = "LankyCabin", logic = function() return ((state.trombone() and state.balloon() and state.lanky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToLanky" },
    { dest = "TinyCabin", logic = function() return ((state.saxophone() and state.tiny()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToTiny" },
    { dest = "ChunkyCabin", logic = function() return ((state.triangle() and state.chunky()) or state.CanPhase() or state.CanSkew(true)) end, exitShuffleId="CavesCabinToChunky" },
    { dest = "CandyCaves", logic = function() return state.candyAccess() end },
  },
}

-- region: CavesSprintCabinRoof  (Caves Sprint Cabin Roof)
M.regions["CavesSprintCabinRoof"] = {
  display_name = [[Caves Sprint Cabin Roof]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end },
    { dest = "CavesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: CavesRotatingCabinRoof  (Caves Rotating Cabin Roof)
M.regions["CavesRotatingCabinRoof"] = {
  display_name = [[Caves Rotating Cabin Roof]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end },
    { dest = "CavesBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: RotatingCabin  (Rotating Cabin)
M.regions["RotatingCabin"] = {
  display_name = [[Rotating Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDonkeyRotatingCabin", logic = function() return ((state.Slam() and state.donkey()) or state.CanMoonkick()) end },
    { id = "CavesBattleArena", logic = function() return ((not settings.crown_placement_rando()) and state.Slam() and state.donkey()) end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesRotatingToCabin" },
  },
}

-- region: DonkeyCabin  (Donkey Cabin)
M.regions["DonkeyCabin"] = {
  display_name = [[Donkey Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDonkey5DoorCabin", logic = function() return ((state.homing() or state.hard_shooting()) and (state.HasGun("donkey") or state.adv_orange_usage() or (settings.free_trade_items() and state.HasGun("any")))) end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesDonkeyToCabin" },
  },
}

-- region: DiddyLowerCabin  (Diddy Lower Cabin)
M.regions["DiddyLowerCabin"] = {
  display_name = [[Diddy Lower Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDiddy5DoorCabinLower", logic = function() return (state.diddy() and state.oranges() and (state.jetpack() or state.monkey_maneuvers())) end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesDiddyLowerToCabin" },
  },
}

-- region: DiddyUpperCabin  (Diddy Upper Cabin)
M.regions["DiddyUpperCabin"] = {
  display_name = [[Diddy Upper Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesDiddy5DoorCabinUpper", logic = function() return ((state.guitar() or state.oranges()) and (state.spring() or (state.CanMoontail() and (not state.cabinBarrelMoved()))) and state.jetpack() and state.diddy()) end },
    { id = "CavesBananaFairyCabin", logic = function() return (state.camera() and (state.guitar() or state.oranges()) and (state.spring() or (state.CanMoontail() and (not state.cabinBarrelMoved()))) and state.jetpack() and state.diddy()) end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesDiddyUpperToCabin" },
  },
}

-- region: LankyCabin  (Lanky Cabin)
M.regions["LankyCabin"] = {
  display_name = [[Lanky Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = -1,
  locations = {
    { id = "CavesLanky1DoorCabin", logic = function() return (state.sprint() and state.balloon() and state.lanky()) end },
    { id = "Caves1DCEnemy_Near", logic = function() return true end },
    { id = "KremKap_Caves1DCEnemy_Near", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesLankyToCabin" },
  },
}

-- region: TinyCabin  (Tiny Cabin)
M.regions["TinyCabin"] = {
  display_name = [[Tiny Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesTiny5DoorCabin", logic = function() return ((state.tiny() or settings.free_trade_items()) and state.oranges()) end },
    { id = "Balloon084", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesTinyToCabin" },
  },
}

-- region: ChunkyCabin  (Chunky Cabin)
M.regions["ChunkyCabin"] = {
  display_name = [[Chunky Cabin]],
  hint_region  = "Cabins",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesChunky5DoorCabin", logic = function() return (state.gorillaGone() and state.Slam() and state.chunky()) end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "CabinArea", logic = function() return true end, exitShuffleId="CavesChunkyToCabin" },
  },
}

-- region: CavesBossLobby  (Caves Boss Lobby)
M.regions["CavesBossLobby"] = {
  display_name = [[Caves Boss Lobby]],
  hint_region  = "Bosses",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "CavesBoss", logic = function() return state.IsBossReachable("CrystalCaves") end },
  },
}

-- region: CavesBoss  (Caves Boss)
M.regions["CavesBoss"] = {
  display_name = [[Caves Boss]],
  hint_region  = "Bosses",
  level        = "CrystalCaves",
  deathwarp    = nil,
  locations = {
    { id = "CavesKey", logic = function() return state.IsBossBeatable("CrystalCaves") end },
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