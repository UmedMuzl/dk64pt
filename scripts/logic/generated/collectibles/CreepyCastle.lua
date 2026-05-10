-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/CreepyCastle.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["CreepyCastleMain"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 45, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "banana", kong = "tiny", amount = 45, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return state.jetpack() end },
    { kind = "coin", kong = "diddy", amount = 2, logic = function() return state.jetpack() end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return state.climbing() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["CastleVeryBottom"] = {
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return state.climbing() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["CastleBaboonBlast"] = {
    { kind = "coin", kong = "donkey", amount = 5, logic = function() return true end },
}

M.regions["CastleTree"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
}

M.regions["CastleTreePastPunch"] = {
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["Library"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
}

M.regions["LibraryPastSlam"] = {
    { kind = "bunch", kong = "donkey", amount = 2, logic = function() return state.strongKong() end },
}

M.regions["LibraryPastBooks"] = {
  -- (no collectibles in this region)
}

M.regions["Ballroom"] = {
    { kind = "bunch", kong = "diddy", amount = 3, logic = function() return state.jetpack() end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["MuseumBehindGlass"] = {
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.monkeyport() or state.CanPhase()) end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return (state.feather() and (state.monkeyport() or state.CanPhase())) end },
}

M.regions["CastleTinyRace"] = {
    { kind = "racecoin", kong = "any", amount = 17, logic = function() return true end },
}

M.regions["Tower"] = {
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
}

M.regions["Greenhouse"] = {
    { kind = "bunch", kong = "lanky", amount = 6, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["TrashCan"] = {
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return true end },
}

M.regions["Shed"] = {
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return true end },
}

M.regions["Museum"] = {
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return (state.punch() and state.barrels()) end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["LowerCave"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 4, logic = function() return true end },
}

M.regions["Crypt"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
}

M.regions["CryptDonkeyRoom"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
}

M.regions["CastleMinecarts"] = {
    { kind = "racecoin", kong = "any", amount = 68, logic = function() return true end },
}

M.regions["CryptDiddyRoom"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return (state.peanut() and (state.charge() or state.generalclips() or state.CanPhase())) end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return (state.charge() or state.CanPhase() or state.generalclips()) end },
}

M.regions["CryptChunkyRoom"] = {
    { kind = "bunch", kong = "chunky", amount = 2, logic = function() return (state.punch() or state.generalclips() or state.CanPhase()) end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.punch() or state.CanPhase() or state.generalclips()) end },
}

M.regions["Mausoleum"] = {
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return (state.grape() and (state.sprint() or state.generalclips() or state.CanPhase())) end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.twirl() or (state.monkey_maneuvers() and (not state.isKrushaAdjacent("tiny")))) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return ((state.grape() and state.sprint()) or state.generalclips() or (state.CanPhase() and ((state.trombone() and state.can_use_vines()) or state.monkey_maneuvers()))) end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return (state.twirl() or (state.monkey_maneuvers() and (not state.isKrushaAdjacent("tiny"))) or state.CanPhase()) end },
}

M.regions["UpperCave"] = {
    { kind = "banana", kong = "chunky", amount = 30, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return state.twirl() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["Dungeon"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return (state.punch() or state.CanPhase()) end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return (state.punch() or state.CanPhase()) end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.peanut()) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return (state.grape() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase())) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return (state.grape() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.trombone() and state.balloon()) end },
    { kind = "balloon", kong = "chunky", amount = 2, logic = function() return ((state.punch() or state.CanPhase() or state.generalclips()) and state.pineapple()) end },
    { kind = "coin", kong = "donkey", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.trombone() and state.balloon()) end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.punch() or state.CanPhase()) end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["CreepyCastle"] = M.regions end
return M