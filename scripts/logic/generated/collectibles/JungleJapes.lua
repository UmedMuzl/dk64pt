-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/JungleJapes.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["JungleJapesStart"] = {
    { kind = "banana", kong = "donkey", amount = 5, logic = function() return (state.climbing() and (state.can_use_vines() or (state.monkey_maneuvers() and (not state.isKrushaAdjacent("donkey"))))) end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return state.climbing() end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return state.swim() end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return state.swim() end },
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return state.swim() end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return state.swim() end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return state.swim() end },
}

M.regions["JapesBlastPadPlatform"] = {
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["JapesHill"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.climbing() end },
}

M.regions["JapesHillTop"] = {
    { kind = "banana", kong = "donkey", amount = 6, logic = function() return true end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.climbing() end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "diddy", amount = 7, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return state.climbing() end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 5, logic = function() return true end },
}

M.regions["JapesCannonPlatform"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return state.climbing() end },
    { kind = "coin", kong = "diddy", amount = 2, logic = function() return true end },
}

M.regions["JungleJapesMain"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 2, logic = function() return state.climbing() end },
}

M.regions["JapesPaintingRoomHill"] = {
    { kind = "banana", kong = "lanky", amount = 2, logic = function() return true end },
}

M.regions["JapesTnSAlcove"] = {
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return true end },
}

M.regions["JapesBaboonBlast"] = {
    { kind = "bunch", kong = "donkey", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 2, logic = function() return true end },
}

M.regions["JapesBeyondCoconutGate1"] = {
    { kind = "banana", kong = "chunky", amount = 10, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["JapesBeyondCoconutGate2"] = {
    { kind = "banana", kong = "donkey", amount = 9, logic = function() return true end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return (state.hasMoveSwitchsanity("JapesRambi", false) or state.CanPhase()) end },
    { kind = "bunch", kong = "donkey", amount = 1, logic = function() return (state.event("Rambi") or state.CanPhase()) end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return (state.event("Rambi") or state.CanPhase()) end },
    { kind = "banana", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 2, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 2, logic = function() return (state.handstand() or state.slope_resets()) end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return state.climbing() end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return (state.event("Rambi") or state.CanPhase()) end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "banana", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return state.climbing() end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.event("Rambi") or state.CanPhase()) end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return state.climbing() end },
    { kind = "coin", kong = "donkey", amount = 1, logic = function() return state.can_use_vines() end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return (state.hasMoveSwitchsanity("JapesRambi", false) or state.CanPhase()) end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["JapesUselessSlope"] = {
    { kind = "banana", kong = "lanky", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
}

M.regions["JapesBeyondFeatherGate"] = {
    { kind = "bunch", kong = "tiny", amount = 3, logic = function() return (state.mini() or state.CanPhase()) end },
    { kind = "bunch", kong = "tiny", amount = 3, logic = function() return (state.mini() or state.CanPhase()) end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 4, logic = function() return (state.climbing() and state.hunkyChunky()) end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["JapesBeyondPeanutGate"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return (state.grape() or state.CanPhase() or state.generalclips()) end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return (state.feather() or state.CanPhase()) end },
    { kind = "coin", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
}

M.regions["Mine"] = {
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return (state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) and (state.charge() or state.monkey_maneuvers())) end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) and state.peanut()) end },
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return (state.peanut() or state.monkey_maneuvers()) end },
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return (state.charge() or state.CanPhase()) end },
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return (state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) end },
}

M.regions["JapesMinecarts"] = {
    { kind = "racecoin", kong = "any", amount = 85, logic = function() return true end },
}

M.regions["JapesTopOfMountain"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
}

M.regions["JapesLankyCave"] = {
    { kind = "bunch", kong = "lanky", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 2, logic = function() return true end },
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return true end },
}

M.regions["BeyondRambiGate"] = {
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "bunch", kong = "chunky", amount = 1, logic = function() return state.barrels() end },
    { kind = "balloon", kong = "chunky", amount = 3, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return state.swim() end },
}

M.regions["TinyHive"] = {
    { kind = "banana", kong = "tiny", amount = 8, logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()) end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "coin", kong = "tiny", amount = 2, logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()) end },
}

M.regions["JapesCatacomb"] = {
    { kind = "banana", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return ((state.can_use_vines() and state.pineapple() and state.chunky()) or state.CanPhase()) end },
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["JungleJapes"] = M.regions end
return M