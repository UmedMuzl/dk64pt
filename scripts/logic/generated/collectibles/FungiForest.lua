-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/FungiForest.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["FungiForestStart"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 4, logic = function() return (state.checkBarrier("forest_green_tunnel") or state.hasMoveSwitchsanity("FungiGreenFeather", false) or state.CanPhase() or state.CanPhaseswim()) end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return (state.can_use_vines() and state.climbing()) end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return (state.twirl() or state.monkey_maneuvers()) end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["ForestMinecarts"] = {
    { kind = "racecoin", kong = "any", amount = 83, logic = function() return true end },
}

M.regions["GiantMushroomArea"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["MushroomLower"] = {
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return state.event("MushroomCannonsSpawned") end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
}

M.regions["MushroomLowerBetweenLadders"] = {
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
}

M.regions["MushroomLowerMid"] = {
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
}

M.regions["MushroomBlastLevelExterior"] = {
    { kind = "banana", kong = "donkey", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["MushroomLowerExterior"] = {
    { kind = "banana", kong = "donkey", amount = 13, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
}

M.regions["ForestBaboonBlast"] = {
    { kind = "bunch", kong = "donkey", amount = 2, logic = function() return true end },
}

M.regions["MushroomMiddle"] = {
    { kind = "banana", kong = "diddy", amount = 7, logic = function() return true end },
}

M.regions["MushroomUpperMid"] = {
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["MushroomUpperVineFloor"] = {
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["MushroomUpper"] = {
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
}

M.regions["MushroomNightDoor"] = {
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
}

M.regions["MushroomNightExterior"] = {
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
}

M.regions["MushroomUpperExterior"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["MushroomVeryTopExterior"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["MushroomChunkyRoom"] = {
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
}

M.regions["MushroomLankyZingersRoom"] = {
    { kind = "bunch", kong = "lanky", amount = 2, logic = function() return true end },
}

M.regions["MushroomLankyMushroomsRoom"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["HollowTreeArea"] = {
    { kind = "banana", kong = "diddy", amount = 10, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "banana", kong = "lanky", amount = 10, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 8, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.saxophone() and state.mini()) end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return (state.jetpack() and state.TimeAccess("HollowTreeArea", "Night")) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return (((not state.checkFastCheck("forest_rabbit_race")) or state.sprint()) and state.TimeAccess("HollowTreeArea", "Day") and state.trombone()) end },
}

M.regions["Anthill"] = {
  -- (no collectibles in this region)
}

M.regions["ForestMillTopOfNightCage"] = {
  -- (no collectibles in this region)
}

M.regions["ForestVeryTopOfMill"] = {
    { kind = "banana", kong = "lanky", amount = 2, logic = function() return true end },
}

M.regions["ForestTopOfMill"] = {
    { kind = "banana", kong = "lanky", amount = 4, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return state.TimeAccess("MillArea", "Night") end },
}

M.regions["MillArea"] = {
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return (state.peanut() and (state.TimeAccess("MillArea", "Day") or state.monkey_maneuvers())) end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return (state.spring() or state.CanMoontail()) end },
    { kind = "banana", kong = "tiny", amount = 17, logic = function() return state.swim() end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return state.climbing() end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return state.climbing() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return state.climbing() end },
}

M.regions["MillChunkyTinyArea"] = {
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return state.punch() end },
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return state.event("MillBoxBroken") end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["SpiderRoom"] = {
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
}

M.regions["GrinderRoom"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.Slam() end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return ((state.CanSlamSwitch("FungiForest", 2) or state.generalclips() or state.CanPhase()) and state.coconut()) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["MillRafters"] = {
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return (state.guitar() and state.diddy()) end },
}

M.regions["WinchRoom"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "coin", kong = "diddy", amount = 2, logic = function() return true end },
}

M.regions["MillAttic"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
}

M.regions["ThornvineArea"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.strongKong() end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return state.strongKong() end },
}

M.regions["ThornvineBarn"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return (state.Slam() and state.donkey()) end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["WormArea"] = {
    { kind = "bunch", kong = "tiny", amount = 3, logic = function() return state.climbing() end },
    { kind = "banana", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 9, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.TimeAccess("WormArea", "Night") or state.CanPhase()) end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["FungiForest"] = M.regions end
return M