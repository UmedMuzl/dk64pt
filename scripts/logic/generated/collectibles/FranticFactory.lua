-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/FranticFactory.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["FranticFactoryStart"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 10, logic = function() return state.event("HatchOpened") end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 5, logic = function() return true end },
}

M.regions["Testing"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 5, logic = function() return (state.spring() or state.CanMoontail()) end },
    { kind = "banana", kong = "tiny", amount = 7, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.mini() or state.CanPhase()) end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return true end },
}

M.regions["RandDUpper"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "balloon", kong = "diddy", amount = 3, logic = function() return (state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 10, logic = function() return ((state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false) and state.triangle() and state.climbing()) or state.CanAccessRNDRoom()) end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return ((state.grab() and state.donkey()) or state.CanAccessRNDRoom()) end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return (((state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false) and state.triangle() and state.climbing()) or state.CanAccessRNDRoom()) and state.pineapple()) end },
}

M.regions["RandD"] = {
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return ((state.trombone() or state.CanAccessRNDRoom()) and state.grape()) end },
    { kind = "banana", kong = "tiny", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 5, logic = function() return true end },
}

M.regions["FactoryTinyRaceLobby"] = {
  -- (no collectibles in this region)
}

M.regions["ChunkyRoomPlatform"] = {
  -- (no collectibles in this region)
}

M.regions["PowerHut"] = {
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 1, logic = function() return true end },
}

M.regions["FactoryArcadeTunnel"] = {
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.hasMoveSwitchsanity("FactoryArcadeTunnelGrate", false) or state.CanPhase()) end },
}

M.regions["AlcoveBeyondHatch"] = {
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
}

M.regions["BeyondHatch"] = {
    { kind = "banana", kong = "donkey", amount = 6, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 4, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "diddy", amount = 12, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 3, logic = function() return (state.punch() and state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false)) end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return (state.spring() or state.CanPhase() or state.CanMoontail()) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 5, logic = function() return true end },
}

M.regions["FactoryStoragePipe"] = {
    { kind = "banana", kong = "lanky", amount = 4, logic = function() return true end },
}

M.regions["FactoryBaboonBlast"] = {
    { kind = "bunch", kong = "donkey", amount = 4, logic = function() return true end },
}

M.regions["InsideCore"] = {
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return state.strongKong() end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["LowerCore"] = {
  -- (no collectibles in this region)
}

M.regions["SpinningCore"] = {
    { kind = "bunch", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return true end },
}

M.regions["MiddleCore"] = {
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["UpperCore"] = {
    { kind = "bunch", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 4, logic = function() return (state.handstand() or state.CanPhase()) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "bunch", kong = "tiny", amount = 4, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return state.twirl() end },
    { kind = "coin", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return state.twirl() end },
}

M.regions["FactoryTinyRace"] = {
    { kind = "racecoin", kong = "any", amount = 25, logic = function() return true end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["FranticFactory"] = M.regions end
return M