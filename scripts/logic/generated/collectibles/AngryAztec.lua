-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/AngryAztec.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["AngryAztecStart"] = {
  -- (no collectibles in this region)
}

M.regions["BetweenVinesByPortal"] = {
    { kind = "banana", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "chunky", amount = 4, logic = function() return (state.pineapple() or state.CanPhase()) end },
}

M.regions["AngryAztecOasis"] = {
    { kind = "bunch", kong = "donkey", amount = 2, logic = function() return ((state.hasMoveSwitchsanity("AztecBlueprintDoor", false) or state.CanPhase()) and state.strongKong()) end },
    { kind = "bunch", kong = "donkey", amount = 3, logic = function() return state.climbing() end },
    { kind = "banana", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 2, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return ((state.hasMoveSwitchsanity("AztecBlueprintDoor", false) or state.CanPhase()) and state.strongKong()) end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return true end },
}

M.regions["TempleStart"] = {
    { kind = "bunch", kong = "diddy", amount = 3, logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.peanut()) end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return state.CanSlamSwitch("AngryAztec", 1) end },
    { kind = "bunch", kong = "chunky", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 3, logic = function() return true end },
}

M.regions["TempleGuitarPad"] = {
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return true end },
}

M.regions["TempleUnderwater"] = {
    { kind = "banana", kong = "diddy", amount = 7, logic = function() return true end },
    { kind = "banana", kong = "tiny", amount = 5, logic = function() return (state.mini() or state.CanPhaseswim()) end },
}

M.regions["TempleVultureRoom"] = {
    { kind = "banana", kong = "lanky", amount = 9, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "chunky", amount = 1, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "tiny", amount = 4, logic = function() return true end },
}

M.regions["TempleKONGRoom"] = {
    { kind = "balloon", kong = "tiny", amount = 2, logic = function() return state.feather() end },
    { kind = "coin", kong = "diddy", amount = 5, logic = function() return true end },
}

M.regions["AngryAztecMain"] = {
    { kind = "balloon", kong = "donkey", amount = 2, logic = function() return state.coconut() end },
    { kind = "balloon", kong = "donkey", amount = 1, logic = function() return state.coconut() end },
    { kind = "banana", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "banana", kong = "donkey", amount = 4, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "banana", kong = "diddy", amount = 3, logic = function() return true end },
    { kind = "bunch", kong = "diddy", amount = 3, logic = function() return (state.climbing() or state.jetpack()) end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "bunch", kong = "diddy", amount = 1, logic = function() return state.jetpack() end },
    { kind = "banana", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 5, logic = function() return state.climbing() end },
    { kind = "banana", kong = "tiny", amount = 10, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 5, logic = function() return (state.climbing() or state.twirl()) end },
    { kind = "banana", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 10, logic = function() return true end },
    { kind = "banana", kong = "chunky", amount = 6, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "diddy", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 4, logic = function() return true end },
    { kind = "coin", kong = "lanky", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return (state.can_use_vines() and state.climbing()) end },
}

M.regions["AztecDonkeyQuicksandCave"] = {
    { kind = "bunch", kong = "donkey", amount = 4, logic = function() return state.strongKong() end },
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "coin", kong = "chunky", amount = 4, logic = function() return true end },
}

M.regions["AztecBaboonBlast"] = {
  -- (no collectibles in this region)
}

M.regions["DonkeyTemple"] = {
    { kind = "coin", kong = "donkey", amount = 2, logic = function() return (state.coconut() or state.CanPhase()) end },
}

M.regions["DiddyTemple"] = {
    { kind = "balloon", kong = "diddy", amount = 1, logic = function() return state.peanut() end },
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return (state.peanut() or state.CanPhase()) end },
}

M.regions["DiddyTempleDeadEndRight"] = {
    { kind = "coin", kong = "diddy", amount = 1, logic = function() return true end },
}

M.regions["LankyTemple"] = {
    { kind = "balloon", kong = "lanky", amount = 1, logic = function() return state.grape() end },
}

M.regions["TinyTempleEntrance"] = {
    { kind = "coin", kong = "tiny", amount = 1, logic = function() return true end },
}

M.regions["TinyTemple"] = {
    { kind = "coin", kong = "tiny", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 1, logic = function() return (state.feather() or state.CanPhase()) end },
}

M.regions["ChunkyTemple"] = {
    { kind = "balloon", kong = "chunky", amount = 2, logic = function() return state.pineapple() end },
    { kind = "coin", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 1, logic = function() return true end },
    { kind = "coin", kong = "chunky", amount = 1, logic = function() return (state.pineapple() or state.CanPhase()) end },
    { kind = "coin", kong = "chunky", amount = 1, logic = function() return (state.pineapple() or state.CanPhase()) end },
}

M.regions["AztecTinyRace"] = {
    { kind = "racecoin", kong = "any", amount = 71, logic = function() return true end },
}

M.regions["LlamaTemple"] = {
    { kind = "banana", kong = "donkey", amount = 15, logic = function() return true end },
    { kind = "banana", kong = "lanky", amount = 6, logic = function() return true end },
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return true end },
    { kind = "balloon", kong = "lanky", amount = 2, logic = function() return (((state.event("AztecLlamaSpit") and state.swim()) or (state.CanPhaseswim() and (settings.damage_amount() ~= "ohko")) or state.CanPhase()) and state.grape()) end },
    { kind = "balloon", kong = "tiny", amount = 1, logic = function() return state.feather() end },
    { kind = "banana", kong = "tiny", amount = 3, logic = function() return true end },
    { kind = "coin", kong = "donkey", amount = 5, logic = function() return true end },
    { kind = "coin", kong = "tiny", amount = 3, logic = function() return true end },
}

M.regions["LlamaTempleMatching"] = {
    { kind = "bunch", kong = "lanky", amount = 1, logic = function() return state.can_use_vines() end },
    { kind = "coin", kong = "lanky", amount = 2, logic = function() return state.can_use_vines() end },
}

M.regions["LlamaTempleBack"] = {
    { kind = "banana", kong = "tiny", amount = 2, logic = function() return true end },
    { kind = "bunch", kong = "tiny", amount = 2, logic = function() return (state.CanSlamSwitch("AngryAztec", 1) or (state.twirl() and state.monkey_maneuvers())) end },
}

M.regions["AngryAztecConnectorTunnel"] = {
  -- (no collectibles in this region)
}

M.regions["AztecTunnelBeforeOasis"] = {
  -- (no collectibles in this region)
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["AngryAztec"] = M.regions end
return M