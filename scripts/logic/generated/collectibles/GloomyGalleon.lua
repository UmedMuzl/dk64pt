-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/GloomyGalleon.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["GloomyGalleonStart"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "balloon", kong = "lanky", amount = 2, logic = function() return (state.grape() and ((state.punch() and state.chunky()) or state.CanPhase())) end },
    { kind = "banana", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 4, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["GalleonPastVines"] = {
    { kind = "banana", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["GalleonBeyondPineappleGate"] = {
    { kind = "bunch", kong = "tiny", amount = 3, logic = function() return state.event("WaterRaised") end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return (state.pineapple() and (state.event("WaterRaised") or (state.monkey_maneuvers() and state.chunky()))) end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["LighthouseSurface"] = {
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return (state.feather() and state.event("WaterLowered")) end },
}

M.regions["LighthousePlatform"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return state.jetpack() end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return state.jetpack() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.event("WaterRaised") or (state.monkey_maneuvers() and (state.chunky() or state.lanky()))) end },
}

M.regions["LighthouseUnderwater"] = {
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 4, logic = function() return (state.event("LighthouseEnguarde") or state.CanPhaseswim()) end },
    { kind = "banana", kong = "chunky", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["LighthouseEnguardeDoor"] = {
    { kind = "banana", kong = "donkey", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["LighthouseSnideAlcove"] = {
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["GalleonBaboonBlast"] = {
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 2, logic = function() return true end },
}

M.regions["Lighthouse"] = {
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
}

M.regions["LighthouseAboveLadder"] = {
    { kind = "bunch", kong = "donkey", amount = 4, logic = function() return true end },
}

M.regions["MermaidRoom"] = {
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["SickBay"] = {
    { kind = "bunch", kong = "chunky", amount = 4, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return (state.punch() or state.CanPhase()) end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return (state.punch() or state.CanPhase()) end },
}

M.regions["Shipyard"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return (state.swim() or state.event("WaterLowered")) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return state.event("WaterRaised") end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "donkey", amount = 4, logic = function() return (state.event("WaterRaised") or state.CanMoonkick()) end },
    { kind = "coin", kong = "chunky", amount = 5, logic = function() return true end },
}

M.regions["ShipyardUnderwater"] = {
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 10, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 6, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return (state.event("ShipyardEnguarde") or state.CanPhaseswim()) end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return (state.event("ShipyardEnguarde") or state.CanPhaseswim()) end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return (state.event("ShipyardEnguarde") or state.CanPhaseswim()) end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return (state.event("ShipyardEnguarde") or state.CanPhaseswim()) end },
}

M.regions["SealRace"] = {
    { kind = "racecoin", kong = "any", amount = 19, logic = function() return true end },
}

M.regions["TreasureRoom"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return state.event("WaterRaised") end },
    { kind = "banana", kong = "lanky", amount = 4, logic = function() return (state.event("WaterRaised") and state.balloon()) end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return state.swim() end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
}

M.regions["TreasureRoomDiddyGoldTower"] = {
  -- (no collectibles in this region)
}

M.regions["TinyChest"] = {
    { kind = "coin", kong = "tiny", amount = 4, logic = function() return true end },
}

M.regions["Submarine"] = {
  -- (no collectibles in this region)
}

M.regions["Mechafish"] = {
  -- (no collectibles in this region)
}

M.regions["LankyShip"] = {
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["TinyShip"] = {
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
}

M.regions["BongosShip"] = {
    { kind = "banana", kong = "donkey", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["GuitarShip"] = {
    { kind = "banana", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return true end },
}

M.regions["TromboneShip"] = {
    { kind = "bunch", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["SaxophoneShip"] = {
    { kind = "banana", kong = "tiny", amount = 8, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return true end },
}

M.regions["TriangleShip"] = {
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["GloomyGalleon"] = M.regions end
return M