-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/CrystalCaves.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["CrystalCavesMain"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return (state.jetpack() or state.monkey_maneuvers()) end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return ((state.balloon() or state.monkey_maneuvers()) and state.CanSlamSwitch("CrystalCaves", 2)) end },
    { kind = "bunch", kong = "lanky", amount = 3, logic = function() return state.balloon() end },
    { kind = "banana", kong = "tiny", amount = 10, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.mini() or state.CanPhase()) end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return state.barrels() end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return state.twirl() end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["CavesGGRoom"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["CavesSnideArea"] = {
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["CavesBlueprintCave"] = {
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["CavesBonusCave"] = {
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 5, logic = function() return true end },
}

M.regions["CavesBlueprintPillar"] = {
    { kind = "bunch", kong = "lanky", amount = 4, logic = function() return true end },
}

M.regions["CavesBananaportSpire"] = {
  -- (no collectibles in this region)
}

M.regions["CavesBaboonBlast"] = {
    { kind = "bunch", kong = "donkey", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["BoulderCave"] = {
    { kind = "banana", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "chunky", amount = 6, logic = function() return (state.event("CavesSmallBoulderButton") or state.CanPhase()) end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return (state.event("CavesSmallBoulderButton") and state.hunkyChunky() and state.barrels()) end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["CavesLankyRace"] = {
    { kind = "racecoin", kong = "any", amount = 74, logic = function() return true end },
}

M.regions["FrozenCastle"] = {
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return true end },
}

M.regions["IglooArea"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 4, logic = function() return state.jetpack() end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.event("CavesMonkeyportAccess") or state.CanPhaseswim()) end },
    { kind = "banana", kong = "chunky", amount = 5, logic = function() return (state.event("CavesLargeBoulderButton") or state.generalclips() or state.CanPhaseswim()) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["GiantKosha"] = {
    { kind = "bunch", kong = "tiny", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["DonkeyIgloo"] = {
    { kind = "banana", kong = "donkey", amount = 7, logic = function() return ((state.strongKong() or state.CanMoonkick()) and state.donkey()) end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
}

M.regions["DiddyIgloo"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
}

M.regions["LankyIgloo"] = {
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 4, logic = function() return (state.balloon() or state.monkey_maneuvers()) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
}

M.regions["TinyIgloo"] = {
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["ChunkyIgloo"] = {
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
}

M.regions["CabinArea"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "banana", kong = "lanky", amount = 10, logic = function() return true end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["CavesSprintCabinRoof"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["RotatingCabin"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
}

M.regions["DonkeyCabin"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 2, logic = function() return true end },
}

M.regions["DiddyLowerCabin"] = {
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return (state.jetpack() or state.monkey_maneuvers()) end },
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return (state.jetpack() or state.monkey_maneuvers()) end },
}

M.regions["DiddyUpperCabin"] = {
    { kind = "bunch", kong = "diddy", amount = 3, logic = function() return (state.jetpack() and (state.guitar() or state.oranges()) and (state.spring() or state.CanMoontail())) end },
}

M.regions["LankyCabin"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["TinyCabin"] = {
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["ChunkyCabin"] = {
    { kind = "bunch", kong = "chunky", amount = 4, logic = function() return (state.gorillaGone() and state.Slam()) end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["CrystalCaves"] = M.regions end
return M