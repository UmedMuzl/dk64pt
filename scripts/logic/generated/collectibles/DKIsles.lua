-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/CollectibleLogicFiles/DKIsles.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.collectible_emitter

local M = {}
M.regions = {}

M.regions["TrainingGrounds"] = {
    { kind = "coin", kong = "donkey", amount = 3, logic = function() return true end },
}

M.regions["IslesMain"] = {
  -- (no collectibles in this region)
}

M.regions["Prison"] = {
  -- (no collectibles in this region)
}

M.regions["BananaFairyRoom"] = {
  -- (no collectibles in this region)
}

M.regions["JungleJapesLobby"] = {
  -- (no collectibles in this region)
}

M.regions["AngryAztecLobby"] = {
  -- (no collectibles in this region)
}

M.regions["KremIsle"] = {
  -- (no collectibles in this region)
}

M.regions["KremIsleBeyondLift"] = {
  -- (no collectibles in this region)
}

M.regions["KremIsleTopLevel"] = {
  -- (no collectibles in this region)
}

M.regions["IslesSnideRoom"] = {
  -- (no collectibles in this region)
}

M.regions["FranticFactoryLobby"] = {
  -- (no collectibles in this region)
}

M.regions["GloomyGalleonLobby"] = {
  -- (no collectibles in this region)
}

M.regions["GloomyGalleonLobbyEntrance"] = {
  -- (no collectibles in this region)
}

M.regions["CabinIsle"] = {
  -- (no collectibles in this region)
}

M.regions["FungiForestLobby"] = {
  -- (no collectibles in this region)
}

M.regions["CrystalCavesLobby"] = {
  -- (no collectibles in this region)
}

M.regions["CreepyCastleLobby"] = {
  -- (no collectibles in this region)
}

M.regions["HideoutHelmLobby"] = {
  -- (no collectibles in this region)
}

M.regions["HideoutHelmLobbyPastVines"] = {
  -- (no collectibles in this region)
}

M.regions["Treehouse"] = {
  -- (no collectibles in this region)
}

M.regions["IslesMainUpper"] = {
  -- (no collectibles in this region)
}

M.regions["IslesHill"] = {
  -- (no collectibles in this region)
}

M.regions["OuterIsles"] = {
  -- (no collectibles in this region)
}

M.regions["AztecLobbyRoof"] = {
  -- (no collectibles in this region)
}

M.regions["IslesAboveWaterfall"] = {
  -- (no collectibles in this region)
}

M.regions["IslesAirspace"] = {
  -- (no collectibles in this region)
}

if _G.graph and _G.graph.collectibles then _G.graph.collectibles["DKIsles"] = M.regions end
return M