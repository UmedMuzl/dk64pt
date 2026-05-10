-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/FungiForest.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: FungiForestMedals  (Fungi Forest Medals)
M.regions["FungiForestMedals"] = {
  display_name = [[Fungi Forest Medals]],
  hint_region  = "ForestCBs",
  level        = "FungiForest",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "ForestDonkeyMedal", logic = function() return (state.cb("FungiForest", "donkey") >= settings.medal_cb_req_level(4)) end },
    { id = "ForestDiddyMedal", logic = function() return (state.cb("FungiForest", "diddy") >= settings.medal_cb_req_level(4)) end },
    { id = "ForestLankyMedal", logic = function() return (state.cb("FungiForest", "lanky") >= settings.medal_cb_req_level(4)) end },
    { id = "ForestTinyMedal", logic = function() return (state.cb("FungiForest", "tiny") >= settings.medal_cb_req_level(4)) end },
    { id = "ForestChunkyMedal", logic = function() return (state.cb("FungiForest", "chunky") >= settings.medal_cb_req_level(4)) end },
    { id = "ForestDonkeyHalfMedal", logic = function() return (state.cb("FungiForest", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
    { id = "ForestDiddyHalfMedal", logic = function() return (state.cb("FungiForest", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
    { id = "ForestLankyHalfMedal", logic = function() return (state.cb("FungiForest", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
    { id = "ForestTinyHalfMedal", logic = function() return (state.cb("FungiForest", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
    { id = "ForestChunkyHalfMedal", logic = function() return (state.cb("FungiForest", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: FungiForestEntryHandler  (Fungi Forest Entry Handler)
M.regions["FungiForestEntryHandler"] = {
  display_name = [[Fungi Forest Entry Handler]],
  hint_region  = "Error",
  level        = "FungiForest",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "ForestEntered", logic = function() return true end },
  },
  exits = {
    { dest = "FungiForestLobby", logic = function() return true end, exitShuffleId="ForestToIsles" },
    { dest = "FungiForestStart", logic = function() return true end },
  },
}

-- region: FungiForestStart  (Fungi Forest Start)
M.regions["FungiForestStart"] = {
  display_name = [[Fungi Forest Start]],
  hint_region  = "ForestCenterAndBeanstalk",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestMainEnemy_NearAppleDropoff", logic = function() return true end },
    { id = "ForestMainEnemy_NearDKPortal", logic = function() return true end },
    { id = "ForestMainEnemy_NearWellTag", logic = function() return true end },
    { id = "ForestMainEnemy_GreenTunnel", logic = function() return (state.checkBarrier("forest_green_tunnel") or state.hasMoveSwitchsanity("FungiGreenFeather", false)) end },
    { id = "KremKap_ForestMainEnemy_NearAppleDropoff", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearDKPortal", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearWellTag", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_GreenTunnel", logic = function() return (state.camera() and (state.checkBarrier("forest_green_tunnel") or state.hasMoveSwitchsanity("FungiGreenFeather", false))) end },
  },
  events = {
    { id = "Night", logic = function() return ((settings.shuffled_location_types_contains("FungiTime") and state.nightAccess()) or ((not settings.shuffled_location_types_contains("FungiTime")) and (state.cannons() or (state.diddy() and state.jetpack()) or state.climbing()) and (state.HasGun("any") or state.adv_orange_usage() or (((settings.fungi_time_internal() == "night") or (settings.fungi_time_internal() == "dusk") or (settings.fungi_time_internal() == "progressive")) and state.nightAccess())))) end },
    { id = "Day", logic = function() return ((settings.shuffled_location_types_contains("FungiTime") and state.dayAccess()) or ((not settings.shuffled_location_types_contains("FungiTime")) and (state.cannons() or (state.diddy() and state.jetpack()) or state.climbing()) and (state.HasGun("any") or state.adv_orange_usage() or (((settings.fungi_time_internal() == "day") or (settings.fungi_time_internal() == "dusk") or (settings.fungi_time_internal() == "progressive")) and state.dayAccess())))) end },
    { id = "WormGatesOpened", logic = function() return (state.checkBarrier("forest_green_tunnel") or (state.hasMoveSwitchsanity("FungiGreenFeather", false) and state.hasMoveSwitchsanity("FungiGreenPineapple", false))) end },
    { id = "ForestW1aTagged", logic = function() return true end },
    { id = "ForestW2aTagged", logic = function() return true end },
    { id = "ForestW3aTagged", logic = function() return true end },
    { id = "ForestW4aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "ForestMinecarts", logic = function() return (state.Slam() and state.chunky()) end },
    { dest = "GiantMushroomArea", logic = function() return true end },
    { dest = "MillArea", logic = function() return true end },
    { dest = "WormArea", logic = function() return (state.event("WormGatesOpened") or state.CanPhase() or state.CanPhaseswim()) end },
  },
}

-- region: ForestMinecarts  (Forest Minecarts)
M.regions["ForestMinecarts"] = {
  display_name = [[Forest Minecarts]],
  hint_region  = "ForestCenterAndBeanstalk",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestChunkyMinecarts", logic = function() return state.HasEnoughRaceCoins("ForestMinecarts", "chunky", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "FungiForestStart", logic = function() return true end },
  },
}

-- region: GiantMushroomArea  (Giant Mushroom Area)
M.regions["GiantMushroomArea"] = {
  display_name = [[Giant Mushroom Area]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestDiddyTopofMushroom", logic = function() return (state.jetpack() and state.diddy()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "ForestLankyRabbitRace", logic = function() return (state.CanOStandTBSNoclip() and state.spawn_snags()) end },
    { id = "ForestMainEnemy_YellowTunnel0", logic = function() return true end },
    { id = "ForestMainEnemy_NearLowWarp5", logic = function() return true end },
    { id = "ForestMainEnemy_NearPinkTunnelBounceTag", logic = function() return true end },
    { id = "ForestMainEnemy_NearGMRocketbarrel", logic = function() return true end },
    { id = "ForestMainEnemy_BetweenYellowTunnelAndRB", logic = function() return true end },
    { id = "ForestMainEnemy_NearCranky", logic = function() return true end },
    { id = "ForestMainEnemy_NearPinkTunnelGM", logic = function() return true end },
    { id = "ForestMainEnemy_GMRearTag", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_YellowTunnel0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearLowWarp5", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearPinkTunnelBounceTag", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearGMRocketbarrel", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_BetweenYellowTunnelAndRB", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearCranky", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearPinkTunnelGM", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_GMRearTag", logic = function() return state.camera() end },
  },
  events = {
    { id = "HollowTreeGateOpened", logic = function() return state.hasMoveSwitchsanity("FungiYellow", false) end },
    { id = "ForestW3bTagged", logic = function() return true end },
    { id = "ForestW5bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FungiForestStart", logic = function() return true end },
    { dest = "MushroomLower", logic = function() return true end, exitShuffleId="ForestMainToLowerMushroom" },
    { dest = "MushroomLowerExterior", logic = function() return ((state.jetpack() and state.diddy()) or (state.monkey_maneuvers() and state.twirl() and state.tiny()) or (state.climbing() and (state.donkey() or state.chunky()) and state.monkey_maneuvers())) end },
    { dest = "MushroomBlastLevelExterior", logic = function() return (state.jetpack() and state.diddy()) end },
    { dest = "MushroomUpperMidExterior", logic = function() return (state.jetpack() and state.diddy()) end },
    { dest = "MushroomUpperExterior", logic = function() return (state.jetpack() and state.diddy()) end },
    { dest = "MushroomNightExterior", logic = function() return (state.jetpack() and state.diddy()) end },
    { dest = "MushroomVeryTopExterior", logic = function() return (state.jetpack() and state.diddy()) end },
    { dest = "HollowTreeArea", logic = function() return (state.checkBarrier("forest_yellow_tunnel") or state.event("HollowTreeGateOpened") or state.CanPhaseswim() or state.CanPhase() or state.CanOStandTBSNoclip() or state.CanSkew(true)) end },
    { dest = "Anthill", logic = function() return state.CanSkew(true) end, exitShuffleId="ForestTreeToAnthill", isGlitchTransition=true },
    { dest = "CrankyForest", logic = function() return state.crankyAccess() end },
  },
}

-- region: MushroomLower  (Mushroom Lower)
M.regions["MushroomLower"] = {
  display_name = [[Mushroom Lower]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "Balloon068", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
    { id = "MushroomCannonsSpawned", logic = function() return (state.coconut() and state.peanut() and state.grape() and state.feather() and state.pineapple() and state.donkey() and state.diddy() and state.lanky() and state.tiny() and state.chunky() and state.cannons()) end },
    { id = "DonkeyMushroomSwitch", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and state.donkey()) end },
  },
  exits = {
    { dest = "MushroomLowerBetweenLadders", logic = function() return state.climbing() end },
    { dest = "GiantMushroomArea", logic = function() return true end, exitShuffleId="ForestLowerMushroomToMain" },
    { dest = "MushroomUpper", logic = function() return state.event("MushroomCannonsSpawned") end },
  },
}

-- region: MushroomLowerBetweenLadders  (Mushroom Lower Between Ladders)
M.regions["MushroomLowerBetweenLadders"] = {
  display_name = [[Mushroom Lower Between Ladders]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "MushroomLower", logic = function() return true end },
    { dest = "MushroomLowerMid", logic = function() return state.climbing() end },
  },
}

-- region: MushroomLowerMid  (Mushroom Lower Middle)
M.regions["MushroomLowerMid"] = {
  display_name = [[Mushroom Lower Middle]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestTinyMushroomBarrel", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and state.tiny() and state.climbing()) end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "MushroomLowerBetweenLadders", logic = function() return true end },
    { dest = "MushroomLowerExterior", logic = function() return true end, exitShuffleId="ForestLowerMushroomToLowerExterior" },
  },
}

-- region: MushroomUpperMidExterior  (Mushroom Upper Mid Exterior)
M.regions["MushroomUpperMidExterior"] = {
  display_name = [[Mushroom Upper Mid Exterior]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "GiantMushroomArea", logic = function() return true end },
    { dest = "MushroomBlastLevelExterior", logic = function() return true end },
    { dest = "MushroomMiddle", logic = function() return true end, exitShuffleId="ForestLowerExteriorToUpperMushroom" },
  },
}

-- region: MushroomBlastLevelExterior  (Mushroom Blast Level Exterior)
M.regions["MushroomBlastLevelExterior"] = {
  display_name = [[Mushroom Blast Level Exterior]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestMainEnemy_NearBBlast", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_NearBBlast", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomLowerExterior", logic = function() return true end },
    { dest = "MushroomUpperMidExterior", logic = function() return state.climbing() end },
    { dest = "ForestBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: MushroomLowerExterior  (Mushroom Lower Exterior)
M.regions["MushroomLowerExterior"] = {
  display_name = [[Mushroom Lower Exterior]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestKasplatLowerMushroomExterior", logic = function() return (not settings.kasplat_rando()) end },
    { id = "Balloon060", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "GiantMushroomArea", logic = function() return true end },
    { dest = "MushroomBlastLevelExterior", logic = function() return state.climbing() end },
    { dest = "MushroomLowerMid", logic = function() return true end, exitShuffleId="ForestLowerExteriorToLowerMushroom" },
  },
}

-- region: ForestBaboonBlast  (Forest Baboon Blast)
M.regions["ForestBaboonBlast"] = {
  display_name = [[Forest Baboon Blast]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestDonkeyBaboonBlast", logic = function() return state.donkey() end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "MushroomBlastLevelExterior", logic = function() return true end },
  },
}

-- region: MushroomMiddle  (Mushroom Middle)
M.regions["MushroomMiddle"] = {
  display_name = [[Mushroom Middle]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestKasplatInsideMushroom", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomLowerMid", logic = function() return true end },
    { dest = "MushroomUpperMid", logic = function() return state.climbing() end },
    { dest = "MushroomUpperMidExterior", logic = function() return true end, exitShuffleId="ForestUpperMushroomToLowerExterior" },
  },
}

-- region: MushroomUpperMid  (Mushroom Upper Middle)
M.regions["MushroomUpperMid"] = {
  display_name = [[Mushroom Upper Middle]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestGMEnemy_Path0", logic = function() return true end },
    { id = "ForestGMEnemy_Path1", logic = function() return true end },
    { id = "KremKap_ForestGMEnemy_Path0", logic = function() return state.camera() end },
    { id = "KremKap_ForestGMEnemy_Path1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomMiddle", logic = function() return true end },
    { dest = "MushroomUpperVineFloor", logic = function() return state.climbing() end },
    { dest = "MushroomNightDoor", logic = function() return state.can_use_vines() end },
  },
}

-- region: MushroomUpperVineFloor  (Mushroom Upper Vine Floor)
M.regions["MushroomUpperVineFloor"] = {
  display_name = [[Mushroom Upper Vine Floor]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestGMEnemy_AboveNightDoor", logic = function() return true end },
    { id = "KremKap_ForestGMEnemy_AboveNightDoor", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpper", logic = function() return state.climbing() end },
    { dest = "MushroomUpperMid", logic = function() return true end },
  },
}

-- region: MushroomUpper  (Mushroom Upper)
M.regions["MushroomUpper"] = {
  display_name = [[Mushroom Upper]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestDonkeyMushroomCannons", logic = function() return (state.event("MushroomCannonsSpawned") and state.event("DonkeyMushroomSwitch")) end },
    { id = "Balloon067", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpperVineFloor", logic = function() return true end },
    { dest = "MushroomUpperExterior", logic = function() return true end, exitShuffleId="ForestUpperMushroomToUpperExterior" },
  },
}

-- region: MushroomNightDoor  (Mushroom Night Door)
M.regions["MushroomNightDoor"] = {
  display_name = [[Mushroom Night Door]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpperMid", logic = function() return state.can_use_vines() end },
    { dest = "MushroomMiddle", logic = function() return true end },
    { dest = "MushroomNightExterior", logic = function() return true end, exitShuffleId="ForestNightToExterior", time="Time.Night" },
  },
}

-- region: MushroomNightExterior  (Mushroom Night Exterior)
M.regions["MushroomNightExterior"] = {
  display_name = [[Mushroom Night Exterior]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestKasplatUpperMushroomExterior", logic = function() return (not settings.kasplat_rando()) end },
    { id = "Balloon062", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomNightDoor", logic = function() return true end, exitShuffleId="ForestExteriorToNight", time="Time.Night" },
    { dest = "GiantMushroomArea", logic = function() return true end },
  },
}

-- region: MushroomUpperExterior  (Mushroom Upper Exterior)
M.regions["MushroomUpperExterior"] = {
  display_name = [[Mushroom Upper Exterior]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestBattleArena", logic = function() return ((not settings.crown_placement_rando()) and ((not state.IsHardFallDamage()) or (state.tiny() and state.twirl()) or (state.diddy() and state.jetpack()) or state.event("Night"))) end },
    { id = "ForestMainEnemy_NearFacePuzzle", logic = function() return true end },
    { id = "ForestMainEnemy_NearCrown", logic = function() return true end },
    { id = "ForestMainEnemy_NearHighWarp5", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_NearFacePuzzle", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearCrown", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearHighWarp5", logic = function() return state.camera() end },
  },
  events = {
    { id = "ForestW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "MushroomUpper", logic = function() return true end, exitShuffleId="ForestUpperExteriorToUpperMushroom" },
    { dest = "MushroomNightExterior", logic = function() return ((state.tiny() and state.twirl()) or (not state.IsHardFallDamage())) end },
    { dest = "GiantMushroomArea", logic = function() return true end },
    { dest = "MushroomVeryTopExterior", logic = function() return ((state.handstand() and state.lanky()) or (state.slope_resets() and state.diddy())) end },
    { dest = "MushroomChunkyRoom", logic = function() return ((state.CanSlamSwitch("FungiForest", 2) and state.chunky()) or state.CanPhase() or state.CanOStandTBSNoclip()) end, exitShuffleId="ForestExteriorToChunky" },
    { dest = "MushroomLankyZingersRoom", logic = function() return (state.event("LankyMushroomSlamSwitch") or state.CanOStandTBSNoclip()) end, exitShuffleId="ForestExteriorToZingers" },
    { dest = "MushroomLankyMushroomsRoom", logic = function() return (state.event("LankyMushroomSlamSwitch") or state.CanPhase() or state.CanOStandTBSNoclip()) end, exitShuffleId="ForestExteriorToMushrooms" },
    { dest = "ForestBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: MushroomVeryTopExterior  (Very Top of Mushroom)
M.regions["MushroomVeryTopExterior"] = {
  display_name = [[Very Top of Mushroom]],
  hint_region  = "MushroomExterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestMainEnemy_TopOfMushroom", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_TopOfMushroom", logic = function() return state.camera() end },
  },
  events = {
    { id = "LankyMushroomSlamSwitch", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and state.lanky()) end },
  },
  exits = {
    { dest = "MushroomUpperExterior", logic = function() return true end },
  },
}

-- region: MushroomChunkyRoom  (Mushroom Chunky Room)
M.regions["MushroomChunkyRoom"] = {
  display_name = [[Mushroom Chunky Room]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestChunkyFacePuzzle", logic = function() return (state.pineapple() and state.CanSlamSwitch("FungiForest", 2) and state.chunky()) end },
    { id = "ForestFacePuzzleEnemy_Enemy", logic = function() return true end },
    { id = "KremKap_ForestFacePuzzleEnemy_Enemy", logic = function() return state.camera() end },
    { id = "Balloon069", logic = function() return (state.chunky() and state.pineapple()) end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpperExterior", logic = function() return true end, exitShuffleId="ForestChunkyToExterior" },
  },
}

-- region: MushroomLankyZingersRoom  (Mushroom Lanky Zingers Room)
M.regions["MushroomLankyZingersRoom"] = {
  display_name = [[Mushroom Lanky Zingers Room]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestLankyZingers", logic = function() return (state.lanky() or settings.free_trade_items()) end },
    { id = "ForestLeapEnemy_Enemy0", logic = function() return true end },
    { id = "ForestLeapEnemy_Enemy1", logic = function() return true end },
    { id = "KremKap_ForestLeapEnemy_Enemy0", logic = function() return state.camera() end },
    { id = "KremKap_ForestLeapEnemy_Enemy1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpperExterior", logic = function() return true end, exitShuffleId="ForestZingersToExterior" },
  },
}

-- region: MushroomLankyMushroomsRoom  (Mushroom Lanky Mushrooms Room)
M.regions["MushroomLankyMushroomsRoom"] = {
  display_name = [[Mushroom Lanky Mushrooms Room]],
  hint_region  = "MushroomInterior",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestLankyColoredMushrooms", logic = function() return (state.Slam() and (state.lanky() or settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
  },
  events = {
  },
  exits = {
    { dest = "MushroomUpperExterior", logic = function() return true end, exitShuffleId="ForestMushroomsToExterior" },
  },
}

-- region: HollowTreeArea  (Hollow Tree Area)
M.regions["HollowTreeArea"] = {
  display_name = [[Hollow Tree Area]],
  hint_region  = "OwlTree",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestDiddyOwlRace", logic = function() return (state.TimeAccess("HollowTreeArea", "Night") and state.jetpack() and state.guitar() and state.diddy()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "ForestLankyRabbitRace", logic = function() return (state.TimeAccess("HollowTreeArea", "Day") and state.trombone() and state.sprint() and state.lanky()) end },
    { id = "ForestKasplatOwlTree", logic = function() return (not settings.kasplat_rando()) end },
    { id = "MelonCrate_Location08", logic = function() return true end },
    { id = "ForestMainEnemy_YellowTunnel1", logic = function() return true end },
    { id = "ForestMainEnemy_YellowTunnel2", logic = function() return true end },
    { id = "ForestMainEnemy_YellowTunnel3", logic = function() return true end },
    { id = "ForestMainEnemy_HollowTree0", logic = function() return true end },
    { id = "ForestMainEnemy_HollowTree1", logic = function() return true end },
    { id = "ForestMainEnemy_HollowTreeEntrance", logic = function() return true end },
    { id = "ForestMainEnemy_TreeMelonCrate0", logic = function() return true end },
    { id = "ForestMainEnemy_TreeMelonCrate1", logic = function() return true end },
    { id = "ForestMainEnemy_TreeMelonCrate2", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_YellowTunnel1", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_YellowTunnel2", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_YellowTunnel3", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_HollowTree0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_HollowTree1", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_HollowTreeEntrance", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_TreeMelonCrate0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_TreeMelonCrate1", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_TreeMelonCrate2", logic = function() return state.camera() end },
  },
  events = {
    { id = "ForestW4bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "GiantMushroomArea", logic = function() return (state.event("HollowTreeGateOpened") or state.CanPhase()) end },
    { dest = "Anthill", logic = function() return (state.mini() and state.saxophone() and state.tiny()) end, exitShuffleId="ForestTreeToAnthill" },
    { dest = "ForestBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: Anthill  (Anthill)
M.regions["Anthill"] = {
  display_name = [[Anthill]],
  hint_region  = "OwlTree",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestTinyAnthill", logic = function() return ((state.tiny() or settings.free_trade_items()) and (state.oranges() or state.saxophone() or (settings.free_trade_items() and state.HasInstrument("any")))) end },
    { id = "ForestBean", logic = function() return ((state.tiny() or settings.free_trade_items()) and (state.oranges() or state.saxophone() or (settings.free_trade_items() and state.HasInstrument("any")))) end },
    { id = "ForestAnthillEnemy_Gauntlet0", logic = function() return true end },
    { id = "ForestAnthillEnemy_Gauntlet1", logic = function() return true end },
    { id = "ForestAnthillEnemy_Gauntlet2", logic = function() return true end },
    { id = "ForestAnthillEnemy_Gauntlet3", logic = function() return true end },
    { id = "KremKap_ForestAnthillEnemy_Gauntlet0", logic = function() return state.camera() end },
    { id = "KremKap_ForestAnthillEnemy_Gauntlet1", logic = function() return state.camera() end },
    { id = "KremKap_ForestAnthillEnemy_Gauntlet2", logic = function() return state.camera() end },
    { id = "KremKap_ForestAnthillEnemy_Gauntlet3", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HollowTreeArea", logic = function() return ((state.tiny() or settings.free_trade_items()) and state.cannons() and (state.oranges() or state.saxophone() or (settings.free_trade_items() and state.HasInstrument("any")))) end, exitShuffleId="ForestAnthillToTree" },
  },
}

-- region: ForestMillTopOfNightCage  (Mill top of Night Cage)
M.regions["ForestMillTopOfNightCage"] = {
  display_name = [[Mill top of Night Cage]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "MillArea", logic = function() return true end },
  },
}

-- region: ForestVeryTopOfMill  (Very top of the Mill)
M.regions["ForestVeryTopOfMill"] = {
  display_name = [[Very top of the Mill]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "ForestTopOfMill", logic = function() return true end },
    { dest = "MillArea", logic = function() return true end },
    { dest = "WinchRoom", logic = function() return ((state.CanSlamSwitch("FungiForest", 2) and state.diddy()) or state.CanMoonkick()) end, exitShuffleId="ForestMainToWinch", time="Time.Night" },
  },
}

-- region: ForestTopOfMill  (Top of the Mill)
M.regions["ForestTopOfMill"] = {
  display_name = [[Top of the Mill]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "MillArea", logic = function() return true end },
    { dest = "MillAttic", logic = function() return true end, exitShuffleId="ForestMainToAttic", time="Time.Night" },
    { dest = "ForestMillTopOfNightCage", logic = function() return true end },
  },
}

-- region: MillArea  (Mill Area)
M.regions["MillArea"] = {
  display_name = [[Mill Area]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestDonkeyMill", logic = function() return ((state.TimeAccess("MillArea", "Night") or state.CanPhase() or state.CanPhaseswim() or state.ledgeclip()) and state.event("ConveyorActivated") and state.donkey()) end },
    { id = "ForestDiddyCagedBanana", logic = function() return ((state.TimeAccess("MillArea", "Night") and state.event("WinchRaised") and state.guitar() and state.diddy()) or ((state.CanPhaseswim() or state.ledgeclip()) and (state.diddy() or settings.free_trade_items()))) end },
    { id = "RainbowCoin_Location07", logic = function() return true end },
    { id = "MelonCrate_Location10", logic = function() return true end },
    { id = "ForestMainEnemy_NearSnide", logic = function() return true end },
    { id = "ForestMainEnemy_NearIsoCoin", logic = function() return true end },
    { id = "ForestMainEnemy_NearDarkAttic", logic = function() return true end },
    { id = "ForestMainEnemy_NearWellExit", logic = function() return true end },
    { id = "ForestMainEnemy_NearBlueTunnel", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_NearSnide", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearIsoCoin", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearDarkAttic", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearWellExit", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearBlueTunnel", logic = function() return state.camera() end },
    { id = "Balloon059", logic = function() return (state.diddy() and state.peanut() and (state.climbing() or state.TimeAccess("MillArea", "Day"))) end },
    { id = "Balloon061", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "ForestW1bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FungiForestStart", logic = function() return true end },
    { dest = "MillChunkyTinyArea", logic = function() return ((state.punch() and state.chunky()) or state.CanPhase() or state.CanPhaseswim() or state.ledgeclip()) end, exitShuffleId="ForestMainToChunkyMill", time="Time.Day" },
    { dest = "MillChunkyTinyArea", logic = function() return ((state.event("MillBoxBroken") and state.mini() and state.tiny()) or state.CanPhase() or state.CanPhaseswim() or state.ledgeclip()) end, exitShuffleId="ForestMainToTinyMill" },
    { dest = "GrinderRoom", logic = function() return true end, exitShuffleId="ForestMainToGrinder", time="Time.Day" },
    { dest = "MillRafters", logic = function() return ((state.spring() or state.CanMoontail()) and state.diddy()) end, exitShuffleId="ForestMainToRafters", time="Time.Night" },
    { dest = "ThornvineArea", logic = function() return true end, time="Time.Night" },
    { dest = "ThornvineArea", logic = function() return state.CanPhaseswim() end },
    { dest = "Snide", logic = function() return state.snideAccess() end, time="Time.Day" },
    { dest = "ForestBossLobby", logic = function() return (not settings.tns_location_rando()) end, time="Time.Day" },
    { dest = "ThornvineBarn", logic = function() return state.CanPhaseswim() end, exitShuffleId="ForestMainToBarn", isGlitchTransition=true },
    { dest = "ForestVeryTopOfMill", logic = function() return state.climbing() end },
    { dest = "ForestTopOfMill", logic = function() return (state.balloon() and state.lanky()) end },
    { dest = "ForestMillTopOfNightCage", logic = function() return (state.diddy() or state.tiny() or state.chunky()) end },
  },
}

-- region: MillChunkyTinyArea  (Mill Back Room)
M.regions["MillChunkyTinyArea"] = {
  display_name = [[Mill Back Room]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestMillRearEnemy_Enemy", logic = function() return true end },
    { id = "KremKap_ForestMillRearEnemy_Enemy", logic = function() return state.camera() end },
    { id = "HoldableKegMillRear", logic = function() return (state.barrels() and state.chunky()) end },
    { id = "BreakableForestMillRearTriangle", logic = function() return (state.punch() and state.chunky()) end },
    { id = "BreakableForestMillRearMini", logic = function() return (state.punch() and state.chunky()) end },
  },
  events = {
    { id = "GrinderActivated", logic = function() return (state.punch() and state.triangle() and state.chunky()) end },
    { id = "MillBoxBroken", logic = function() return (state.punch() and state.chunky()) end },
  },
  exits = {
    { dest = "MillArea", logic = function() return true end, exitShuffleId="ForestChunkyMillToMain", time="Time.Day" },
    { dest = "MillArea", logic = function() return ((state.event("MillBoxBroken") and state.mini() and state.tiny()) or state.CanPhase() or state.ledgeclip()) end, exitShuffleId="ForestTinyMillToMain" },
    { dest = "SpiderRoom", logic = function() return true end, exitShuffleId="ForestTinyMillToSpider", time="Time.Night" },
    { dest = "GrinderRoom", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.ledgeclip()) end, exitShuffleId="ForestTinyMillToGrinder" },
  },
}

-- region: SpiderRoom  (Spider Room)
M.regions["SpiderRoom"] = {
  display_name = [[Spider Room]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = "Regions.MillChunkyTinyArea",
  locations = {
    { id = "ForestTinySpiderBoss", logic = function() return (state.HasGun("tiny") or (settings.free_trade_items() and state.HasGun("any"))) end },
  },
  events = {
  },
  exits = {
    { dest = "MillChunkyTinyArea", logic = function() return true end, exitShuffleId="ForestSpiderToTinyMill" },
  },
}

-- region: GrinderRoom  (Grinder Room)
M.regions["GrinderRoom"] = {
  display_name = [[Grinder Room]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestChunkyKegs", logic = function() return (state.event("GrinderActivated") and state.event("ConveyorActivated") and state.chunky() and state.barrels()) end },
    { id = "ForestMillFrontEnemy_Enemy", logic = function() return true end },
    { id = "KremKap_ForestMillFrontEnemy_Enemy", logic = function() return state.camera() end },
    { id = "HoldableKegMillFrontFar", logic = function() return (state.barrels() and state.chunky()) end },
    { id = "HoldableKegMillFrontNear", logic = function() return (state.barrels() and state.chunky()) end },
    { id = "BreakableForestMillFront", logic = function() return state.Slam() end },
    { id = "Balloon066", logic = function() return (state.donkey() and state.coconut() and state.Slam() and state.CanSlamSwitch("FungiForest", 2)) end },
  },
  events = {
    { id = "ConveyorActivated", logic = function() return ((state.CanSlamSwitch("FungiForest", 2) or state.CanPhase() or state.generalclips()) and state.grab() and state.donkey()) end },
  },
  exits = {
    { dest = "MillArea", logic = function() return true end, exitShuffleId="ForestGrinderToMain", time="Time.Day" },
    { dest = "MillChunkyTinyArea", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.generalclips()) end, exitShuffleId="ForestGrinderToTinyMill" },
  },
}

-- region: MillRafters  (Mill Rafters)
M.regions["MillRafters"] = {
  display_name = [[Mill Rafters]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestDiddyRafters", logic = function() return (state.guitar() and state.diddy()) end },
    { id = "ForestBananaFairyRafters", logic = function() return (state.guitar() and state.diddy() and state.camera()) end },
  },
  events = {
  },
  exits = {
    { dest = "MillArea", logic = function() return true end, exitShuffleId="ForestRaftersToMain" },
  },
}

-- region: WinchRoom  (Winch Room)
M.regions["WinchRoom"] = {
  display_name = [[Winch Room]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestWinchEnemy_Enemy", logic = function() return true end },
    { id = "KremKap_ForestWinchEnemy_Enemy", logic = function() return state.camera() end },
    { id = "Balloon065", logic = function() return (state.diddy() and state.peanut()) end },
  },
  events = {
    { id = "WinchRaised", logic = function() return (state.peanut() and state.charge() and state.diddy()) end },
  },
  exits = {
    { dest = "ForestVeryTopOfMill", logic = function() return true end, exitShuffleId="ForestWinchToMain" },
  },
}

-- region: MillAttic  (Mill Attic)
M.regions["MillAttic"] = {
  display_name = [[Mill Attic]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestLankyAttic", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and (state.homing() or state.hard_shooting()) and state.grape() and state.lanky()) end },
  },
  events = {
  },
  exits = {
    { dest = "ForestTopOfMill", logic = function() return true end, exitShuffleId="ForestAtticToMain" },
  },
}

-- region: ThornvineArea  (Thornvine Area)
M.regions["ThornvineArea"] = {
  display_name = [[Thornvine Area]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestKasplatNearBarn", logic = function() return (not settings.kasplat_rando()) end },
    { id = "MelonCrate_Location09", logic = function() return true end },
    { id = "ForestMainEnemy_Thornvine0", logic = function() return true end },
    { id = "ForestMainEnemy_Thornvine1", logic = function() return true end },
    { id = "ForestMainEnemy_Thornvine2", logic = function() return true end },
    { id = "ForestMainEnemy_ThornvineEntrance", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_Thornvine0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_Thornvine1", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_Thornvine2", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_ThornvineEntrance", logic = function() return state.camera() end },
    { id = "Balloon063", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
  },
  exits = {
    { dest = "MillArea", logic = function() return true end, time="Time.Night" },
    { dest = "ThornvineBarn", logic = function() return ((state.CanSlamSwitch("FungiForest", 2) and state.donkey() and state.strongKong()) or state.CanPhase()) end, exitShuffleId="ForestMainToBarn" },
    { dest = "ForestBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: ThornvineBarn  (Thornvine Barn)
M.regions["ThornvineBarn"] = {
  display_name = [[Thornvine Barn]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestDonkeyBarn", logic = function() return (state.CanSlamSwitch("FungiForest", 1) and state.donkey() and ((state.climbing() and (state.can_use_vines() or state.monkey_maneuvers())) or (settings.bonus_barrels() == "skip"))) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "MelonCrate_Location11", logic = function() return true end },
    { id = "ForestThornBarnEnemy_Enemy", logic = function() return true end },
    { id = "KremKap_ForestThornBarnEnemy_Enemy", logic = function() return state.camera() end },
    { id = "BreakableForestThornvine", logic = function() return (state.Slam() and state.donkey()) end },
  },
  events = {
  },
  exits = {
    { dest = "ThornvineArea", logic = function() return true end, exitShuffleId="ForestBarnToMain" },
    { dest = "ThornvineBarnAboveLadder", logic = function() return state.climbing() end },
  },
}

-- region: ThornvineBarnAboveLadder  (Thornvine Barn Above Ladder)
M.regions["ThornvineBarnAboveLadder"] = {
  display_name = [[Thornvine Barn Above Ladder]],
  hint_region  = "Mills",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestBananaFairyThornvines", logic = function() return (state.donkey() and state.Slam() and state.camera()) end },
  },
  events = {
  },
  exits = {
    { dest = "ThornvineBarn", logic = function() return true end },
  },
}

-- region: WormArea  (Worm Area)
M.regions["WormArea"] = {
  display_name = [[Worm Area]],
  hint_region  = "ForestCenterAndBeanstalk",
  level        = "FungiForest",
  deathwarp    = -1,
  locations = {
    { id = "ForestTinyBeanstalk", logic = function() return (state.saxophone() and state.mini() and state.tiny() and (state.Beans() >= 1)) end },
    { id = "ForestChunkyApple", logic = function() return (state.event("WormGatesOpened") and state.hunkyChunky() and state.chunky() and state.barrels()) end },
    { id = "RainbowCoin_Location08", logic = function() return true end },
    { id = "ForestMainEnemy_NearBeanstalk0", logic = function() return true end },
    { id = "ForestMainEnemy_NearBeanstalk1", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_NearBeanstalk0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_NearBeanstalk1", logic = function() return state.camera() end },
    { id = "ForestMainEnemy_AppleGauntlet0", logic = function() return true end },
    { id = "ForestMainEnemy_AppleGauntlet1", logic = function() return true end },
    { id = "ForestMainEnemy_AppleGauntlet2", logic = function() return true end },
    { id = "ForestMainEnemy_AppleGauntlet3", logic = function() return true end },
    { id = "KremKap_ForestMainEnemy_AppleGauntlet0", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_AppleGauntlet1", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_AppleGauntlet2", logic = function() return state.camera() end },
    { id = "KremKap_ForestMainEnemy_AppleGauntlet3", logic = function() return state.camera() end },
  },
  events = {
    { id = "ForestW2bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "FungiForestStart", logic = function() return state.event("WormGatesOpened") end },
    { dest = "FunkyForest", logic = function() return state.funkyAccess() end },
    { dest = "ForestBossLobby", logic = function() return (not settings.tns_location_rando()) end, time="Time.Night" },
  },
}

-- region: ForestBossLobby  (Forest Boss Lobby)
M.regions["ForestBossLobby"] = {
  display_name = [[Forest Boss Lobby]],
  hint_region  = "Bosses",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "ForestBoss", logic = function() return state.IsBossReachable("FungiForest") end },
  },
}

-- region: ForestBoss  (Forest Boss)
M.regions["ForestBoss"] = {
  display_name = [[Forest Boss]],
  hint_region  = "Bosses",
  level        = "FungiForest",
  deathwarp    = nil,
  locations = {
    { id = "ForestKey", logic = function() return state.IsBossBeatable("FungiForest") end },
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