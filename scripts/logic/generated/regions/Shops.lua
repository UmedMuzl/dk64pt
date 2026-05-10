-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/Shops.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: FunkyGeneric  (Funky Generic)
M.regions["FunkyGeneric"] = {
  display_name = [[Funky Generic]],
  hint_region  = "Error",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
  },
}

-- region: FunkyJapes  (Funky Japes)
M.regions["FunkyJapes"] = {
  display_name = [[Funky Japes]],
  hint_region  = "JapesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedJapesGun", logic = function() return state.CanBuy("SharedJapesGun") end },
    { id = "CoconutGun", logic = function() return (state.donkey() and state.CanBuy("CoconutGun")) end },
    { id = "PeanutGun", logic = function() return (state.diddy() and state.CanBuy("PeanutGun")) end },
    { id = "GrapeGun", logic = function() return (state.lanky() and state.CanBuy("GrapeGun")) end },
    { id = "FeatherGun", logic = function() return (state.tiny() and state.CanBuy("FeatherGun")) end },
    { id = "PineappleGun", logic = function() return (state.chunky() and state.CanBuy("PineappleGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyAztec  (Funky Aztec)
M.regions["FunkyAztec"] = {
  display_name = [[Funky Aztec]],
  hint_region  = "AztecShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedAztecGun", logic = function() return state.CanBuy("SharedAztecGun") end },
    { id = "DonkeyAztecGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyAztecGun")) end },
    { id = "DiddyAztecGun", logic = function() return (state.diddy() and state.CanBuy("DiddyAztecGun")) end },
    { id = "LankyAztecGun", logic = function() return (state.lanky() and state.CanBuy("LankyAztecGun")) end },
    { id = "TinyAztecGun", logic = function() return (state.tiny() and state.CanBuy("TinyAztecGun")) end },
    { id = "ChunkyAztecGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyAztecGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyFactory  (Funky Factory)
M.regions["FunkyFactory"] = {
  display_name = [[Funky Factory]],
  hint_region  = "FactoryShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "AmmoBelt1", logic = function() return state.CanBuy("AmmoBelt1") end },
    { id = "DonkeyFactoryGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyFactoryGun")) end },
    { id = "DiddyFactoryGun", logic = function() return (state.diddy() and state.CanBuy("DiddyFactoryGun")) end },
    { id = "LankyFactoryGun", logic = function() return (state.lanky() and state.CanBuy("LankyFactoryGun")) end },
    { id = "TinyFactoryGun", logic = function() return (state.tiny() and state.CanBuy("TinyFactoryGun")) end },
    { id = "ChunkyFactoryGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyFactoryGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyGalleon  (Funky Galleon)
M.regions["FunkyGalleon"] = {
  display_name = [[Funky Galleon]],
  hint_region  = "GalleonShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedGalleonGun", logic = function() return state.CanBuy("SharedGalleonGun") end },
    { id = "DonkeyGalleonGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonGun")) end },
    { id = "DiddyGalleonGun", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonGun")) end },
    { id = "LankyGalleonGun", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonGun")) end },
    { id = "TinyGalleonGun", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonGun")) end },
    { id = "ChunkyGalleonGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyForest  (Funky Forest)
M.regions["FunkyForest"] = {
  display_name = [[Funky Forest]],
  hint_region  = "ForestShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "HomingAmmo", logic = function() return state.CanBuy("HomingAmmo") end },
    { id = "DonkeyForestGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyForestGun")) end },
    { id = "DiddyForestGun", logic = function() return (state.diddy() and state.CanBuy("DiddyForestGun")) end },
    { id = "LankyForestGun", logic = function() return (state.lanky() and state.CanBuy("LankyForestGun")) end },
    { id = "TinyForestGun", logic = function() return (state.tiny() and state.CanBuy("TinyForestGun")) end },
    { id = "ChunkyForestGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyForestGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyCaves  (Funky Caves)
M.regions["FunkyCaves"] = {
  display_name = [[Funky Caves]],
  hint_region  = "CavesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "AmmoBelt2", logic = function() return state.CanBuy("AmmoBelt2") end },
    { id = "DonkeyCavesGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesGun")) end },
    { id = "DiddyCavesGun", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesGun")) end },
    { id = "LankyCavesGun", logic = function() return (state.lanky() and state.CanBuy("LankyCavesGun")) end },
    { id = "TinyCavesGun", logic = function() return (state.tiny() and state.CanBuy("TinyCavesGun")) end },
    { id = "ChunkyCavesGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyCavesGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: FunkyCastle  (Funky Castle)
M.regions["FunkyCastle"] = {
  display_name = [[Funky Castle]],
  hint_region  = "CastleShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SniperSight", logic = function() return state.CanBuy("SniperSight") end },
    { id = "DonkeyCastleGun", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastleGun")) end },
    { id = "DiddyCastleGun", logic = function() return (state.diddy() and state.CanBuy("DiddyCastleGun")) end },
    { id = "LankyCastleGun", logic = function() return (state.lanky() and state.CanBuy("LankyCastleGun")) end },
    { id = "TinyCastleGun", logic = function() return (state.tiny() and state.CanBuy("TinyCastleGun")) end },
    { id = "ChunkyCastleGun", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastleGun")) end },
  },
  events = {
  },
  exits = {
    { dest = "FunkyGeneric", logic = function() return false end },
  },
}

-- region: CandyGeneric  (Candy Generic)
M.regions["CandyGeneric"] = {
  display_name = [[Candy Generic]],
  hint_region  = "Error",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
  },
}

-- region: CandyAztec  (Candy Aztec)
M.regions["CandyAztec"] = {
  display_name = [[Candy Aztec]],
  hint_region  = "AztecShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedAztecInstrument", logic = function() return state.CanBuy("SharedAztecInstrument") end },
    { id = "Bongos", logic = function() return (state.donkey() and state.CanBuy("Bongos")) end },
    { id = "Guitar", logic = function() return (state.diddy() and state.CanBuy("Guitar")) end },
    { id = "Trombone", logic = function() return (state.lanky() and state.CanBuy("Trombone")) end },
    { id = "Saxophone", logic = function() return (state.tiny() and state.CanBuy("Saxophone")) end },
    { id = "Triangle", logic = function() return (state.chunky() and state.CanBuy("Triangle")) end },
  },
  events = {
  },
  exits = {
    { dest = "CandyGeneric", logic = function() return false end },
  },
}

-- region: CandyFactory  (Candy Factory)
M.regions["CandyFactory"] = {
  display_name = [[Candy Factory]],
  hint_region  = "FactoryShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedFactoryInstrument", logic = function() return state.CanBuy("SharedFactoryInstrument") end },
    { id = "DonkeyFactoryInstrument", logic = function() return (state.donkey() and state.CanBuy("DonkeyFactoryInstrument")) end },
    { id = "DiddyFactoryInstrument", logic = function() return (state.diddy() and state.CanBuy("DiddyFactoryInstrument")) end },
    { id = "LankyFactoryInstrument", logic = function() return (state.lanky() and state.CanBuy("LankyFactoryInstrument")) end },
    { id = "TinyFactoryInstrument", logic = function() return (state.tiny() and state.CanBuy("TinyFactoryInstrument")) end },
    { id = "ChunkyFactoryInstrument", logic = function() return (state.chunky() and state.CanBuy("ChunkyFactoryInstrument")) end },
  },
  events = {
  },
  exits = {
    { dest = "CandyGeneric", logic = function() return false end },
  },
}

-- region: CandyGalleon  (Candy Galleon)
M.regions["CandyGalleon"] = {
  display_name = [[Candy Galleon]],
  hint_region  = "GalleonShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "MusicUpgrade1", logic = function() return state.CanBuy("MusicUpgrade1") end },
    { id = "DonkeyGalleonInstrument", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonInstrument")) end },
    { id = "DiddyGalleonInstrument", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonInstrument")) end },
    { id = "LankyGalleonInstrument", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonInstrument")) end },
    { id = "TinyGalleonInstrument", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonInstrument")) end },
    { id = "ChunkyGalleonInstrument", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonInstrument")) end },
  },
  events = {
  },
  exits = {
    { dest = "CandyGeneric", logic = function() return false end },
  },
}

-- region: CandyCaves  (Candy Caves)
M.regions["CandyCaves"] = {
  display_name = [[Candy Caves]],
  hint_region  = "CavesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "ThirdMelon", logic = function() return state.CanBuy("ThirdMelon") end },
    { id = "DonkeyCavesInstrument", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesInstrument")) end },
    { id = "DiddyCavesInstrument", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesInstrument")) end },
    { id = "LankyCavesInstrument", logic = function() return (state.lanky() and state.CanBuy("LankyCavesInstrument")) end },
    { id = "TinyCavesInstrument", logic = function() return (state.tiny() and state.CanBuy("TinyCavesInstrument")) end },
    { id = "ChunkyCavesInstrument", logic = function() return (state.chunky() and state.CanBuy("ChunkyCavesInstrument")) end },
  },
  events = {
  },
  exits = {
    { dest = "CandyGeneric", logic = function() return false end },
  },
}

-- region: CandyCastle  (Candy Castle)
M.regions["CandyCastle"] = {
  display_name = [[Candy Castle]],
  hint_region  = "CastleShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "MusicUpgrade2", logic = function() return state.CanBuy("MusicUpgrade2") end },
    { id = "DonkeyCastleInstrument", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastleInstrument")) end },
    { id = "DiddyCastleInstrument", logic = function() return (state.diddy() and state.CanBuy("DiddyCastleInstrument")) end },
    { id = "LankyCastleInstrument", logic = function() return (state.lanky() and state.CanBuy("LankyCastleInstrument")) end },
    { id = "TinyCastleInstrument", logic = function() return (state.tiny() and state.CanBuy("TinyCastleInstrument")) end },
    { id = "ChunkyCastleInstrument", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastleInstrument")) end },
  },
  events = {
  },
  exits = {
    { dest = "CandyGeneric", logic = function() return false end },
  },
}

-- region: CrankyGeneric  (Cranky Generic)
M.regions["CrankyGeneric"] = {
  display_name = [[Cranky Generic]],
  hint_region  = "Jetpac",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "RarewareCoin", logic = function() return state.CanGetRarewareCoin() end },
  },
  events = {
  },
  exits = {
  },
}

-- region: CrankyJapes  (Cranky Japes)
M.regions["CrankyJapes"] = {
  display_name = [[Cranky Japes]],
  hint_region  = "JapesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedJapesPotion", logic = function() return state.CanBuy("SharedJapesPotion") end },
    { id = "BaboonBlast", logic = function() return (state.donkey() and state.CanBuy("BaboonBlast")) end },
    { id = "ChimpyCharge", logic = function() return (state.diddy() and state.CanBuy("ChimpyCharge")) end },
    { id = "Orangstand", logic = function() return (state.lanky() and state.CanBuy("Orangstand")) end },
    { id = "MiniMonkey", logic = function() return (state.tiny() and state.CanBuy("MiniMonkey")) end },
    { id = "HunkyChunky", logic = function() return (state.chunky() and state.CanBuy("HunkyChunky")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyAztec  (Cranky Aztec)
M.regions["CrankyAztec"] = {
  display_name = [[Cranky Aztec]],
  hint_region  = "AztecShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedAztecPotion", logic = function() return state.CanBuy("SharedAztecPotion") end },
    { id = "StrongKong", logic = function() return (state.donkey() and state.CanBuy("StrongKong")) end },
    { id = "RocketbarrelBoost", logic = function() return (state.diddy() and state.CanBuy("RocketbarrelBoost")) end },
    { id = "LankyAztecPotion", logic = function() return (state.lanky() and state.CanBuy("LankyAztecPotion")) end },
    { id = "TinyAztecPotion", logic = function() return (state.tiny() and state.CanBuy("TinyAztecPotion")) end },
    { id = "ChunkyAztecPotion", logic = function() return (state.chunky() and state.CanBuy("ChunkyAztecPotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyFactory  (Cranky Factory)
M.regions["CrankyFactory"] = {
  display_name = [[Cranky Factory]],
  hint_region  = "FactoryShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedFactoryPotion", logic = function() return state.CanBuy("SharedFactoryPotion") end },
    { id = "GorillaGrab", logic = function() return (state.donkey() and state.CanBuy("GorillaGrab")) end },
    { id = "SimianSpring", logic = function() return (state.diddy() and state.CanBuy("SimianSpring")) end },
    { id = "BaboonBalloon", logic = function() return (state.lanky() and state.CanBuy("BaboonBalloon")) end },
    { id = "PonyTailTwirl", logic = function() return (state.tiny() and state.CanBuy("PonyTailTwirl")) end },
    { id = "PrimatePunch", logic = function() return (state.chunky() and state.CanBuy("PrimatePunch")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyGalleon  (Cranky Galleon)
M.regions["CrankyGalleon"] = {
  display_name = [[Cranky Galleon]],
  hint_region  = "GalleonShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedGalleonPotion", logic = function() return state.CanBuy("SharedGalleonPotion") end },
    { id = "DonkeyGalleonPotion", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonPotion")) end },
    { id = "DiddyGalleonPotion", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonPotion")) end },
    { id = "LankyGalleonPotion", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonPotion")) end },
    { id = "TinyGalleonPotion", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonPotion")) end },
    { id = "ChunkyGalleonPotion", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonPotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyForest  (Cranky Forest)
M.regions["CrankyForest"] = {
  display_name = [[Cranky Forest]],
  hint_region  = "ForestShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SuperSimianSlam", logic = function() return state.CanBuy("SuperSimianSlam") end },
    { id = "DonkeyForestPotion", logic = function() return (state.donkey() and state.CanBuy("DonkeyForestPotion")) end },
    { id = "DiddyForestPotion", logic = function() return (state.diddy() and state.CanBuy("DiddyForestPotion")) end },
    { id = "LankyForestPotion", logic = function() return (state.lanky() and state.CanBuy("LankyForestPotion")) end },
    { id = "TinyForestPotion", logic = function() return (state.tiny() and state.CanBuy("TinyForestPotion")) end },
    { id = "ChunkyForestPotion", logic = function() return (state.chunky() and state.CanBuy("ChunkyForestPotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyCaves  (Cranky Caves)
M.regions["CrankyCaves"] = {
  display_name = [[Cranky Caves]],
  hint_region  = "CavesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SharedCavesPotion", logic = function() return state.CanBuy("SharedCavesPotion") end },
    { id = "OrangstandSprint", logic = function() return (state.lanky() and state.CanBuy("OrangstandSprint")) end },
    { id = "Monkeyport", logic = function() return (state.tiny() and state.CanBuy("Monkeyport")) end },
    { id = "GorillaGone", logic = function() return (state.chunky() and state.CanBuy("GorillaGone")) end },
    { id = "DonkeyCavesPotion", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesPotion")) end },
    { id = "DiddyCavesPotion", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesPotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyCastle  (Cranky Castle)
M.regions["CrankyCastle"] = {
  display_name = [[Cranky Castle]],
  hint_region  = "CastleShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SuperDuperSimianSlam", logic = function() return state.CanBuy("SuperDuperSimianSlam") end },
    { id = "DonkeyCastlePotion", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastlePotion")) end },
    { id = "DiddyCastlePotion", logic = function() return (state.diddy() and state.CanBuy("DiddyCastlePotion")) end },
    { id = "LankyCastlePotion", logic = function() return (state.lanky() and state.CanBuy("LankyCastlePotion")) end },
    { id = "TinyCastlePotion", logic = function() return (state.tiny() and state.CanBuy("TinyCastlePotion")) end },
    { id = "ChunkyCastlePotion", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastlePotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: CrankyIsles  (Cranky Isles)
M.regions["CrankyIsles"] = {
  display_name = [[Cranky Isles]],
  hint_region  = "IslesShops",
  level        = "Shops",
  deathwarp    = nil,
  locations = {
    { id = "SimianSlam", logic = function() return state.CanBuy("SimianSlam") end },
    { id = "DonkeyIslesPotion", logic = function() return (state.donkey() and state.CanBuy("DonkeyIslesPotion")) end },
    { id = "DiddyIslesPotion", logic = function() return (state.diddy() and state.CanBuy("DiddyIslesPotion")) end },
    { id = "LankyIslesPotion", logic = function() return (state.lanky() and state.CanBuy("LankyIslesPotion")) end },
    { id = "TinyIslesPotion", logic = function() return (state.tiny() and state.CanBuy("TinyIslesPotion")) end },
    { id = "ChunkyIslesPotion", logic = function() return (state.chunky() and state.CanBuy("ChunkyIslesPotion")) end },
  },
  events = {
  },
  exits = {
    { dest = "CrankyGeneric", logic = function() return true end },
  },
}

-- region: Snide  (Snide)
M.regions["Snide"] = {
  display_name = [[Snide]],
  hint_region  = "Snide",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "SnideFirstGroup", logic = function() return true end },
    { dest = "SnideSecondGroup", logic = function() return true end },
    { dest = "SnideThirdGroup", logic = function() return true end },
    { dest = "SnideFourthGroup", logic = function() return true end },
    { dest = "SnideLastGroup", logic = function() return true end },
  },
}

-- region: SnideFirstGroup  (Snide First Group)
M.regions["SnideFirstGroup"] = {
  display_name = [[Snide First Group]],
  hint_region  = "SnideFirstGroup",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
    { id = "TurnInJungleJapesDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(1) end },
    { id = "TurnInJungleJapesDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(2) end },
    { id = "TurnInJungleJapesLankyBlueprint", logic = function() return state.CanGetBlueprintReward(3) end },
    { id = "TurnInJungleJapesTinyBlueprint", logic = function() return state.CanGetBlueprintReward(4) end },
    { id = "TurnInJungleJapesChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(5) end },
    { id = "TurnInAngryAztecDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(6) end },
    { id = "TurnInAngryAztecDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(7) end },
    { id = "TurnInAngryAztecLankyBlueprint", logic = function() return state.CanGetBlueprintReward(8) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: SnideSecondGroup  (Snide Second Group)
M.regions["SnideSecondGroup"] = {
  display_name = [[Snide Second Group]],
  hint_region  = "SnideSecondGroup",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
    { id = "TurnInAngryAztecTinyBlueprint", logic = function() return state.CanGetBlueprintReward(9) end },
    { id = "TurnInAngryAztecChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(10) end },
    { id = "TurnInFranticFactoryDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(11) end },
    { id = "TurnInFranticFactoryDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(12) end },
    { id = "TurnInFranticFactoryLankyBlueprint", logic = function() return state.CanGetBlueprintReward(13) end },
    { id = "TurnInFranticFactoryTinyBlueprint", logic = function() return state.CanGetBlueprintReward(14) end },
    { id = "TurnInFranticFactoryChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(15) end },
    { id = "TurnInGloomyGalleonDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(16) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: SnideThirdGroup  (Snide Third Group)
M.regions["SnideThirdGroup"] = {
  display_name = [[Snide Third Group]],
  hint_region  = "SnideThirdGroup",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
    { id = "TurnInGloomyGalleonDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(17) end },
    { id = "TurnInGloomyGalleonLankyBlueprint", logic = function() return state.CanGetBlueprintReward(18) end },
    { id = "TurnInGloomyGalleonTinyBlueprint", logic = function() return state.CanGetBlueprintReward(19) end },
    { id = "TurnInGloomyGalleonChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(20) end },
    { id = "TurnInFungiForestDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(21) end },
    { id = "TurnInFungiForestDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(22) end },
    { id = "TurnInFungiForestLankyBlueprint", logic = function() return state.CanGetBlueprintReward(23) end },
    { id = "TurnInFungiForestTinyBlueprint", logic = function() return state.CanGetBlueprintReward(24) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: SnideFourthGroup  (Snide Fourth Group)
M.regions["SnideFourthGroup"] = {
  display_name = [[Snide Fourth Group]],
  hint_region  = "SnideFourthGroup",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
    { id = "TurnInFungiForestChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(25) end },
    { id = "TurnInCrystalCavesDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(26) end },
    { id = "TurnInCrystalCavesDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(27) end },
    { id = "TurnInCrystalCavesLankyBlueprint", logic = function() return state.CanGetBlueprintReward(28) end },
    { id = "TurnInCrystalCavesTinyBlueprint", logic = function() return state.CanGetBlueprintReward(29) end },
    { id = "TurnInCrystalCavesChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(30) end },
    { id = "TurnInCreepyCastleDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(31) end },
    { id = "TurnInCreepyCastleDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(32) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: SnideLastGroup  (Snide Last Group)
M.regions["SnideLastGroup"] = {
  display_name = [[Snide Last Group]],
  hint_region  = "SnideLastGroup",
  level        = "Snide",
  deathwarp    = nil,
  locations = {
    { id = "TurnInCreepyCastleLankyBlueprint", logic = function() return state.CanGetBlueprintReward(33) end },
    { id = "TurnInCreepyCastleTinyBlueprint", logic = function() return state.CanGetBlueprintReward(34) end },
    { id = "TurnInCreepyCastleChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(35) end },
    { id = "TurnInDKIslesDonkeyBlueprint", logic = function() return state.CanGetBlueprintReward(36) end },
    { id = "TurnInDKIslesDiddyBlueprint", logic = function() return state.CanGetBlueprintReward(37) end },
    { id = "TurnInDKIslesLankyBlueprint", logic = function() return state.CanGetBlueprintReward(38) end },
    { id = "TurnInDKIslesTinyBlueprint", logic = function() return state.CanGetBlueprintReward(39) end },
    { id = "TurnInDKIslesChunkyBlueprint", logic = function() return state.CanGetBlueprintReward(40) end },
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