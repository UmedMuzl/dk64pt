-- AUTO-GENERATED — flat index of every Location to its containing region(s) + access lambda(s).
-- A location can legitimately appear in multiple regions when randomizer logic puts it
-- in different places depending on settings. We keep all and OR them at evaluation time.

local M = {}
M.locations = {}

M.locations["AztecDonkeyMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "donkey") >= settings.medal_cb_req_level(1)) end },
}
M.locations["AztecDiddyMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "diddy") >= settings.medal_cb_req_level(1)) end },
}
M.locations["AztecLankyMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "lanky") >= settings.medal_cb_req_level(1)) end },
}
M.locations["AztecTinyMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "tiny") >= settings.medal_cb_req_level(1)) end },
}
M.locations["AztecChunkyMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "chunky") >= settings.medal_cb_req_level(1)) end },
}
M.locations["AztecDonkeyHalfMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
}
M.locations["AztecDiddyHalfMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
}
M.locations["AztecLankyHalfMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
}
M.locations["AztecTinyHalfMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
}
M.locations["AztecChunkyHalfMedal"] = {
  { region = "AngryAztecMedals", logic = function() return (state.cb("AngryAztec", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(1) / (2 ^ 1))))) end },
}
M.locations["AztecChunkyVases"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
}
M.locations["HoldableVaseCircle"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
}
M.locations["HoldableVaseTriangle"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
}
M.locations["HoldableVaseColon"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
}
M.locations["HoldableVasePlus"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() or state.CanPhase()) and state.chunky() and state.barrels()) end },
}
M.locations["AztecMainEnemy_VaseRoom0"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
}
M.locations["AztecMainEnemy_VaseRoom1"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
}
M.locations["AztecMainEnemy_VaseRoom2"] = {
  { region = "BetweenVinesByPortal", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
}
M.locations["AztecMainEnemy_StartingTunnel0"] = {
  { region = "BetweenVinesByPortal", logic = function() return true end },
}
M.locations["AztecMainEnemy_StartingTunnel1"] = {
  { region = "BetweenVinesByPortal", logic = function() return true end },
}
M.locations["AztecMainEnemy_StartingTunnel2"] = {
  { region = "BetweenVinesByPortal", logic = function() return true end },
}
M.locations["KremKap_AztecMainEnemy_VaseRoom0"] = {
  { region = "BetweenVinesByPortal", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecMainEnemy_VaseRoom1"] = {
  { region = "BetweenVinesByPortal", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecMainEnemy_VaseRoom2"] = {
  { region = "BetweenVinesByPortal", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecMainEnemy_StartingTunnel0"] = {
  { region = "BetweenVinesByPortal", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_StartingTunnel1"] = {
  { region = "BetweenVinesByPortal", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_StartingTunnel2"] = {
  { region = "BetweenVinesByPortal", logic = function() return state.camera() end },
}
M.locations["AztecKasplatSandyBridge"] = {
  { region = "AztecTunnelBeforeOasis", logic = function() return ((not settings.kasplat_rando()) and (state.CanPhase() or (state.hasMoveSwitchsanity("AztecBlueprintDoor", false) and ((state.strongKong() and state.donkey()) or (state.twirl() and state.tiny()))))) end },
}
M.locations["AztecMainEnemy_StartingTunnel3"] = {
  { region = "AztecTunnelBeforeOasis", logic = function() return true end },
}
M.locations["KremKap_AztecMainEnemy_StartingTunnel3"] = {
  { region = "AztecTunnelBeforeOasis", logic = function() return state.camera() end },
}
M.locations["AztecDonkeyFreeLlama"] = {
  { region = "AngryAztecOasis", logic = function() return state.event("LlamaFreed") end },
}
M.locations["AztecKasplatOnTinyTemple"] = {
  { region = "AngryAztecOasis", logic = function() return ((not settings.kasplat_rando()) and state.jetpack() and state.diddy() and state.climbing()) end },
}
M.locations["RainbowCoin_Location06"] = {
  { region = "AngryAztecOasis", logic = function() return true end },
}
M.locations["AztecMainEnemy_NearCandy"] = {
  { region = "AngryAztecOasis", logic = function() return true end },
}
M.locations["AztecMainEnemy_OasisDoor"] = {
  { region = "AngryAztecOasis", logic = function() return true end },
}
M.locations["KremKap_AztecMainEnemy_NearCandy"] = {
  { region = "AngryAztecOasis", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_OasisDoor"] = {
  { region = "AngryAztecOasis", logic = function() return state.camera() end },
}
M.locations["Balloon055"] = {
  { region = "AngryAztecOasis", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["AztecChunkyKlaptrapRoom"] = {
  { region = "TempleStart", logic = function() return ((state.triangle() or (state.CanPhaseswim() and state.event("AztecIceMelted")) or state.CanPhase()) and state.chunky()) end },
}
M.locations["AztecTempleEnemy_GuardRotating0"] = {
  { region = "TempleStart", logic = function() return true end },
}
M.locations["AztecTempleEnemy_GuardRotating1"] = {
  { region = "TempleStart", logic = function() return true end },
}
M.locations["AztecTempleEnemy_MainRoom0"] = {
  { region = "TempleStart", logic = function() return true end },
}
M.locations["AztecTempleEnemy_MainRoom1"] = {
  { region = "TempleStart", logic = function() return true end },
}
M.locations["AztecTempleEnemy_MainRoom2"] = {
  { region = "TempleStart", logic = function() return true end },
}
M.locations["KremKap_AztecTempleEnemy_GuardRotating0"] = {
  { region = "TempleStart", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_GuardRotating1"] = {
  { region = "TempleStart", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_MainRoom0"] = {
  { region = "TempleStart", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_MainRoom1"] = {
  { region = "TempleStart", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_MainRoom2"] = {
  { region = "TempleStart", logic = function() return state.camera() end },
}
M.locations["AztecTinyKlaptrapRoom"] = {
  { region = "TempleUnderwater", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase() or state.generalclips() or state.CanPhaseswim()) end },
}
M.locations["KremKap_AztecTempleEnemy_Underwater"] = {
  { region = "TempleUnderwater", logic = function() return state.camera() end },
}
M.locations["AztecLankyVulture"] = {
  { region = "TempleVultureRoom", logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.grape() and state.lanky()) end },
}
M.locations["AztecBattleArena"] = {
  { region = "TempleVultureRoom", logic = function() return ((not settings.crown_placement_rando()) and state.CanSlamSwitch("AngryAztec", 1) and state.grape() and state.lanky()) end },
}
M.locations["Balloon017"] = {
  { region = "TempleVultureRoom", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["TinyKong"] = {
  { region = "TempleKONGRoom", logic = function() return state.CanFreeTiny() end },
}
M.locations["AztecDiddyFreeTiny"] = {
  { region = "TempleKONGRoom", logic = function() return (state.CanFreeTiny() or state.CanPhase() or state.ledgeclip() or state.CanPhaseswim()) end },
}
M.locations["AztecTempleEnemy_KongRoom0"] = {
  { region = "TempleKONGRoom", logic = function() return true end },
}
M.locations["AztecTempleEnemy_KongRoom1"] = {
  { region = "TempleKONGRoom", logic = function() return true end },
}
M.locations["AztecTempleEnemy_KongRoom2"] = {
  { region = "TempleKONGRoom", logic = function() return true end },
}
M.locations["AztecTempleEnemy_KongRoom3"] = {
  { region = "TempleKONGRoom", logic = function() return true end },
}
M.locations["AztecTempleEnemy_KongRoom4"] = {
  { region = "TempleKONGRoom", logic = function() return true end },
}
M.locations["KremKap_AztecTempleEnemy_KongRoom0"] = {
  { region = "TempleKONGRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_KongRoom1"] = {
  { region = "TempleKONGRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_KongRoom2"] = {
  { region = "TempleKONGRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_KongRoom3"] = {
  { region = "TempleKONGRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTempleEnemy_KongRoom4"] = {
  { region = "TempleKONGRoom", logic = function() return state.camera() end },
}
M.locations["Balloon015"] = {
  { region = "TempleKONGRoom", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["Balloon016"] = {
  { region = "TempleKONGRoom", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["AztecChunkyCagedBarrel"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return (state.chunky() and ((state.hunkyChunky() and (state.barrels() or state.generalclips())) or state.CanPhase())) end },
}
M.locations["AztecKasplatNearLab"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["AztecMainEnemy_TunnelPad0"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["AztecMainEnemy_TunnelCage0"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["AztecMainEnemy_TunnelCage1"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["AztecMainEnemy_TunnelCage2"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["AztecMainEnemy_TunnelCage3"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["AztecMainEnemy_TunnelPad1"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return true end },
}
M.locations["KremKap_AztecMainEnemy_TunnelPad0"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_TunnelCage0"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_TunnelCage1"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_TunnelCage2"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_TunnelCage3"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_TunnelPad1"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderAztec"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return (state.barrels() and state.hunkyChunky() and state.chunky()) end },
}
M.locations["Balloon054"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["Balloon057"] = {
  { region = "AngryAztecConnectorTunnel", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["AztecDiddyRamGongs"] = {
  { region = "AngryAztecMain", logic = function() return (state.charge() and state.jetpack() and state.diddy()) end },
}
M.locations["AztecDiddyVultureRace"] = {
  { region = "AngryAztecMain", logic = function() return (state.jetpack() and state.diddy()) end },
}
M.locations["MelonCrate_Location06"] = {
  { region = "AngryAztecMain", logic = function() return ((state.jetpack() and state.diddy()) or state.CanMoonkick()) end },
}
M.locations["MelonCrate_Location07"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_OutsideLlama"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_OutsideTower"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_AroundTotem"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_Outside5DT"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_OutsideSnide"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["AztecMainEnemy_NearSnoopTunnel"] = {
  { region = "AngryAztecMain", logic = function() return true end },
}
M.locations["KremKap_AztecMainEnemy_OutsideLlama"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_OutsideTower"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_AroundTotem"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_Outside5DT"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_OutsideSnide"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecMainEnemy_NearSnoopTunnel"] = {
  { region = "AngryAztecMain", logic = function() return state.camera() end },
}
M.locations["Balloon056"] = {
  { region = "AngryAztecMain", logic = function() return (state.donkey() and state.coconut() and state.strongKong()) end },
}
M.locations["AztecDonkeyQuicksandCave"] = {
  { region = "AztecDonkeyQuicksandCave", logic = function() return (state.donkey() or settings.free_trade_items()) end },
}
M.locations["Balloon058"] = {
  { region = "AztecDonkeyQuicksandCave", logic = function() return (state.diddy() and state.peanut() and state.donkey() and state.strongKong()) end },
}
M.locations["AztecDonkey5DoorTemple"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() or state.CanPhase()) and (state.donkey() or settings.free_trade_items())) end },
}
M.locations["AztecDK5DTEnemy_EndTrap0"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["AztecDK5DTEnemy_EndTrap1"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["AztecDK5DTEnemy_EndTrap2"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["AztecDK5DTEnemy_EndPath0"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["AztecDK5DTEnemy_EndPath1"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["AztecDK5DTEnemy_StartPath"] = {
  { region = "DonkeyTemple", logic = function() return ((state.coconut() and state.donkey()) or state.CanPhase()) end },
}
M.locations["KremKap_AztecDK5DTEnemy_EndTrap0"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDK5DTEnemy_EndTrap1"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDK5DTEnemy_EndTrap2"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDK5DTEnemy_EndPath0"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDK5DTEnemy_EndPath1"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDK5DTEnemy_StartPath"] = {
  { region = "DonkeyTemple", logic = function() return (state.camera() and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["AztecDK5DTEnemy_StartTrap0"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return true end },
}
M.locations["AztecDK5DTEnemy_StartTrap1"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return true end },
}
M.locations["AztecDK5DTEnemy_StartTrap2"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return true end },
}
M.locations["KremKap_AztecDK5DTEnemy_StartTrap0"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecDK5DTEnemy_StartTrap1"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecDK5DTEnemy_StartTrap2"] = {
  { region = "DonkeyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["AztecDiddy5DoorTemple"] = {
  { region = "DiddyTemple", logic = function() return ((state.peanut() or state.CanPhase()) and (state.diddy() or settings.free_trade_items())) end },
}
M.locations["AztecDiddy5DTEnemy_StartLeft0"] = {
  { region = "DiddyTemple", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
}
M.locations["AztecDiddy5DTEnemy_StartLeft1"] = {
  { region = "DiddyTemple", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
}
M.locations["AztecDiddy5DTEnemy_Reward"] = {
  { region = "DiddyTemple", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
}
M.locations["AztecDiddy5DTEnemy_SecondSwitch"] = {
  { region = "DiddyTemple", logic = function() return ((state.peanut() and state.diddy()) or state.CanPhase()) end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_StartLeft0"] = {
  { region = "DiddyTemple", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_StartLeft1"] = {
  { region = "DiddyTemple", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_Reward"] = {
  { region = "DiddyTemple", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_SecondSwitch"] = {
  { region = "DiddyTemple", logic = function() return (state.camera() and ((state.peanut() and state.diddy()) or state.CanPhase())) end },
}
M.locations["Balloon021"] = {
  { region = "DiddyTemple", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["AztecDiddy5DTEnemy_EndTrap0"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return true end },
}
M.locations["AztecDiddy5DTEnemy_EndTrap1"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return true end },
}
M.locations["AztecDiddy5DTEnemy_EndTrap2"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return true end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_EndTrap0"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_EndTrap1"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecDiddy5DTEnemy_EndTrap2"] = {
  { region = "DiddyTempleDeadEndRight", logic = function() return state.camera() end },
}
M.locations["AztecLanky5DoorTemple"] = {
  { region = "LankyTemple", logic = function() return ((state.grape() or state.CanPhase()) and (state.lanky() or settings.free_trade_items())) end },
}
M.locations["AztecLanky5DTEnemy_JoiningPaths"] = {
  { region = "LankyTemple", logic = function() return true end },
}
M.locations["AztecLanky5DTEnemy_EndTrap"] = {
  { region = "LankyTemple", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
}
M.locations["AztecLanky5DTEnemy_Reward"] = {
  { region = "LankyTemple", logic = function() return ((state.grape() and state.lanky()) or state.CanPhase()) end },
}
M.locations["KremKap_AztecLanky5DTEnemy_JoiningPaths"] = {
  { region = "LankyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLanky5DTEnemy_EndTrap"] = {
  { region = "LankyTemple", logic = function() return (state.camera() and ((state.grape() and state.lanky()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecLanky5DTEnemy_Reward"] = {
  { region = "LankyTemple", logic = function() return (state.camera() and ((state.grape() and state.lanky()) or state.CanPhase())) end },
}
M.locations["Balloon022"] = {
  { region = "LankyTemple", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["AztecTiny5DoorTemple"] = {
  { region = "TinyTemple", logic = function() return ((state.feather() or state.CanPhase()) and (state.tiny() or settings.free_trade_items())) end },
}
M.locations["AztecBananaFairyTinyTemple"] = {
  { region = "TinyTemple", logic = function() return (state.camera() and ((state.mini() and state.tiny()) or state.CanPhase())) end },
}
M.locations["AztecTiny5DTEnemy_StartRightFront"] = {
  { region = "TinyTemple", logic = function() return true end },
}
M.locations["AztecTiny5DTEnemy_StartLeftBack"] = {
  { region = "TinyTemple", logic = function() return true end },
}
M.locations["AztecTiny5DTEnemy_StartRightBack"] = {
  { region = "TinyTemple", logic = function() return true end },
}
M.locations["AztecTiny5DTEnemy_StartLeftFront"] = {
  { region = "TinyTemple", logic = function() return true end },
}
M.locations["AztecTiny5DTEnemy_Reward0"] = {
  { region = "TinyTemple", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
}
M.locations["AztecTiny5DTEnemy_Reward1"] = {
  { region = "TinyTemple", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
}
M.locations["AztecTiny5DTEnemy_DeadEnd0"] = {
  { region = "TinyTemple", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
}
M.locations["AztecTiny5DTEnemy_DeadEnd1"] = {
  { region = "TinyTemple", logic = function() return ((state.feather() and state.tiny()) or state.CanPhase()) end },
}
M.locations["KremKap_AztecTiny5DTEnemy_StartRightFront"] = {
  { region = "TinyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTiny5DTEnemy_StartLeftBack"] = {
  { region = "TinyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTiny5DTEnemy_StartRightBack"] = {
  { region = "TinyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTiny5DTEnemy_StartLeftFront"] = {
  { region = "TinyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecTiny5DTEnemy_Reward0"] = {
  { region = "TinyTemple", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecTiny5DTEnemy_Reward1"] = {
  { region = "TinyTemple", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecTiny5DTEnemy_DeadEnd0"] = {
  { region = "TinyTemple", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
}
M.locations["KremKap_AztecTiny5DTEnemy_DeadEnd1"] = {
  { region = "TinyTemple", logic = function() return (state.camera() and ((state.feather() and state.tiny()) or state.CanPhase())) end },
}
M.locations["AztecChunky5DoorTemple"] = {
  { region = "ChunkyTemple", logic = function() return ((state.pineapple() or state.CanPhase()) and (state.chunky() or settings.free_trade_items())) end },
}
M.locations["AztecKasplatChunky5DT"] = {
  { region = "ChunkyTemple", logic = function() return ((not settings.kasplat_rando()) and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
}
M.locations["RainbowCoin_Location01"] = {
  { region = "ChunkyTemple", logic = function() return true end },
}
M.locations["AztecChunky5DTEnemy_StartRight"] = {
  { region = "ChunkyTemple", logic = function() return true end },
}
M.locations["AztecChunky5DTEnemy_StartLeft"] = {
  { region = "ChunkyTemple", logic = function() return true end },
}
M.locations["AztecChunky5DTEnemy_SecondRight"] = {
  { region = "ChunkyTemple", logic = function() return true end },
}
M.locations["AztecChunky5DTEnemy_SecondLeft"] = {
  { region = "ChunkyTemple", logic = function() return true end },
}
M.locations["AztecChunky5DTEnemy_Reward"] = {
  { region = "ChunkyTemple", logic = function() return ((state.pineapple() and state.chunky()) or state.CanPhase()) end },
}
M.locations["KremKap_AztecChunky5DTEnemy_StartRight"] = {
  { region = "ChunkyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecChunky5DTEnemy_StartLeft"] = {
  { region = "ChunkyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecChunky5DTEnemy_SecondRight"] = {
  { region = "ChunkyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecChunky5DTEnemy_SecondLeft"] = {
  { region = "ChunkyTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecChunky5DTEnemy_Reward"] = {
  { region = "ChunkyTemple", logic = function() return (state.camera() and ((state.pineapple() and state.chunky()) or state.CanPhase())) end },
}
M.locations["Balloon023"] = {
  { region = "ChunkyTemple", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon024"] = {
  { region = "ChunkyTemple", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["AztecTinyBeetleRace"] = {
  { region = "AztecTinyRace", logic = function() return state.HasEnoughRaceCoins("AztecTinyRace", "tiny", (not settings.free_trade_items())) end },
}
M.locations["LankyKong"] = {
  { region = "LlamaTemple", logic = function() return state.CanFreeLanky() end },
}
M.locations["AztecDonkeyFreeLanky"] = {
  { region = "LlamaTemple", logic = function() return state.CanFreeLanky() end },
}
M.locations["AztecLankyLlamaTempleBarrel"] = {
  { region = "LlamaTemple", logic = function() return (state.trombone() and ((state.handstand() and state.lanky()) or (settings.free_trade_items() and ((state.tiny() and ((state.twirl() and state.monkey_maneuvers()) or state.slope_resets())) or state.CanMoonkick())))) end },
}
M.locations["AztecBananaFairyLlamaTemple"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["MelonCrate_Location02"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["Balloon018"] = {
  { region = "LlamaTemple", logic = function() return (state.tiny() and state.feather() and state.swim()) end },
}
M.locations["Balloon019"] = {
  { region = "LlamaTemple", logic = function() return (state.lanky() and state.grape() and ((state.event("AztecLlamaSpit") and state.swim()) or state.CanPhaseswim() or state.CanPhase())) end },
}
M.locations["Balloon020"] = {
  { region = "LlamaTemple", logic = function() return (state.lanky() and state.grape() and ((state.event("AztecLlamaSpit") and state.swim()) or state.CanPhaseswim() or state.CanPhase())) end },
}
M.locations["AztecLlamaEnemy_KongFreeInstrument"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_DinoInstrument"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_Right"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_Left"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_MelonCrate"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_SlamSwitch"] = {
  { region = "LlamaTemple", logic = function() return true end },
}
M.locations["KremKap_AztecLlamaEnemy_KongFreeInstrument"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_DinoInstrument"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_Right"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_Left"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_MelonCrate"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_SlamSwitch"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecNPC_Llama"] = {
  { region = "LlamaTemple", logic = function() return state.camera() end },
}
M.locations["AztecLankyMatchingGame"] = {
  { region = "LlamaTempleMatching", logic = function() return (state.grape() and state.CanSlamSwitch("AngryAztec", 1) and state.lanky()) end },
}
M.locations["AztecLlamaEnemy_Matching0"] = {
  { region = "LlamaTempleMatching", logic = function() return true end },
}
M.locations["AztecLlamaEnemy_Matching1"] = {
  { region = "LlamaTempleMatching", logic = function() return true end },
}
M.locations["KremKap_AztecLlamaEnemy_Matching0"] = {
  { region = "LlamaTempleMatching", logic = function() return state.camera() end },
}
M.locations["KremKap_AztecLlamaEnemy_Matching1"] = {
  { region = "LlamaTempleMatching", logic = function() return state.camera() end },
}
M.locations["AztecTinyLlamaTemple"] = {
  { region = "LlamaTempleBack", logic = function() return (state.CanSlamSwitch("AngryAztec", 1) and state.tiny()) end },
}
M.locations["AztecKasplatLlamaTemple"] = {
  { region = "LlamaTempleBack", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["AztecKey"] = {
  { region = "AztecBoss", logic = function() return state.IsBossBeatable("AngryAztec") end },
}
M.locations["CastleDonkeyMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "donkey") >= settings.medal_cb_req_level(6)) end },
}
M.locations["CastleDiddyMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "diddy") >= settings.medal_cb_req_level(6)) end },
}
M.locations["CastleLankyMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "lanky") >= settings.medal_cb_req_level(6)) end },
}
M.locations["CastleTinyMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "tiny") >= settings.medal_cb_req_level(6)) end },
}
M.locations["CastleChunkyMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "chunky") >= settings.medal_cb_req_level(6)) end },
}
M.locations["CastleDonkeyHalfMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
}
M.locations["CastleDiddyHalfMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
}
M.locations["CastleLankyHalfMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
}
M.locations["CastleTinyHalfMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
}
M.locations["CastleChunkyHalfMedal"] = {
  { region = "CreepyCastleMedals", logic = function() return (state.cb("CreepyCastle", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(6) / (2 ^ 1))))) end },
}
M.locations["CastleDiddyAboveCastle"] = {
  { region = "CreepyCastleMain", logic = function() return (state.jetpack() and state.diddy()) end },
}
M.locations["CastleKasplatHalfway"] = {
  { region = "CreepyCastleMain", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["RainbowCoin_Location11"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearBridge0"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearBridge1"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_WoodenExtrusion0"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_WoodenExtrusion1"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearShed"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearLibrary"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearTower"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_MuseumSteps"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_PathToDungeon"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["CastleMainEnemy_NearHeadphones"] = {
  { region = "CreepyCastleMain", logic = function() return true end },
}
M.locations["KremKap_CastleMainEnemy_NearBridge0"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_NearBridge1"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_WoodenExtrusion0"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_WoodenExtrusion1"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_NearShed"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_NearLibrary"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_NearTower"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_MuseumSteps"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_PathToDungeon"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_NearHeadphones"] = {
  { region = "CreepyCastleMain", logic = function() return state.camera() end },
}
M.locations["Balloon082"] = {
  { region = "CreepyCastleMain", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["CastleKasplatLowerLedge"] = {
  { region = "CastleVeryBottom", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["CastleMainEnemy_NearLowCave"] = {
  { region = "CastleVeryBottom", logic = function() return true end },
}
M.locations["CastleMainEnemy_PathToLowKasplat"] = {
  { region = "CastleVeryBottom", logic = function() return true end },
}
M.locations["CastleMainEnemy_LowTnS"] = {
  { region = "CastleVeryBottom", logic = function() return true end },
}
M.locations["KremKap_CastleMainEnemy_NearLowCave"] = {
  { region = "CastleVeryBottom", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_PathToLowKasplat"] = {
  { region = "CastleVeryBottom", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMainEnemy_LowTnS"] = {
  { region = "CastleVeryBottom", logic = function() return state.camera() end },
}
M.locations["CastleDonkeyTree"] = {
  { region = "CastleTree", logic = function() return (((state.scope() and state.coconut()) or state.generalclips() or state.CanPhase()) and state.donkey()) end },
}
M.locations["CastleKasplatTree"] = {
  { region = "CastleTree", logic = function() return ((not settings.kasplat_rando()) and (state.coconut() or state.CanPhase() or state.generalclips()) and state.donkey()) end },
}
M.locations["CastleBananaFairyTree"] = {
  { region = "CastleTree", logic = function() return (state.camera() and state.swim() and (((state.coconut() or state.generalclips()) and state.donkey()) or state.CanPhase())) end },
}
M.locations["CastleTreeEnemy_StartRoom0"] = {
  { region = "CastleTree", logic = function() return true end },
}
M.locations["CastleTreeEnemy_StartRoom1"] = {
  { region = "CastleTree", logic = function() return true end },
}
M.locations["KremKap_CastleTreeEnemy_StartRoom0"] = {
  { region = "CastleTree", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleTreeEnemy_StartRoom1"] = {
  { region = "CastleTree", logic = function() return state.camera() end },
}
M.locations["Balloon099"] = {
  { region = "CastleTree", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["CastleChunkyTree"] = {
  { region = "CastleTreePastPunch", logic = function() return ((((state.scope() or state.hard_shooting()) and state.pineapple() and state.chunky()) or state.CanPhase()) and (state.chunky() or settings.free_trade_items())) end },
}
M.locations["Balloon100"] = {
  { region = "CastleTreePastPunch", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CastleLibraryEnemy_ForkLeft0"] = {
  { region = "Library", logic = function() return true end },
}
M.locations["CastleLibraryEnemy_ForkLeft1"] = {
  { region = "Library", logic = function() return true end },
}
M.locations["CastleLibraryEnemy_ForkCenter"] = {
  { region = "Library", logic = function() return true end },
}
M.locations["CastleLibraryEnemy_ForkRight"] = {
  { region = "Library", logic = function() return true end },
}
M.locations["KremKap_CastleLibraryEnemy_ForkLeft0"] = {
  { region = "Library", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_ForkLeft1"] = {
  { region = "Library", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_ForkCenter"] = {
  { region = "Library", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_ForkRight"] = {
  { region = "Library", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor00"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor01"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor02"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor03"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor04"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLibraryEnemy_Corridor05"] = {
  { region = "LibraryPastSlam", logic = function() return state.camera() end },
}
M.locations["CastleDonkeyLibrary"] = {
  { region = "LibraryPastBooks", logic = function() return (state.donkey() or settings.free_trade_items()) end },
}
M.locations["CastleDiddyBallroom"] = {
  { region = "Ballroom", logic = function() return (state.jetpack() and state.diddy()) end },
}
M.locations["CastleBallroomEnemy_Start"] = {
  { region = "Ballroom", logic = function() return true end },
}
M.locations["KremKap_CastleBallroomEnemy_Start"] = {
  { region = "Ballroom", logic = function() return state.camera() end },
}
M.locations["Balloon083"] = {
  { region = "Ballroom", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["CastleBananaFairyBallroom"] = {
  { region = "MuseumBehindGlass", logic = function() return state.camera() end },
}
M.locations["Balloon092"] = {
  { region = "MuseumBehindGlass", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["CastleTinyCarRace"] = {
  { region = "CastleTinyRace", logic = function() return state.HasEnoughRaceCoins("CastleTinyRace", "tiny", (not settings.free_trade_items())) end },
}
M.locations["CastleLankyTower"] = {
  { region = "Tower", logic = function() return ((state.scope() or (state.hard_shooting() and state.homing())) and state.balloon() and state.grape() and state.lanky()) end },
}
M.locations["Balloon088"] = {
  { region = "Tower", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["CastleLankyGreenhouse"] = {
  { region = "Greenhouse", logic = function() return (state.lanky() or settings.free_trade_items()) end },
}
M.locations["CastleBattleArena"] = {
  { region = "Greenhouse", logic = function() return ((not settings.crown_placement_rando()) and (state.lanky() or settings.free_trade_items())) end },
}
M.locations["CastleTinyTrashCan"] = {
  { region = "TrashCan", logic = function() return ((state.tiny() and (state.saxophone() or (state.feather() and (state.homing() or state.hard_shooting())))) or (settings.free_trade_items() and (state.HasInstrument("any") or (state.HasGun("any") and (state.homing() or state.hard_shooting()))))) end },
}
M.locations["CastleChunkyShed"] = {
  { region = "Shed", logic = function() return ((state.punch() or state.CanPhase()) and ((state.gorillaGone() and state.pineapple()) or state.triangle()) and state.chunky()) end },
}
M.locations["BreakableCastleShed"] = {
  { region = "Shed", logic = function() return (state.chunky() and state.punch()) end },
}
M.locations["Balloon101"] = {
  { region = "Shed", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CastleChunkyMuseum"] = {
  { region = "Museum", logic = function() return ((state.punch() and state.chunky() and state.barrels()) or (state.CanPhase() and (state.chunky() or settings.free_trade_items()))) end },
}
M.locations["CastleMuseumEnemy_MainFloor0"] = {
  { region = "Museum", logic = function() return true end },
}
M.locations["CastleMuseumEnemy_MainFloor1"] = {
  { region = "Museum", logic = function() return true end },
}
M.locations["CastleMuseumEnemy_MainFloor2"] = {
  { region = "Museum", logic = function() return true end },
}
M.locations["CastleMuseumEnemy_MainFloor3"] = {
  { region = "Museum", logic = function() return true end },
}
M.locations["CastleMuseumEnemy_Start"] = {
  { region = "Museum", logic = function() return true end },
}
M.locations["KremKap_CastleMuseumEnemy_MainFloor0"] = {
  { region = "Museum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMuseumEnemy_MainFloor1"] = {
  { region = "Museum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMuseumEnemy_MainFloor2"] = {
  { region = "Museum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMuseumEnemy_MainFloor3"] = {
  { region = "Museum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMuseumEnemy_Start"] = {
  { region = "Museum", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderMuseum"] = {
  { region = "Museum", logic = function() return (state.barrels() and state.chunky() and (state.punch() or state.CanPhase())) end },
}
M.locations["Balloon093"] = {
  { region = "Museum", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CastleKasplatCrypt"] = {
  { region = "LowerCave", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["MelonCrate_Location12"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_NearCrypt"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_StairRight"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_StairLeft"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_NearMausoleum"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_NearFunky"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["CastleLowCaveEnemy_NearTag"] = {
  { region = "LowerCave", logic = function() return true end },
}
M.locations["KremKap_CastleLowCaveEnemy_NearCrypt"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLowCaveEnemy_StairRight"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLowCaveEnemy_StairLeft"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLowCaveEnemy_NearMausoleum"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLowCaveEnemy_NearFunky"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLowCaveEnemy_NearTag"] = {
  { region = "LowerCave", logic = function() return state.camera() end },
}
M.locations["CastleCryptEnemy_Fork"] = {
  { region = "Crypt", logic = function() return true end },
}
M.locations["CastleCryptEnemy_NearDiddy"] = {
  { region = "Crypt", logic = function() return true end },
}
M.locations["CastleCryptEnemy_NearChunky"] = {
  { region = "Crypt", logic = function() return true end },
}
M.locations["KremKap_CastleCryptEnemy_Fork"] = {
  { region = "Crypt", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleCryptEnemy_NearDiddy"] = {
  { region = "Crypt", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleCryptEnemy_NearChunky"] = {
  { region = "Crypt", logic = function() return state.camera() end },
}
M.locations["CastleCryptEnemy_MinecartEntry"] = {
  { region = "CryptDonkeyRoom", logic = function() return true end },
}
M.locations["KremKap_CastleCryptEnemy_MinecartEntry"] = {
  { region = "CryptDonkeyRoom", logic = function() return state.camera() end },
}
M.locations["Balloon091"] = {
  { region = "CryptDonkeyRoom", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["CastleDiddyCrypt"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.charge() and state.diddy()) end },
}
M.locations["CastleCryptEnemy_DiddyCoffin0"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.diddy() and state.charge()) end },
}
M.locations["CastleCryptEnemy_DiddyCoffin1"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.diddy() and state.charge()) end },
}
M.locations["CastleCryptEnemy_DiddyCoffin2"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.diddy() and state.charge()) end },
}
M.locations["CastleCryptEnemy_DiddyCoffin3"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.diddy() and state.charge()) end },
}
M.locations["KremKap_CastleCryptEnemy_DiddyCoffin0"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
}
M.locations["KremKap_CastleCryptEnemy_DiddyCoffin1"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
}
M.locations["KremKap_CastleCryptEnemy_DiddyCoffin2"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
}
M.locations["KremKap_CastleCryptEnemy_DiddyCoffin3"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.camera() and state.diddy() and state.charge()) end },
}
M.locations["Balloon090"] = {
  { region = "CryptDiddyRoom", logic = function() return (state.diddy() and state.peanut() and state.charge()) end },
}
M.locations["CastleChunkyCrypt"] = {
  { region = "CryptChunkyRoom", logic = function() return ((state.punch() and state.chunky()) or ((state.chunky() or settings.free_trade_items()) and (state.CanPhase() or state.generalclips()))) end },
}
M.locations["CastleCryptEnemy_ChunkyCoffin0"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.chunky() and state.Slam()) end },
}
M.locations["CastleCryptEnemy_ChunkyCoffin1"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.chunky() and state.Slam()) end },
}
M.locations["CastleCryptEnemy_ChunkyCoffin2"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.chunky() and state.Slam()) end },
}
M.locations["CastleCryptEnemy_ChunkyCoffin3"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.chunky() and state.Slam()) end },
}
M.locations["KremKap_CastleCryptEnemy_ChunkyCoffin0"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
}
M.locations["KremKap_CastleCryptEnemy_ChunkyCoffin1"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
}
M.locations["KremKap_CastleCryptEnemy_ChunkyCoffin2"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
}
M.locations["KremKap_CastleCryptEnemy_ChunkyCoffin3"] = {
  { region = "CryptChunkyRoom", logic = function() return (state.camera() and state.chunky() and state.Slam()) end },
}
M.locations["CastleDonkeyMinecarts"] = {
  { region = "CastleMinecarts", logic = function() return state.HasEnoughRaceCoins("CastleMinecarts", "donkey", (not settings.free_trade_items())) end },
}
M.locations["CastleLankyMausoleum"] = {
  { region = "Mausoleum", logic = function() return ((((state.grape() and state.sprint()) or state.generalclips() or state.CanPhase()) and ((state.trombone() and state.can_use_vines()) or (state.monkey_maneuvers() and state.sprint())) and state.lanky()) or (settings.free_trade_items() and state.CanPhase())) end },
}
M.locations["CastleTinyMausoleum"] = {
  { region = "Mausoleum", logic = function() return (state.CanSlamSwitch("CreepyCastle", 3) and state.twirl() and state.tiny()) end },
}
M.locations["CastleMausoleumEnemy_TinyPath"] = {
  { region = "Mausoleum", logic = function() return true end },
}
M.locations["CastleMausoleumEnemy_LankyPath0"] = {
  { region = "Mausoleum", logic = function() return true end },
}
M.locations["CastleMausoleumEnemy_LankyPath1"] = {
  { region = "Mausoleum", logic = function() return true end },
}
M.locations["KremKap_CastleMausoleumEnemy_TinyPath"] = {
  { region = "Mausoleum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMausoleumEnemy_LankyPath0"] = {
  { region = "Mausoleum", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleMausoleumEnemy_LankyPath1"] = {
  { region = "Mausoleum", logic = function() return state.camera() end },
}
M.locations["Balloon089"] = {
  { region = "Mausoleum", logic = function() return (state.lanky() and state.grape() and (state.sprint() or state.generalclips() or state.CanPhase())) end },
}
M.locations["CastleTinyOverChasm"] = {
  { region = "UpperCave", logic = function() return ((state.twirl() or state.CanPhase()) and state.tiny()) end },
}
M.locations["CastleKasplatNearCandy"] = {
  { region = "UpperCave", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["CastleUpperCaveEnemy_NearDungeon"] = {
  { region = "UpperCave", logic = function() return true end },
}
M.locations["CastleUpperCaveEnemy_NearPit"] = {
  { region = "UpperCave", logic = function() return true end },
}
M.locations["CastleUpperCaveEnemy_NearEntrance"] = {
  { region = "UpperCave", logic = function() return true end },
}
M.locations["KremKap_CastleUpperCaveEnemy_NearDungeon"] = {
  { region = "UpperCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleUpperCaveEnemy_NearPit"] = {
  { region = "UpperCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleUpperCaveEnemy_NearEntrance"] = {
  { region = "UpperCave", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleUpperCaveEnemy_Pit"] = {
  { region = "UpperCave", logic = function() return state.camera() end },
}
M.locations["Balloon102"] = {
  { region = "UpperCave", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["Balloon103"] = {
  { region = "UpperCave", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["CastleDonkeyDungeon"] = {
  { region = "Dungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or (state.Slam() and state.CanPhase())) and state.donkey()) end },
}
M.locations["CastleDiddyDungeon"] = {
  { region = "Dungeon", logic = function() return ((state.CanPhase() and (state.diddy() or settings.free_trade_items())) or (state.CanSlamSwitch("CreepyCastle", 3) and state.diddy() and (state.can_use_vines() and ((state.scope() and state.peanut() and state.diddy()) or state.CanMoontail())))) end },
}
M.locations["CastleLankyDungeon"] = {
  { region = "Dungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.trombone() and state.balloon() and state.lanky()) end },
}
M.locations["CastleDungeonEnemy_FaceRoom"] = {
  { region = "Dungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) or state.CanPhase()) end },
}
M.locations["CastleDungeonEnemy_ChairRoom"] = {
  { region = "Dungeon", logic = function() return ((state.CanSlamSwitch("CreepyCastle", 3) and state.diddy()) or state.CanPhase()) end },
}
M.locations["CastleDungeonEnemy_OutsideLankyRoom"] = {
  { region = "Dungeon", logic = function() return true end },
}
M.locations["KremKap_CastleDungeonEnemy_FaceRoom"] = {
  { region = "Dungeon", logic = function() return (state.camera() and ((state.CanSlamSwitch("CreepyCastle", 3) and state.donkey()) or state.CanPhase())) end },
}
M.locations["KremKap_CastleDungeonEnemy_ChairRoom"] = {
  { region = "Dungeon", logic = function() return (state.camera() and ((state.CanSlamSwitch("CreepyCastle", 3) and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_CastleDungeonEnemy_OutsideLankyRoom"] = {
  { region = "Dungeon", logic = function() return state.camera() end },
}
M.locations["Balloon094"] = {
  { region = "Dungeon", logic = function() return (state.diddy() and state.peanut() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase())) end },
}
M.locations["Balloon095"] = {
  { region = "Dungeon", logic = function() return (state.lanky() and state.grape() and state.trombone() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase())) end },
}
M.locations["Balloon096"] = {
  { region = "Dungeon", logic = function() return (state.chunky() and state.pineapple() and state.punch()) end },
}
M.locations["Balloon097"] = {
  { region = "Dungeon", logic = function() return (state.lanky() and state.grape() and state.trombone() and (state.CanSlamSwitch("CreepyCastle", 3) or state.CanPhase()) and state.balloon()) end },
}
M.locations["Balloon098"] = {
  { region = "Dungeon", logic = function() return (state.chunky() and state.pineapple() and state.punch()) end },
}
M.locations["CastleKey"] = {
  { region = "CastleBoss", logic = function() return state.IsBossBeatable("CreepyCastle") end },
}
M.locations["CavesDonkeyMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "donkey") >= settings.medal_cb_req_level(5)) end },
}
M.locations["CavesDiddyMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "diddy") >= settings.medal_cb_req_level(5)) end },
}
M.locations["CavesLankyMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "lanky") >= settings.medal_cb_req_level(5)) end },
}
M.locations["CavesTinyMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "tiny") >= settings.medal_cb_req_level(5)) end },
}
M.locations["CavesChunkyMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "chunky") >= settings.medal_cb_req_level(5)) end },
}
M.locations["CavesDonkeyHalfMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
}
M.locations["CavesDiddyHalfMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
}
M.locations["CavesLankyHalfMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
}
M.locations["CavesTinyHalfMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
}
M.locations["CavesChunkyHalfMedal"] = {
  { region = "CrystalCavesMedals", logic = function() return (state.cb("CrystalCaves", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(5) / (2 ^ 1))))) end },
}
M.locations["CavesDiddyJetpackBarrel"] = {
  { region = "CrystalCavesMain", logic = function() return ((state.jetpack() and state.diddy()) or ((not settings.shuffle_shops()) and state.monkey_maneuvers() and ((state.donkey() and (not state.isKrushaAdjacent("donkey"))) or (state.tiny() and state.twirl())) and settings.free_trade_items())) end },
}
M.locations["CavesKasplatNearLab"] = {
  { region = "CrystalCavesMain", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["CavesMainEnemy_Start"] = {
  { region = "CrystalCavesMain", logic = function() return true end },
}
M.locations["CavesMainEnemy_NearIceCastle"] = {
  { region = "CrystalCavesMain", logic = function() return true end },
}
M.locations["CavesMainEnemy_NearFunky"] = {
  { region = "CrystalCavesMain", logic = function() return true end },
}
M.locations["CavesMainEnemy_NearBonusRoom"] = {
  { region = "CrystalCavesMain", logic = function() return true end },
}
M.locations["CavesMainEnemy_NearSnide"] = {
  { region = "CrystalCavesMain", logic = function() return true end },
}
M.locations["KremKap_CavesMainEnemy_Start"] = {
  { region = "CrystalCavesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_NearIceCastle"] = {
  { region = "CrystalCavesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_NearFunky"] = {
  { region = "CrystalCavesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_NearBonusRoom"] = {
  { region = "CrystalCavesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_NearSnide"] = {
  { region = "CrystalCavesMain", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderCavesSmall"] = {
  { region = "CrystalCavesMain", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["Balloon070"] = {
  { region = "CrystalCavesMain", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["CavesChunkyGorillaGone"] = {
  { region = "CavesGGRoom", logic = function() return (state.gorillaGone() and state.chunky()) end },
}
M.locations["Balloon074"] = {
  { region = "CavesGGRoom", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["Balloon071"] = {
  { region = "CavesSnideArea", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CavesKasplatNearFunky"] = {
  { region = "CavesBlueprintCave", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["Balloon077"] = {
  { region = "CavesBlueprintCave", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["CavesTinyCaveBarrel"] = {
  { region = "CavesBonusCave", logic = function() return (state.tiny() or settings.free_trade_items()) end },
}
M.locations["Balloon076"] = {
  { region = "CavesBonusCave", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CavesKasplatPillar"] = {
  { region = "CavesBlueprintPillar", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["CavesDonkeyBaboonBlast"] = {
  { region = "CavesBaboonBlast", logic = function() return state.donkey() end },
}
M.locations["HoldableBoulderCavesLarge"] = {
  { region = "BoulderCave", logic = function() return (state.barrels() and state.chunky() and state.hunkyChunky() and state.event("CavesSmallBoulderButton")) end },
}
M.locations["Balloon078"] = {
  { region = "BoulderCave", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["CavesLankyBeetleRace"] = {
  { region = "CavesLankyRace", logic = function() return (state.sprint() and state.HasEnoughRaceCoins("CavesLankyRace", "lanky", true)) end },
}
M.locations["CavesLankyCastle"] = {
  { region = "FrozenCastle", logic = function() return (state.Slam() and (state.lanky() or (settings.free_trade_items() and (state.diddy() or state.tiny() or state.chunky() or state.superSlam())))) end },
}
M.locations["KremKap_CavesNPC_IceTomato"] = {
  { region = "FrozenCastle", logic = function() return state.camera() end },
}
M.locations["Balloon086"] = {
  { region = "FrozenCastle", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["CavesTinyMonkeyportIgloo"] = {
  { region = "IglooArea", logic = function() return (((state.event("CavesMonkeyportAccess") or state.CanPhaseswim()) and state.tiny()) or (state.CanPhaseswim() and settings.free_trade_items())) end },
}
M.locations["CavesChunkyTransparentIgloo"] = {
  { region = "IglooArea", logic = function() return (((state.event("CavesLargeBoulderButton") or state.generalclips() or state.CanPhaseswim()) and state.chunky()) or ((state.generalclips() or state.CanPhaseswim()) and settings.free_trade_items())) end },
}
M.locations["CavesKasplatOn5DI"] = {
  { region = "IglooArea", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["RainbowCoin_Location10"] = {
  { region = "GiantKosha", logic = function() return true end },
}
M.locations["CavesDonkey5DoorIgloo"] = {
  { region = "DonkeyIgloo", logic = function() return ((state.strongKong() and state.donkey()) or state.CanMoonkick()) end },
}
M.locations["Caves5DIDKEnemy_Right"] = {
  { region = "DonkeyIgloo", logic = function() return true end },
}
M.locations["Caves5DIDKEnemy_Left"] = {
  { region = "DonkeyIgloo", logic = function() return true end },
}
M.locations["KremKap_Caves5DIDKEnemy_Right"] = {
  { region = "DonkeyIgloo", logic = function() return state.camera() end },
}
M.locations["KremKap_Caves5DIDKEnemy_Left"] = {
  { region = "DonkeyIgloo", logic = function() return state.camera() end },
}
M.locations["Balloon081"] = {
  { region = "DonkeyIgloo", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["CavesDiddy5DoorIgloo"] = {
  { region = "DiddyIgloo", logic = function() return ((state.diddy() or settings.free_trade_items()) and state.barrels()) end },
}
M.locations["Balloon087"] = {
  { region = "DiddyIgloo", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["CavesLanky5DoorIgloo"] = {
  { region = "LankyIgloo", logic = function() return (((state.balloon() or state.monkey_maneuvers()) and state.lanky()) or (settings.free_trade_items() and state.monkey_maneuvers() and (state.diddy() or state.tiny()))) end },
}
M.locations["Balloon080"] = {
  { region = "LankyIgloo", logic = function() return (state.lanky() and state.grape() and (state.balloon() or state.monkey_maneuvers())) end },
}
M.locations["CavesTiny5DoorIgloo"] = {
  { region = "TinyIgloo", logic = function() return (state.Slam() and state.tiny()) end },
}
M.locations["CavesBananaFairyIgloo"] = {
  { region = "TinyIgloo", logic = function() return (state.Slam() and state.tiny() and state.camera()) end },
}
M.locations["Caves5DITinyEnemy_BigEnemy"] = {
  { region = "TinyIgloo", logic = function() return true end },
}
M.locations["KremKap_Caves5DITinyEnemy_BigEnemy"] = {
  { region = "TinyIgloo", logic = function() return state.camera() end },
}
M.locations["Balloon079"] = {
  { region = "TinyIgloo", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["CavesChunky5DoorIgloo"] = {
  { region = "ChunkyIgloo", logic = function() return (state.chunky() or settings.free_trade_items()) end },
}
M.locations["Balloon085"] = {
  { region = "ChunkyIgloo", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["CavesKasplatNearCandy"] = {
  { region = "CabinArea", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["CavesMainEnemy_Outside5DC"] = {
  { region = "CabinArea", logic = function() return true end },
}
M.locations["CavesMainEnemy_1DCWaterfall"] = {
  { region = "CabinArea", logic = function() return true end },
}
M.locations["CavesMainEnemy_1DCHeadphones"] = {
  { region = "CabinArea", logic = function() return true end },
}
M.locations["KremKap_CavesMainEnemy_Outside5DC"] = {
  { region = "CabinArea", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_1DCWaterfall"] = {
  { region = "CabinArea", logic = function() return state.camera() end },
}
M.locations["KremKap_CavesMainEnemy_1DCHeadphones"] = {
  { region = "CabinArea", logic = function() return state.camera() end },
}
M.locations["Balloon072"] = {
  { region = "CabinArea", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["Balloon073"] = {
  { region = "CabinArea", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["Balloon075"] = {
  { region = "CabinArea", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["CavesDonkeyRotatingCabin"] = {
  { region = "RotatingCabin", logic = function() return ((state.Slam() and state.donkey()) or state.CanMoonkick()) end },
}
M.locations["CavesBattleArena"] = {
  { region = "RotatingCabin", logic = function() return ((not settings.crown_placement_rando()) and state.Slam() and state.donkey()) end },
}
M.locations["CavesDonkey5DoorCabin"] = {
  { region = "DonkeyCabin", logic = function() return ((state.homing() or state.hard_shooting()) and (state.HasGun("donkey") or state.adv_orange_usage() or (settings.free_trade_items() and state.HasGun("any")))) end },
}
M.locations["CavesDiddy5DoorCabinLower"] = {
  { region = "DiddyLowerCabin", logic = function() return (state.diddy() and state.oranges() and (state.jetpack() or state.monkey_maneuvers())) end },
}
M.locations["CavesDiddy5DoorCabinUpper"] = {
  { region = "DiddyUpperCabin", logic = function() return ((state.guitar() or state.oranges()) and (state.spring() or (state.CanMoontail() and (not state.cabinBarrelMoved()))) and state.jetpack() and state.diddy()) end },
}
M.locations["CavesBananaFairyCabin"] = {
  { region = "DiddyUpperCabin", logic = function() return (state.camera() and (state.guitar() or state.oranges()) and (state.spring() or (state.CanMoontail() and (not state.cabinBarrelMoved()))) and state.jetpack() and state.diddy()) end },
}
M.locations["CavesLanky1DoorCabin"] = {
  { region = "LankyCabin", logic = function() return (state.sprint() and state.balloon() and state.lanky()) end },
}
M.locations["Caves1DCEnemy_Near"] = {
  { region = "LankyCabin", logic = function() return true end },
}
M.locations["KremKap_Caves1DCEnemy_Near"] = {
  { region = "LankyCabin", logic = function() return state.camera() end },
}
M.locations["CavesTiny5DoorCabin"] = {
  { region = "TinyCabin", logic = function() return ((state.tiny() or settings.free_trade_items()) and state.oranges()) end },
}
M.locations["Balloon084"] = {
  { region = "TinyCabin", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["CavesChunky5DoorCabin"] = {
  { region = "ChunkyCabin", logic = function() return (state.gorillaGone() and state.Slam() and state.chunky()) end },
}
M.locations["CavesKey"] = {
  { region = "CavesBoss", logic = function() return state.IsBossBeatable("CrystalCaves") end },
}
M.locations["IslesVinesTrainingBarrel"] = {
  { region = "GameStart", logic = function() return settings.fast_start_beginning_of_game() end },
  { region = "TrainingGrounds", logic = function() return state.event("TrainingBarrelsSpawned") end },
}
M.locations["IslesSwimTrainingBarrel"] = {
  { region = "GameStart", logic = function() return settings.fast_start_beginning_of_game() end },
  { region = "TrainingGrounds", logic = function() return state.event("TrainingBarrelsSpawned") end },
}
M.locations["IslesOrangesTrainingBarrel"] = {
  { region = "GameStart", logic = function() return settings.fast_start_beginning_of_game() end },
  { region = "TrainingGrounds", logic = function() return state.event("TrainingBarrelsSpawned") end },
}
M.locations["IslesBarrelsTrainingBarrel"] = {
  { region = "GameStart", logic = function() return settings.fast_start_beginning_of_game() end },
  { region = "TrainingGrounds", logic = function() return state.event("TrainingBarrelsSpawned") end },
}
M.locations["ShopOwner_Location00"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["ShopOwner_Location01"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["ShopOwner_Location02"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["ShopOwner_Location03"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["TimeLocationDay"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["TimeLocationNight"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["IslesFirstMove"] = {
  { region = "GameStart", logic = function() return settings.fast_start_beginning_of_game() end },
  { region = "TrainingGrounds", logic = function() return ((state.allTrainingChecks() and state.crankyAccess()) or settings.fast_start_beginning_of_game()) end },
}
M.locations["IslesClimbing"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["IslesCannons"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location00"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location01"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location02"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location03"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location04"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location05"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location06"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location07"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location08"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location09"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location10"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location11"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location12"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location13"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location14"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location15"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location16"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location17"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location18"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location19"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location20"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location21"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location22"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location23"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location24"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location25"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location26"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location27"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location28"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location29"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location30"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location31"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location32"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location33"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location34"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location35"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["PreGiven_Location36"] = {
  { region = "GameStart", logic = function() return true end },
}
M.locations["IslesDonkeyMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "donkey") >= settings.medal_cb_req_level(7)) end },
}
M.locations["IslesDiddyMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "diddy") >= settings.medal_cb_req_level(7)) end },
}
M.locations["IslesLankyMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "lanky") >= settings.medal_cb_req_level(7)) end },
}
M.locations["IslesTinyMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "tiny") >= settings.medal_cb_req_level(7)) end },
}
M.locations["IslesChunkyMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "chunky") >= settings.medal_cb_req_level(7)) end },
}
M.locations["IslesDonkeyHalfMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
}
M.locations["IslesDiddyHalfMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
}
M.locations["IslesLankyHalfMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
}
M.locations["IslesTinyHalfMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
}
M.locations["IslesChunkyHalfMedal"] = {
  { region = "DKIslesMedals", logic = function() return (state.cb("DKIsles", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(7) / (2 ^ 1))))) end },
}
M.locations["BananaHoard"] = {
  { region = "Credits", logic = function() return state.WinConditionMet() end },
}
M.locations["RainbowCoin_Location13"] = {
  { region = "TrainingGrounds", logic = function() return true end },
}
M.locations["RainbowCoin_Location14"] = {
  { region = "TrainingGrounds", logic = function() return ((state.can_use_vines() or state.CanMoonkick()) and state.climbing()) end },
}
M.locations["IslesDonkeyJapesRock"] = {
  { region = "IslesMain", logic = function() return (settings.open_lobbies() or state.event("KLumsyTalkedTo")) end },
}
M.locations["IslesChunkyCagedBanana"] = {
  { region = "IslesMain", logic = function() return ((state.pineapple() and state.chunky()) or ((state.CanSTS() or state.CanPhase()) and (state.chunky() or settings.free_trade_items()))) end },
}
M.locations["IslesMainEnemy_PineappleCage0"] = {
  { region = "IslesMain", logic = function() return true end },
}
M.locations["IslesMainEnemy_FungiCannon0"] = {
  { region = "IslesMain", logic = function() return true end },
}
M.locations["IslesMainEnemy_JapesEntrance"] = {
  { region = "IslesMain", logic = function() return true end },
}
M.locations["IslesMainEnemy_FungiCannon1"] = {
  { region = "IslesMain", logic = function() return true end },
}
M.locations["IslesMainEnemy_PineappleCage1"] = {
  { region = "IslesMain", logic = function() return true end },
}
M.locations["KremKap_IslesMainEnemy_PineappleCage0"] = {
  { region = "IslesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_FungiCannon0"] = {
  { region = "IslesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_JapesEntrance"] = {
  { region = "IslesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_FungiCannon1"] = {
  { region = "IslesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_PineappleCage1"] = {
  { region = "IslesMain", logic = function() return state.camera() end },
}
M.locations["IslesTinyCagedBanana"] = {
  { region = "OuterIsles", logic = function() return ((state.feather() and state.tiny()) or ((state.CanPhase() or state.CanSTS()) and (state.tiny() or settings.free_trade_items()))) end },
}
M.locations["IslesChunkyPoundtheX"] = {
  { region = "OuterIsles", logic = function() return (state.event("IslesChunkyBarrelSpawn") and state.hunkyChunky() and state.Slam() and state.chunky()) end },
}
M.locations["IslesBananaFairyIsland"] = {
  { region = "OuterIsles", logic = function() return state.camera() end },
}
M.locations["RainbowCoin_Location04"] = {
  { region = "IslesHill", logic = function() return true end },
}
M.locations["IslesChunkyInstrumentPad"] = {
  { region = "IslesMainUpper", logic = function() return (state.triangle() and state.chunky() and state.barrels()) end },
}
M.locations["IslesMainEnemy_NearAztec"] = {
  { region = "IslesMainUpper", logic = function() return true end },
}
M.locations["KremKap_IslesMainEnemy_NearAztec"] = {
  { region = "IslesMainUpper", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderIslesNearAztec"] = {
  { region = "IslesMainUpper", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["HoldableBoulderIslesNearCaves"] = {
  { region = "IslesMainUpper", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["IslesLankyPrisonOrangsprint"] = {
  { region = "Prison", logic = function() return ((state.sprint() and state.lanky()) or (state.CanPhase() and (state.lanky() or settings.free_trade_items()))) end },
}
M.locations["RainbowCoin_Location12"] = {
  { region = "Prison", logic = function() return true end },
}
M.locations["CameraAndShockwave"] = {
  { region = "BananaFairyRoom", logic = function() return true end },
}
M.locations["KremKap_IslesNPC_BFIQueen"] = {
  { region = "BananaFairyRoom", logic = function() return state.camera() end },
}
M.locations["RarewareBanana"] = {
  { region = "RarewareGBRoom", logic = function() return true end },
}
M.locations["IslesLankyInstrumentPad"] = {
  { region = "JungleJapesLobby", logic = function() return (state.chunky() and state.trombone() and state.lanky() and state.barrels()) end },
}
M.locations["JapesDonkeyDoor"] = {
  { region = "JungleJapesLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["JapesDiddyDoor"] = {
  { region = "JungleJapesLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["JapesLankyDoor"] = {
  { region = "JungleJapesLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["JapesTinyDoor"] = {
  { region = "JungleJapesLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["JapesChunkyDoor"] = {
  { region = "JungleJapesLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["JapesLobbyEnemy_Enemy0"] = {
  { region = "JungleJapesLobby", logic = function() return true end },
}
M.locations["JapesLobbyEnemy_Enemy1"] = {
  { region = "JungleJapesLobby", logic = function() return true end },
}
M.locations["KremKap_JapesLobbyEnemy_Enemy0"] = {
  { region = "JungleJapesLobby", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesLobbyEnemy_Enemy1"] = {
  { region = "JungleJapesLobby", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderJapesLobby"] = {
  { region = "JungleJapesLobby", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["IslesTinyAztecLobby"] = {
  { region = "AngryAztecLobby", logic = function() return ((((state.charge() and state.diddy() and state.twirl()) or (settings.bonus_barrels() == "skip")) and state.tiny()) or ((settings.bonus_barrels() == "skip") and settings.free_trade_items())) end },
}
M.locations["AztecDonkeyDoor"] = {
  { region = "AngryAztecLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["AztecDiddyDoor"] = {
  { region = "AngryAztecLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["AztecLankyDoor"] = {
  { region = "AngryAztecLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["AztecTinyDoor"] = {
  { region = "AngryAztecLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["AztecChunkyDoor"] = {
  { region = "AngryAztecLobby", logic = function() return ((not settings.wrinkly_location_rando()) and (state.hasMoveSwitchsanity("IslesAztecLobbyFeather", false) or state.CanPhase()) and ((state.chunky() and state.hunkyChunky()) or settings.remove_wrinkly_puzzles())) end },
}
M.locations["IslesLankyCagedBanana"] = {
  { region = "KremIsle", logic = function() return (((state.grape() or state.CanPhaseswim() or state.CanPhase()) and state.lanky()) or (state.CanPhase() and settings.free_trade_items())) end },
}
M.locations["IslesMainEnemy_MonkeyportPad"] = {
  { region = "KremIsle", logic = function() return true end },
}
M.locations["KremKap_IslesMainEnemy_MonkeyportPad"] = {
  { region = "KremIsle", logic = function() return state.camera() end },
}
M.locations["IslesDonkeyCagedBanana"] = {
  { region = "KremIsleBeyondLift", logic = function() return (state.coconut() and state.donkey()) end },
}
M.locations["IslesMainEnemy_UpperFactoryPath"] = {
  { region = "KremIsleBeyondLift", logic = function() return true end },
}
M.locations["IslesMainEnemy_LowerFactoryPath0"] = {
  { region = "KremIsleBeyondLift", logic = function() return true end },
}
M.locations["IslesMainEnemy_LowerFactoryPath1"] = {
  { region = "KremIsleBeyondLift", logic = function() return true end },
}
M.locations["KremKap_IslesMainEnemy_UpperFactoryPath"] = {
  { region = "KremIsleBeyondLift", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_LowerFactoryPath0"] = {
  { region = "KremIsleBeyondLift", logic = function() return state.camera() end },
}
M.locations["KremKap_IslesMainEnemy_LowerFactoryPath1"] = {
  { region = "KremIsleBeyondLift", logic = function() return state.camera() end },
}
M.locations["IslesTinyInstrumentPad"] = {
  { region = "KremIsleTopLevel", logic = function() return (state.event("IslesChunkyBarrelSpawn") and state.tiny()) end },
}
M.locations["IslesBananaFairyCrocodisleIsle"] = {
  { region = "KremIsleTopLevel", logic = function() return state.camera() end },
}
M.locations["IslesDiddySnidesLobby"] = {
  { region = "IslesSnideRoom", logic = function() return ((((settings.bonus_barrels() == "skip") or state.spring()) and state.diddy()) or ((settings.bonus_barrels() == "skip") and settings.free_trade_items())) end },
}
M.locations["IslesBattleArena1"] = {
  { region = "IslesSnideRoom", logic = function() return ((not settings.crown_placement_rando()) and state.chunky() and state.barrels()) end },
}
M.locations["IslesDonkeyInstrumentPad"] = {
  { region = "FranticFactoryLobby", logic = function() return ((state.grab() or state.CanMoonkick()) and state.bongos() and state.donkey()) end },
}
M.locations["IslesKasplatFactoryLobby"] = {
  { region = "FranticFactoryLobby", logic = function() return ((not settings.kasplat_rando()) and state.punch() and state.chunky()) end },
}
M.locations["IslesBananaFairyFactoryLobby"] = {
  { region = "FranticFactoryLobby", logic = function() return (state.camera() and state.punch() and state.chunky()) end },
}
M.locations["FactoryDonkeyDoor"] = {
  { region = "FranticFactoryLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["FactoryDiddyDoor"] = {
  { region = "FranticFactoryLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or (state.monkey_maneuvers() and (state.tiny() or state.diddy())))) end },
}
M.locations["FactoryLankyDoor"] = {
  { region = "FranticFactoryLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or state.monkey_maneuvers())) end },
}
M.locations["FactoryTinyDoor"] = {
  { region = "FranticFactoryLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.grab() and state.donkey()) or state.CanMoonkick() or (state.monkey_maneuvers() and (state.tiny() or state.diddy())))) end },
}
M.locations["FactoryChunkyDoor"] = {
  { region = "FranticFactoryLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["FactoryLobbyEnemy_Enemy0"] = {
  { region = "FranticFactoryLobby", logic = function() return true end },
}
M.locations["KremKap_FactoryLobbyEnemy_Enemy0"] = {
  { region = "FranticFactoryLobby", logic = function() return state.camera() end },
}
M.locations["IslesTinyGalleonLobby"] = {
  { region = "GloomyGalleonLobby", logic = function() return (((state.chunky() and state.CanSlamSwitch("GloomyGalleon", 2) and state.mini() and state.twirl() and state.swim() and state.tiny()) or (state.CanPhaseswim() and (state.tiny() or settings.free_trade_items()))) and ((not state.IsLavaWater()) or (state.Melons() >= 3))) end },
}
M.locations["IslesKasplatGalleonLobby"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["GalleonDonkeyDoor"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["GalleonDiddyDoor"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["GalleonLankyDoor"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["GalleonTinyDoor"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["GalleonChunkyDoor"] = {
  { region = "GloomyGalleonLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["RainbowCoin_Location03"] = {
  { region = "CabinIsle", logic = function() return true end },
}
M.locations["IslesDiddyCagedBanana"] = {
  { region = "IslesAboveWaterfall", logic = function() return (state.peanut() and state.diddy()) end },
}
M.locations["IslesDiddySummit"] = {
  { region = "IslesAirspace", logic = function() return true end },
}
M.locations["RainbowCoin_Location05"] = {
  { region = "AztecLobbyRoof", logic = function() return true end },
}
M.locations["IslesBattleArena2"] = {
  { region = "FungiForestLobby", logic = function() return ((not settings.crown_placement_rando()) and (state.CanOpenForestLobbyGoneDoor() and state.gorillaGone() and state.chunky())) end },
}
M.locations["IslesBananaFairyForestLobby"] = {
  { region = "FungiForestLobby", logic = function() return (state.camera() and state.hasMoveSwitchsanity("IslesFungiLobbyFeather", false)) end },
}
M.locations["ForestDonkeyDoor"] = {
  { region = "FungiForestLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["ForestDiddyDoor"] = {
  { region = "FungiForestLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["ForestLankyDoor"] = {
  { region = "FungiForestLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["ForestTinyDoor"] = {
  { region = "FungiForestLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["ForestChunkyDoor"] = {
  { region = "FungiForestLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["IslesDonkeyLavaBanana"] = {
  { region = "CrystalCavesLobby", logic = function() return (((state.punch() and state.chunky() and state.strongKong()) or state.CanPhase()) and state.donkey()) end },
}
M.locations["IslesDiddyInstrumentPad"] = {
  { region = "CrystalCavesLobby", logic = function() return (state.jetpack() and state.guitar() and state.diddy()) end },
}
M.locations["IslesKasplatCavesLobby"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.punch() and state.chunky()) or state.CanPhase() or state.ledgeclip())) end },
}
M.locations["CavesDonkeyDoor"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
}
M.locations["CavesDiddyDoor"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles()) and ((state.diddy() and state.jetpack()) or state.CanMoonkick())) end },
}
M.locations["CavesLankyDoor"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
}
M.locations["CavesTinyDoor"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
}
M.locations["CavesChunkyDoor"] = {
  { region = "CrystalCavesLobby", logic = function() return ((not settings.wrinkly_location_rando()) and ((state.punch() and state.chunky() and state.barrels()) or settings.remove_wrinkly_puzzles())) end },
}
M.locations["HoldableBoulderCavesLobby"] = {
  { region = "CrystalCavesLobby", logic = function() return (state.barrels() and state.chunky() and (state.punch() or state.CanPhase())) end },
}
M.locations["IslesLankyCastleLobby"] = {
  { region = "CreepyCastleLobby", logic = function() return ((state.chunky() and state.balloon() and state.lanky() and state.barrels()) or ((state.CanMoonkick() or (state.monkey_maneuvers() and state.tiny() and state.twirl() and (not state.isKrushaAdjacent("tiny")))) and settings.free_trade_items())) end },
}
M.locations["IslesKasplatCastleLobby"] = {
  { region = "CreepyCastleLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.coconut() and state.donkey()) or state.CanPhase())) end },
}
M.locations["CastleDonkeyDoor"] = {
  { region = "CreepyCastleLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["CastleDiddyDoor"] = {
  { region = "CreepyCastleLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["CastleLankyDoor"] = {
  { region = "CreepyCastleLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["CastleTinyDoor"] = {
  { region = "CreepyCastleLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["CastleChunkyDoor"] = {
  { region = "CreepyCastleLobby", logic = function() return (not settings.wrinkly_location_rando()) end },
}
M.locations["RainbowCoin_Location15"] = {
  { region = "CreepyCastleLobby", logic = function() return ((state.chunky() and state.balloon() and state.lanky() and state.barrels()) or state.CanMoonkick() or (state.monkey_maneuvers() and state.tiny() and state.twirl() and (not state.isKrushaAdjacent("tiny")))) end },
}
M.locations["CastleLobbyEnemy_Left"] = {
  { region = "CreepyCastleLobby", logic = function() return true end },
}
M.locations["CastleLobbyEnemy_FarRight"] = {
  { region = "CreepyCastleLobby", logic = function() return true end },
}
M.locations["CastleLobbyEnemy_NearRight"] = {
  { region = "CreepyCastleLobby", logic = function() return true end },
}
M.locations["KremKap_CastleLobbyEnemy_Left"] = {
  { region = "CreepyCastleLobby", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLobbyEnemy_FarRight"] = {
  { region = "CreepyCastleLobby", logic = function() return state.camera() end },
}
M.locations["KremKap_CastleLobbyEnemy_NearRight"] = {
  { region = "CreepyCastleLobby", logic = function() return state.camera() end },
}
M.locations["HoldableBoulderCastleLobby"] = {
  { region = "CreepyCastleLobby", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["IslesChunkyHelmLobby"] = {
  { region = "HideoutHelmLobby", logic = function() return ((state.hasMoveSwitchsanity("IslesHelmLobbyGone", false) and state.chunky() and state.can_use_vines()) or ((settings.bonus_barrels() == "skip") and state.monkey_maneuvers() and state.tiny() and state.twirl() and settings.free_trade_items())) end },
}
M.locations["IslesKasplatHelmLobby"] = {
  { region = "HideoutHelmLobby", logic = function() return ((not settings.kasplat_rando()) and ((state.scope() and state.coconut()) or (state.twirl() and state.tiny() and state.monkey_maneuvers()))) end },
}
M.locations["FactoryDonkeyMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "donkey") >= settings.medal_cb_req_level(2)) end },
}
M.locations["FactoryDiddyMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "diddy") >= settings.medal_cb_req_level(2)) end },
}
M.locations["FactoryLankyMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "lanky") >= settings.medal_cb_req_level(2)) end },
}
M.locations["FactoryTinyMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "tiny") >= settings.medal_cb_req_level(2)) end },
}
M.locations["FactoryChunkyMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "chunky") >= settings.medal_cb_req_level(2)) end },
}
M.locations["FactoryDonkeyHalfMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
}
M.locations["FactoryDiddyHalfMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
}
M.locations["FactoryLankyHalfMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
}
M.locations["FactoryTinyHalfMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
}
M.locations["FactoryChunkyHalfMedal"] = {
  { region = "FranticFactoryMedals", logic = function() return (state.cb("FranticFactory", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(2) / (2 ^ 1))))) end },
}
M.locations["FactoryMainEnemy_LobbyLeft"] = {
  { region = "FranticFactoryStart", logic = function() return true end },
}
M.locations["FactoryMainEnemy_LobbyRight"] = {
  { region = "FranticFactoryStart", logic = function() return true end },
}
M.locations["FactoryMainEnemy_TunnelToHatch"] = {
  { region = "FranticFactoryStart", logic = function() return true end },
}
M.locations["KremKap_FactoryMainEnemy_LobbyLeft"] = {
  { region = "FranticFactoryStart", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_LobbyRight"] = {
  { region = "FranticFactoryStart", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToHatch"] = {
  { region = "FranticFactoryStart", logic = function() return state.camera() end },
}
M.locations["Balloon025"] = {
  { region = "FranticFactoryStart", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["FactoryDonkeyNumberGame"] = {
  { region = "Testing", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.donkey()) end },
}
M.locations["FactoryDiddyBlockTower"] = {
  { region = "Testing", logic = function() return ((state.spring() or state.CanMoontail()) and state.diddy()) end },
}
M.locations["FactoryLankyTestingRoomBarrel"] = {
  { region = "Testing", logic = function() return ((state.balloon() or state.monkey_maneuvers()) and state.lanky()) end },
}
M.locations["FactoryTinyDartboard"] = {
  { region = "Testing", logic = function() return (state.event("DartsPlayed") and state.tiny()) end },
}
M.locations["FactoryKasplatBlocks"] = {
  { region = "Testing", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["FactoryBananaFairybyCounting"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["FactoryBananaFairybyFunky"] = {
  { region = "Testing", logic = function() return (state.camera() and state.event("DartsPlayed")) end },
}
M.locations["MelonCrate_Location03"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["FactoryMainEnemy_BlockTower0"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["FactoryMainEnemy_BlockTower1"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["FactoryMainEnemy_BlockTower2"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["FactoryMainEnemy_TunnelToBlockTower"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["FactoryMainEnemy_ToBlockTowerTunnel"] = {
  { region = "Testing", logic = function() return true end },
}
M.locations["KremKap_FactoryMainEnemy_BlockTower0"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_BlockTower1"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_BlockTower2"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToBlockTower"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_ToBlockTowerTunnel"] = {
  { region = "Testing", logic = function() return state.camera() end },
}
M.locations["FactoryDonkeyDKArcade"] = {
  { region = "Testing", logic = function() return ((not state.checkFastCheck("factory_arcade_round_1")) and (state.CanOStandTBSNoclip() and state.spawn_snags())) end },
  { region = "FactoryArcadeTunnel", logic = function() return ((not state.checkFastCheck("factory_arcade_round_1")) and (state.event("ArcadeLeverSpawned") and state.grab() and state.donkey())) end },
  { region = "FactoryBaboonBlast", logic = function() return (state.checkFastCheck("factory_arcade_round_1") and state.donkey()) end },
}
M.locations["Balloon026"] = {
  { region = "Testing", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon028"] = {
  { region = "Testing", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["Balloon033"] = {
  { region = "Testing", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["Balloon036"] = {
  { region = "Testing", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["FactoryDiddyRandD"] = {
  { region = "RandDUpper", logic = function() return ((state.guitar() or state.CanAccessRNDRoom()) and state.charge() and state.diddy()) end },
}
M.locations["FactoryChunkyRandD"] = {
  { region = "RandDUpper", logic = function() return (((state.triangle() and state.climbing()) or state.CanAccessRNDRoom()) and state.punch() and state.hunkyChunky() and state.chunky() and state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false)) end },
}
M.locations["FactoryKasplatRandD"] = {
  { region = "RandDUpper", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["FactoryBattleArena"] = {
  { region = "RandDUpper", logic = function() return ((not settings.crown_placement_rando()) and ((state.grab() and state.donkey()) or state.CanAccessRNDRoom())) end },
}
M.locations["Balloon029"] = {
  { region = "RandDUpper", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
}
M.locations["Balloon030"] = {
  { region = "RandDUpper", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
}
M.locations["Balloon031"] = {
  { region = "RandDUpper", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["Balloon034"] = {
  { region = "RandDUpper", logic = function() return (state.diddy() and state.peanut() and (state.guitar() or state.CanAccessRNDRoom())) end },
}
M.locations["Balloon038"] = {
  { region = "RandDUpper", logic = function() return (state.chunky() and state.pineapple() and ((state.triangle() and state.climbing() and state.hasMoveSwitchsanity("FactoryToyMonsterGrate", false)) or state.CanAccessRNDRoom())) end },
}
M.locations["FactoryLankyRandD"] = {
  { region = "RandD", logic = function() return ((((state.trombone() or state.CanAccessRNDRoom()) and state.CanSlamSwitch("FranticFactory", 1)) or (state.CanOStandTBSNoclip() and state.spawn_snags())) and state.lanky()) end },
}
M.locations["Balloon027"] = {
  { region = "RandD", logic = function() return (state.lanky() and state.grape() and (state.trombone() or state.CanAccessRNDRoom())) end },
}
M.locations["FactoryMainEnemy_TunnelToRace0"] = {
  { region = "RandD", logic = function() return true end },
}
M.locations["FactoryMainEnemy_TunnelToRace1"] = {
  { region = "RandD", logic = function() return true end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToRace0"] = {
  { region = "RandD", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToRace1"] = {
  { region = "RandD", logic = function() return state.camera() end },
}
M.locations["FactoryTinyCarRace"] = {
  { region = "FactoryTinyRace", logic = function() return state.HasEnoughRaceCoins("FactoryTinyRace", "tiny", (not settings.free_trade_items())) end },
}
M.locations["FactoryDiddyChunkyRoomBarrel"] = {
  { region = "ChunkyRoomPlatform", logic = function() return (state.CanSlamSwitch("FranticFactory", 1) and state.diddy() and (state.can_use_vines() or (settings.bonus_barrels() == "skip"))) end },
}
M.locations["FactoryDonkeyPowerHut"] = {
  { region = "PowerHut", logic = function() return (state.event("MainCoreActivated") and (state.donkey() or settings.free_trade_items())) end },
}
M.locations["ChunkyKong"] = {
  { region = "BeyondHatch", logic = function() return state.event("ChunkyFreed") end },
}
M.locations["FactoryLankyFreeChunky"] = {
  { region = "BeyondHatch", logic = function() return state.event("ChunkyFreed") end },
}
M.locations["FactoryChunkyDarkRoom"] = {
  { region = "BeyondHatch", logic = function() return ((state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) and ((state.punch() and state.CanSlamSwitch("FranticFactory", 1)) or state.generalclips()) and state.chunky()) end },
}
M.locations["BreakableFactoryDarkRoom"] = {
  { region = "BeyondHatch", logic = function() return ((state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) and state.Slam() and state.chunky()) end },
}
M.locations["RainbowCoin_Location02"] = {
  { region = "BeyondHatch", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
}
M.locations["FactoryKasplatStorage"] = {
  { region = "BeyondHatch", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["MelonCrate_Location04"] = {
  { region = "BeyondHatch", logic = function() return true end },
}
M.locations["FactoryMainEnemy_CandyCranky0"] = {
  { region = "BeyondHatch", logic = function() return true end },
}
M.locations["FactoryMainEnemy_CandyCranky1"] = {
  { region = "BeyondHatch", logic = function() return true end },
}
M.locations["FactoryMainEnemy_DarkRoom0"] = {
  { region = "BeyondHatch", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
}
M.locations["FactoryMainEnemy_DarkRoom1"] = {
  { region = "BeyondHatch", logic = function() return (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase()) end },
}
M.locations["FactoryMainEnemy_StorageRoom"] = {
  { region = "BeyondHatch", logic = function() return true end },
}
M.locations["KremKap_FactoryMainEnemy_CandyCranky0"] = {
  { region = "BeyondHatch", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_CandyCranky1"] = {
  { region = "BeyondHatch", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_DarkRoom0"] = {
  { region = "BeyondHatch", logic = function() return (state.camera() and (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase())) end },
}
M.locations["KremKap_FactoryMainEnemy_DarkRoom1"] = {
  { region = "BeyondHatch", logic = function() return (state.camera() and (state.hasMoveSwitchsanity("FactoryDarkRoomGrate", false) or state.CanPhase())) end },
}
M.locations["KremKap_FactoryMainEnemy_StorageRoom"] = {
  { region = "BeyondHatch", logic = function() return state.camera() end },
}
M.locations["Balloon032"] = {
  { region = "BeyondHatch", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["NintendoCoin"] = {
  { region = "FactoryArcadeTunnel", logic = function() return (state.event("ArcadeLeverSpawned") and state.grab() and state.donkey() and (state.GetCoins("donkey") >= 2)) end },
}
M.locations["FactoryTinybyArcade"] = {
  { region = "FactoryArcadeTunnel", logic = function() return ((state.mini() and state.tiny()) or state.CanPhase()) end },
}
M.locations["FactoryChunkybyArcade"] = {
  { region = "FactoryArcadeTunnel", logic = function() return (((state.hasMoveSwitchsanity("FactoryArcadeTunnelGrate", false) or state.CanPhase()) and state.chunky()) or (state.CanPhase() and settings.free_trade_items())) end },
}
M.locations["FactoryKasplatProductionBottom"] = {
  { region = "LowerCore", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["FactoryMainEnemy_LowWarp4"] = {
  { region = "LowerCore", logic = function() return true end },
}
M.locations["FactoryMainEnemy_DiddySwitch"] = {
  { region = "LowerCore", logic = function() return true end },
}
M.locations["FactoryMainEnemy_TunnelToProd0"] = {
  { region = "LowerCore", logic = function() return true end },
}
M.locations["FactoryMainEnemy_TunnelToProd1"] = {
  { region = "LowerCore", logic = function() return true end },
}
M.locations["KremKap_FactoryMainEnemy_LowWarp4"] = {
  { region = "LowerCore", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_DiddySwitch"] = {
  { region = "LowerCore", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToProd0"] = {
  { region = "LowerCore", logic = function() return state.camera() end },
}
M.locations["KremKap_FactoryMainEnemy_TunnelToProd1"] = {
  { region = "LowerCore", logic = function() return state.camera() end },
}
M.locations["FactoryDonkeyCrusherRoom"] = {
  { region = "InsideCore", logic = function() return ((state.strongKong() and state.donkey()) or state.generalclips() or state.CanPhase()) end },
}
M.locations["Balloon053"] = {
  { region = "InsideCore", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["Balloon035"] = {
  { region = "MiddleCore", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["FactoryChunkyProductionRoom"] = {
  { region = "SpinningCore", logic = function() return (state.event("ChunkyCoreSwitch") and state.event("MainCoreActivated") and state.chunky()) end },
}
M.locations["FactoryDiddyProductionRoom"] = {
  { region = "UpperCore", logic = function() return (state.event("DiddyCoreSwitch") and state.event("MainCoreActivated") and state.spring() and state.diddy()) end },
}
M.locations["FactoryLankyProductionRoom"] = {
  { region = "UpperCore", logic = function() return (state.event("LankyCoreSwitch") and state.event("MainCoreActivated") and ((state.handstand() and state.lanky()) or (state.tiny() and settings.free_trade_items() and state.slope_resets()))) end },
}
M.locations["FactoryTinyProductionRoom"] = {
  { region = "UpperCore", logic = function() return (state.event("TinyCoreSwitch") and state.event("MainCoreActivated") and state.twirl() and state.tiny()) end },
}
M.locations["FactoryKasplatProductionTop"] = {
  { region = "UpperCore", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["Balloon037"] = {
  { region = "UpperCore", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["FactoryKey"] = {
  { region = "FactoryBoss", logic = function() return state.IsBossBeatable("FranticFactory") end },
}
M.locations["ForestDonkeyMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "donkey") >= settings.medal_cb_req_level(4)) end },
}
M.locations["ForestDiddyMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "diddy") >= settings.medal_cb_req_level(4)) end },
}
M.locations["ForestLankyMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "lanky") >= settings.medal_cb_req_level(4)) end },
}
M.locations["ForestTinyMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "tiny") >= settings.medal_cb_req_level(4)) end },
}
M.locations["ForestChunkyMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "chunky") >= settings.medal_cb_req_level(4)) end },
}
M.locations["ForestDonkeyHalfMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
}
M.locations["ForestDiddyHalfMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
}
M.locations["ForestLankyHalfMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
}
M.locations["ForestTinyHalfMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
}
M.locations["ForestChunkyHalfMedal"] = {
  { region = "FungiForestMedals", logic = function() return (state.cb("FungiForest", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(4) / (2 ^ 1))))) end },
}
M.locations["ForestMainEnemy_NearAppleDropoff"] = {
  { region = "FungiForestStart", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearDKPortal"] = {
  { region = "FungiForestStart", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearWellTag"] = {
  { region = "FungiForestStart", logic = function() return true end },
}
M.locations["ForestMainEnemy_GreenTunnel"] = {
  { region = "FungiForestStart", logic = function() return (state.checkBarrier("forest_green_tunnel") or state.hasMoveSwitchsanity("FungiGreenFeather", false)) end },
}
M.locations["KremKap_ForestMainEnemy_NearAppleDropoff"] = {
  { region = "FungiForestStart", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearDKPortal"] = {
  { region = "FungiForestStart", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearWellTag"] = {
  { region = "FungiForestStart", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_GreenTunnel"] = {
  { region = "FungiForestStart", logic = function() return (state.camera() and (state.checkBarrier("forest_green_tunnel") or state.hasMoveSwitchsanity("FungiGreenFeather", false))) end },
}
M.locations["ForestChunkyMinecarts"] = {
  { region = "ForestMinecarts", logic = function() return state.HasEnoughRaceCoins("ForestMinecarts", "chunky", (not settings.free_trade_items())) end },
}
M.locations["ForestDiddyTopofMushroom"] = {
  { region = "GiantMushroomArea", logic = function() return (state.jetpack() and state.diddy()) end },
}
M.locations["ForestLankyRabbitRace"] = {
  { region = "GiantMushroomArea", logic = function() return (state.CanOStandTBSNoclip() and state.spawn_snags()) end },
  { region = "HollowTreeArea", logic = function() return (state.TimeAccess("HollowTreeArea", "Day") and state.trombone() and state.sprint() and state.lanky()) end },
}
M.locations["ForestMainEnemy_YellowTunnel0"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearLowWarp5"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearPinkTunnelBounceTag"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearGMRocketbarrel"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_BetweenYellowTunnelAndRB"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearCranky"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearPinkTunnelGM"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_GMRearTag"] = {
  { region = "GiantMushroomArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_YellowTunnel0"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearLowWarp5"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearPinkTunnelBounceTag"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearGMRocketbarrel"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_BetweenYellowTunnelAndRB"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearCranky"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearPinkTunnelGM"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_GMRearTag"] = {
  { region = "GiantMushroomArea", logic = function() return state.camera() end },
}
M.locations["Balloon068"] = {
  { region = "MushroomLower", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["ForestTinyMushroomBarrel"] = {
  { region = "MushroomLowerMid", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and state.tiny() and state.climbing()) end },
}
M.locations["ForestMainEnemy_NearBBlast"] = {
  { region = "MushroomBlastLevelExterior", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_NearBBlast"] = {
  { region = "MushroomBlastLevelExterior", logic = function() return state.camera() end },
}
M.locations["ForestKasplatLowerMushroomExterior"] = {
  { region = "MushroomLowerExterior", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["Balloon060"] = {
  { region = "MushroomLowerExterior", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["ForestDonkeyBaboonBlast"] = {
  { region = "ForestBaboonBlast", logic = function() return state.donkey() end },
}
M.locations["ForestKasplatInsideMushroom"] = {
  { region = "MushroomMiddle", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["ForestGMEnemy_Path0"] = {
  { region = "MushroomUpperMid", logic = function() return true end },
}
M.locations["ForestGMEnemy_Path1"] = {
  { region = "MushroomUpperMid", logic = function() return true end },
}
M.locations["KremKap_ForestGMEnemy_Path0"] = {
  { region = "MushroomUpperMid", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestGMEnemy_Path1"] = {
  { region = "MushroomUpperMid", logic = function() return state.camera() end },
}
M.locations["ForestGMEnemy_AboveNightDoor"] = {
  { region = "MushroomUpperVineFloor", logic = function() return true end },
}
M.locations["KremKap_ForestGMEnemy_AboveNightDoor"] = {
  { region = "MushroomUpperVineFloor", logic = function() return state.camera() end },
}
M.locations["ForestDonkeyMushroomCannons"] = {
  { region = "MushroomUpper", logic = function() return (state.event("MushroomCannonsSpawned") and state.event("DonkeyMushroomSwitch")) end },
}
M.locations["Balloon067"] = {
  { region = "MushroomUpper", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["ForestKasplatUpperMushroomExterior"] = {
  { region = "MushroomNightExterior", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["Balloon062"] = {
  { region = "MushroomNightExterior", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["ForestBattleArena"] = {
  { region = "MushroomUpperExterior", logic = function() return ((not settings.crown_placement_rando()) and ((not state.IsHardFallDamage()) or (state.tiny() and state.twirl()) or (state.diddy() and state.jetpack()) or state.event("Night"))) end },
}
M.locations["ForestMainEnemy_NearFacePuzzle"] = {
  { region = "MushroomUpperExterior", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearCrown"] = {
  { region = "MushroomUpperExterior", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearHighWarp5"] = {
  { region = "MushroomUpperExterior", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_NearFacePuzzle"] = {
  { region = "MushroomUpperExterior", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearCrown"] = {
  { region = "MushroomUpperExterior", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearHighWarp5"] = {
  { region = "MushroomUpperExterior", logic = function() return state.camera() end },
}
M.locations["ForestMainEnemy_TopOfMushroom"] = {
  { region = "MushroomVeryTopExterior", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_TopOfMushroom"] = {
  { region = "MushroomVeryTopExterior", logic = function() return state.camera() end },
}
M.locations["ForestChunkyFacePuzzle"] = {
  { region = "MushroomChunkyRoom", logic = function() return (state.pineapple() and state.CanSlamSwitch("FungiForest", 2) and state.chunky()) end },
}
M.locations["ForestFacePuzzleEnemy_Enemy"] = {
  { region = "MushroomChunkyRoom", logic = function() return true end },
}
M.locations["KremKap_ForestFacePuzzleEnemy_Enemy"] = {
  { region = "MushroomChunkyRoom", logic = function() return state.camera() end },
}
M.locations["Balloon069"] = {
  { region = "MushroomChunkyRoom", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["ForestLankyZingers"] = {
  { region = "MushroomLankyZingersRoom", logic = function() return (state.lanky() or settings.free_trade_items()) end },
}
M.locations["ForestLeapEnemy_Enemy0"] = {
  { region = "MushroomLankyZingersRoom", logic = function() return true end },
}
M.locations["ForestLeapEnemy_Enemy1"] = {
  { region = "MushroomLankyZingersRoom", logic = function() return true end },
}
M.locations["KremKap_ForestLeapEnemy_Enemy0"] = {
  { region = "MushroomLankyZingersRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestLeapEnemy_Enemy1"] = {
  { region = "MushroomLankyZingersRoom", logic = function() return state.camera() end },
}
M.locations["ForestLankyColoredMushrooms"] = {
  { region = "MushroomLankyMushroomsRoom", logic = function() return (state.Slam() and (state.lanky() or settings.free_trade_items())) end },
}
M.locations["ForestDiddyOwlRace"] = {
  { region = "HollowTreeArea", logic = function() return (state.TimeAccess("HollowTreeArea", "Night") and state.jetpack() and state.guitar() and state.diddy()) end },
}
M.locations["ForestKasplatOwlTree"] = {
  { region = "HollowTreeArea", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["MelonCrate_Location08"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_YellowTunnel1"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_YellowTunnel2"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_YellowTunnel3"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_HollowTree0"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_HollowTree1"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_HollowTreeEntrance"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_TreeMelonCrate0"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_TreeMelonCrate1"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_TreeMelonCrate2"] = {
  { region = "HollowTreeArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_YellowTunnel1"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_YellowTunnel2"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_YellowTunnel3"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_HollowTree0"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_HollowTree1"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_HollowTreeEntrance"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_TreeMelonCrate0"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_TreeMelonCrate1"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_TreeMelonCrate2"] = {
  { region = "HollowTreeArea", logic = function() return state.camera() end },
}
M.locations["ForestTinyAnthill"] = {
  { region = "Anthill", logic = function() return ((state.tiny() or settings.free_trade_items()) and (state.oranges() or state.saxophone() or (settings.free_trade_items() and state.HasInstrument("any")))) end },
}
M.locations["ForestBean"] = {
  { region = "Anthill", logic = function() return ((state.tiny() or settings.free_trade_items()) and (state.oranges() or state.saxophone() or (settings.free_trade_items() and state.HasInstrument("any")))) end },
}
M.locations["ForestAnthillEnemy_Gauntlet0"] = {
  { region = "Anthill", logic = function() return true end },
}
M.locations["ForestAnthillEnemy_Gauntlet1"] = {
  { region = "Anthill", logic = function() return true end },
}
M.locations["ForestAnthillEnemy_Gauntlet2"] = {
  { region = "Anthill", logic = function() return true end },
}
M.locations["ForestAnthillEnemy_Gauntlet3"] = {
  { region = "Anthill", logic = function() return true end },
}
M.locations["KremKap_ForestAnthillEnemy_Gauntlet0"] = {
  { region = "Anthill", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestAnthillEnemy_Gauntlet1"] = {
  { region = "Anthill", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestAnthillEnemy_Gauntlet2"] = {
  { region = "Anthill", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestAnthillEnemy_Gauntlet3"] = {
  { region = "Anthill", logic = function() return state.camera() end },
}
M.locations["ForestDonkeyMill"] = {
  { region = "MillArea", logic = function() return ((state.TimeAccess("MillArea", "Night") or state.CanPhase() or state.CanPhaseswim() or state.ledgeclip()) and state.event("ConveyorActivated") and state.donkey()) end },
}
M.locations["ForestDiddyCagedBanana"] = {
  { region = "MillArea", logic = function() return ((state.TimeAccess("MillArea", "Night") and state.event("WinchRaised") and state.guitar() and state.diddy()) or ((state.CanPhaseswim() or state.ledgeclip()) and (state.diddy() or settings.free_trade_items()))) end },
}
M.locations["RainbowCoin_Location07"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["MelonCrate_Location10"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearSnide"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearIsoCoin"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearDarkAttic"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearWellExit"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearBlueTunnel"] = {
  { region = "MillArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_NearSnide"] = {
  { region = "MillArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearIsoCoin"] = {
  { region = "MillArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearDarkAttic"] = {
  { region = "MillArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearWellExit"] = {
  { region = "MillArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearBlueTunnel"] = {
  { region = "MillArea", logic = function() return state.camera() end },
}
M.locations["Balloon059"] = {
  { region = "MillArea", logic = function() return (state.diddy() and state.peanut() and (state.climbing() or state.TimeAccess("MillArea", "Day"))) end },
}
M.locations["Balloon061"] = {
  { region = "MillArea", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["ForestMillRearEnemy_Enemy"] = {
  { region = "MillChunkyTinyArea", logic = function() return true end },
}
M.locations["KremKap_ForestMillRearEnemy_Enemy"] = {
  { region = "MillChunkyTinyArea", logic = function() return state.camera() end },
}
M.locations["HoldableKegMillRear"] = {
  { region = "MillChunkyTinyArea", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["BreakableForestMillRearTriangle"] = {
  { region = "MillChunkyTinyArea", logic = function() return (state.punch() and state.chunky()) end },
}
M.locations["BreakableForestMillRearMini"] = {
  { region = "MillChunkyTinyArea", logic = function() return (state.punch() and state.chunky()) end },
}
M.locations["ForestTinySpiderBoss"] = {
  { region = "SpiderRoom", logic = function() return (state.HasGun("tiny") or (settings.free_trade_items() and state.HasGun("any"))) end },
}
M.locations["ForestChunkyKegs"] = {
  { region = "GrinderRoom", logic = function() return (state.event("GrinderActivated") and state.event("ConveyorActivated") and state.chunky() and state.barrels()) end },
}
M.locations["ForestMillFrontEnemy_Enemy"] = {
  { region = "GrinderRoom", logic = function() return true end },
}
M.locations["KremKap_ForestMillFrontEnemy_Enemy"] = {
  { region = "GrinderRoom", logic = function() return state.camera() end },
}
M.locations["HoldableKegMillFrontFar"] = {
  { region = "GrinderRoom", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["HoldableKegMillFrontNear"] = {
  { region = "GrinderRoom", logic = function() return (state.barrels() and state.chunky()) end },
}
M.locations["BreakableForestMillFront"] = {
  { region = "GrinderRoom", logic = function() return state.Slam() end },
}
M.locations["Balloon066"] = {
  { region = "GrinderRoom", logic = function() return (state.donkey() and state.coconut() and state.Slam() and state.CanSlamSwitch("FungiForest", 2)) end },
}
M.locations["ForestDiddyRafters"] = {
  { region = "MillRafters", logic = function() return (state.guitar() and state.diddy()) end },
}
M.locations["ForestBananaFairyRafters"] = {
  { region = "MillRafters", logic = function() return (state.guitar() and state.diddy() and state.camera()) end },
}
M.locations["ForestWinchEnemy_Enemy"] = {
  { region = "WinchRoom", logic = function() return true end },
}
M.locations["KremKap_ForestWinchEnemy_Enemy"] = {
  { region = "WinchRoom", logic = function() return state.camera() end },
}
M.locations["Balloon065"] = {
  { region = "WinchRoom", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["ForestLankyAttic"] = {
  { region = "MillAttic", logic = function() return (state.CanSlamSwitch("FungiForest", 2) and (state.homing() or state.hard_shooting()) and state.grape() and state.lanky()) end },
}
M.locations["ForestKasplatNearBarn"] = {
  { region = "ThornvineArea", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["MelonCrate_Location09"] = {
  { region = "ThornvineArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_Thornvine0"] = {
  { region = "ThornvineArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_Thornvine1"] = {
  { region = "ThornvineArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_Thornvine2"] = {
  { region = "ThornvineArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_ThornvineEntrance"] = {
  { region = "ThornvineArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_Thornvine0"] = {
  { region = "ThornvineArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_Thornvine1"] = {
  { region = "ThornvineArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_Thornvine2"] = {
  { region = "ThornvineArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_ThornvineEntrance"] = {
  { region = "ThornvineArea", logic = function() return state.camera() end },
}
M.locations["Balloon063"] = {
  { region = "ThornvineArea", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["ForestDonkeyBarn"] = {
  { region = "ThornvineBarn", logic = function() return (state.CanSlamSwitch("FungiForest", 1) and state.donkey() and ((state.climbing() and (state.can_use_vines() or state.monkey_maneuvers())) or (settings.bonus_barrels() == "skip"))) end },
}
M.locations["MelonCrate_Location11"] = {
  { region = "ThornvineBarn", logic = function() return true end },
}
M.locations["ForestThornBarnEnemy_Enemy"] = {
  { region = "ThornvineBarn", logic = function() return true end },
}
M.locations["KremKap_ForestThornBarnEnemy_Enemy"] = {
  { region = "ThornvineBarn", logic = function() return state.camera() end },
}
M.locations["BreakableForestThornvine"] = {
  { region = "ThornvineBarn", logic = function() return (state.Slam() and state.donkey()) end },
}
M.locations["ForestBananaFairyThornvines"] = {
  { region = "ThornvineBarnAboveLadder", logic = function() return (state.donkey() and state.Slam() and state.camera()) end },
}
M.locations["ForestTinyBeanstalk"] = {
  { region = "WormArea", logic = function() return (state.saxophone() and state.mini() and state.tiny() and (state.Beans() >= 1)) end },
}
M.locations["ForestChunkyApple"] = {
  { region = "WormArea", logic = function() return (state.event("WormGatesOpened") and state.hunkyChunky() and state.chunky() and state.barrels()) end },
}
M.locations["RainbowCoin_Location08"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearBeanstalk0"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_NearBeanstalk1"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_NearBeanstalk0"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_NearBeanstalk1"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["ForestMainEnemy_AppleGauntlet0"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_AppleGauntlet1"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_AppleGauntlet2"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["ForestMainEnemy_AppleGauntlet3"] = {
  { region = "WormArea", logic = function() return true end },
}
M.locations["KremKap_ForestMainEnemy_AppleGauntlet0"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_AppleGauntlet1"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_AppleGauntlet2"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["KremKap_ForestMainEnemy_AppleGauntlet3"] = {
  { region = "WormArea", logic = function() return state.camera() end },
}
M.locations["ForestKey"] = {
  { region = "ForestBoss", logic = function() return state.IsBossBeatable("FungiForest") end },
}
M.locations["GalleonDonkeyMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "donkey") >= settings.medal_cb_req_level(3)) end },
}
M.locations["GalleonDiddyMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "diddy") >= settings.medal_cb_req_level(3)) end },
}
M.locations["GalleonLankyMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "lanky") >= settings.medal_cb_req_level(3)) end },
}
M.locations["GalleonTinyMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "tiny") >= settings.medal_cb_req_level(3)) end },
}
M.locations["GalleonChunkyMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "chunky") >= settings.medal_cb_req_level(3)) end },
}
M.locations["GalleonDonkeyHalfMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
}
M.locations["GalleonDiddyHalfMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
}
M.locations["GalleonLankyHalfMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
}
M.locations["GalleonTinyHalfMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
}
M.locations["GalleonChunkyHalfMedal"] = {
  { region = "GloomyGalleonMedals", logic = function() return (state.cb("GloomyGalleon", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
}
M.locations["GalleonChunkyChest"] = {
  { region = "GloomyGalleonStart", logic = function() return (state.punch() and state.chunky()) end },
}
M.locations["BreakableGalleonHeadphonesChest"] = {
  { region = "GloomyGalleonStart", logic = function() return (state.punch() and state.chunky()) end },
}
M.locations["GalleonBattleArena"] = {
  { region = "GloomyGalleonStart", logic = function() return ((not settings.crown_placement_rando()) and ((state.punch() and state.chunky()) or state.CanPhase() or state.CanSkew(false, false))) end },
}
M.locations["GalleonBananaFairybyCranky"] = {
  { region = "GloomyGalleonStart", logic = function() return (state.camera() and state.punch() and state.chunky()) end },
}
M.locations["GalleonMainEnemy_ChestRoom0"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["GalleonMainEnemy_ChestRoom1"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["GalleonMainEnemy_NearVineCannon"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["GalleonMainEnemy_CrankyCannon"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["GalleonMainEnemy_PeanutTunnel"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["GalleonMainEnemy_CoconutTunnel"] = {
  { region = "GloomyGalleonStart", logic = function() return true end },
}
M.locations["KremKap_GalleonMainEnemy_ChestRoom0"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_ChestRoom1"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_NearVineCannon"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_CrankyCannon"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_PeanutTunnel"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_CoconutTunnel"] = {
  { region = "GloomyGalleonStart", logic = function() return state.camera() end },
}
M.locations["Balloon041"] = {
  { region = "GloomyGalleonStart", logic = function() return (((state.chunky() and state.punch()) or state.CanPhase() or state.CanSkew(false, false)) and state.lanky() and state.grape()) end },
}
M.locations["Balloon042"] = {
  { region = "GloomyGalleonStart", logic = function() return (((state.chunky() and state.punch()) or state.CanPhase() or state.CanSkew(false, false)) and state.lanky() and state.grape()) end },
}
M.locations["Balloon046"] = {
  { region = "GloomyGalleonStart", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["GalleonKasplatNearLab"] = {
  { region = "GalleonPastVines", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["GalleonChunkyCannonGame"] = {
  { region = "GalleonBeyondPineappleGate", logic = function() return (state.CanGetOnCannonGamePlatform() and state.chunky() and state.barrels()) end },
}
M.locations["GalleonKasplatCannons"] = {
  { region = "GalleonBeyondPineappleGate", logic = function() return ((not settings.kasplat_rando()) and state.CanGetOnCannonGamePlatform()) end },
}
M.locations["Balloon048"] = {
  { region = "GalleonBeyondPineappleGate", logic = function() return (state.chunky() and state.pineapple() and state.CanGetOnCannonGamePlatform()) end },
}
M.locations["GalleonKasplatLighthouseArea"] = {
  { region = "LighthouseSurface", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["Balloon040"] = {
  { region = "LighthouseSurface", logic = function() return (state.tiny() and state.feather() and state.event("WaterLowered")) end },
}
M.locations["GalleonDiddyShipSwitch"] = {
  { region = "LighthousePlatform", logic = function() return (state.event("ActivatedLighthouse") and state.jetpack() and state.CanSlamSwitch("GloomyGalleon", 1) and state.diddy()) end },
}
M.locations["Balloon044"] = {
  { region = "LighthousePlatform", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["Balloon045"] = {
  { region = "LighthousePlatform", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["GalleonLankyEnguardeChest"] = {
  { region = "LighthouseUnderwater", logic = function() return (state.event("LighthouseEnguarde") and state.lanky()) end },
}
M.locations["BreakableGalleonHighHole"] = {
  { region = "LighthouseUnderwater", logic = function() return state.event("LighthouseEnguarde") end },
}
M.locations["BreakableGalleonHighKevin"] = {
  { region = "LighthouseUnderwater", logic = function() return state.event("LighthouseEnguarde") end },
}
M.locations["BreakableGalleonMidKevin"] = {
  { region = "LighthouseUnderwater", logic = function() return state.event("LighthouseEnguarde") end },
}
M.locations["BreakableGalleonMidHole"] = {
  { region = "LighthouseUnderwater", logic = function() return state.event("LighthouseEnguarde") end },
}
M.locations["Balloon051"] = {
  { region = "LighthouseSnideAlcove", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["RainbowCoin_Location09"] = {
  { region = "Lighthouse", logic = function() return true end },
}
M.locations["GalleonLighthouseEnemy_Enemy0"] = {
  { region = "Lighthouse", logic = function() return true end },
}
M.locations["GalleonLighthouseEnemy_Enemy1"] = {
  { region = "Lighthouse", logic = function() return true end },
}
M.locations["KremKap_GalleonLighthouseEnemy_Enemy0"] = {
  { region = "Lighthouse", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonLighthouseEnemy_Enemy1"] = {
  { region = "Lighthouse", logic = function() return state.camera() end },
}
M.locations["Balloon064"] = {
  { region = "Lighthouse", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["GalleonDonkeyLighthouse"] = {
  { region = "LighthouseAboveLadder", logic = function() return (state.event("ActivatedLighthouse") and (state.donkey() or settings.free_trade_items())) end },
}
M.locations["GalleonTinyPearls"] = {
  { region = "MermaidRoom", logic = function() return ((state.Pearls() >= settings.mermaid_gb_pearls()) and (state.tiny() or settings.free_trade_items())) end },
}
M.locations["KremKap_GalleonNPC_Mermaid"] = {
  { region = "MermaidRoom", logic = function() return state.camera() end },
}
M.locations["GalleonChunkySeasick"] = {
  { region = "SickBay", logic = function() return (state.punch() and state.chunky()) end },
}
M.locations["GalleonDonkeyFreetheSeal"] = {
  { region = "Shipyard", logic = function() return (state.event("SealReleased") and (state.donkey() or settings.free_trade_items())) end },
}
M.locations["GalleonKasplatNearSub"] = {
  { region = "Shipyard", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["MelonCrate_Location05"] = {
  { region = "Shipyard", logic = function() return true end },
}
M.locations["KremKap_GalleonNPC_Seal"] = {
  { region = "Shipyard", logic = function() return (state.camera() and state.event("SealReleased")) end },
}
M.locations["Balloon039"] = {
  { region = "Shipyard", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["Balloon043"] = {
  { region = "Shipyard", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon049"] = {
  { region = "Shipyard", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon050"] = {
  { region = "Shipyard", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["KremKap_GalleonMainEnemy_Submarine"] = {
  { region = "ShipyardUnderwater", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_5DS0"] = {
  { region = "ShipyardUnderwater", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonMainEnemy_5DS1"] = {
  { region = "ShipyardUnderwater", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonNPC_Mechfish"] = {
  { region = "ShipyardUnderwater", logic = function() return (state.camera() and state.event("MechafishSummoned") and state.diddy()) end },
}
M.locations["BreakableGalleonCloseSubmarine"] = {
  { region = "ShipyardUnderwater", logic = function() return state.event("ShipyardEnguarde") end },
}
M.locations["BreakableGalleonClose2DS"] = {
  { region = "ShipyardUnderwater", logic = function() return state.event("ShipyardEnguarde") end },
}
M.locations["BreakableGalleonUnderTunnel"] = {
  { region = "ShipyardUnderwater", logic = function() return state.event("ShipyardEnguarde") end },
}
M.locations["BreakableGalleonUnderDiddy5DS"] = {
  { region = "ShipyardUnderwater", logic = function() return state.event("ShipyardEnguarde") end },
}
M.locations["BreakableGalleonNearMechFish"] = {
  { region = "ShipyardUnderwater", logic = function() return state.event("ShipyardEnguarde") end },
}
M.locations["GalleonDonkeySealRace"] = {
  { region = "SealRace", logic = function() return state.HasEnoughRaceCoins("GalleonSealRace", "donkey", (not settings.free_trade_items())) end },
}
M.locations["GalleonLankyGoldTower"] = {
  { region = "TreasureRoom", logic = function() return (((state.event("WaterRaised") or (state.event("ShipyardEnguarde") and state.event("ShipyardTreasureRoomOpened") and state.monkey_maneuvers())) and state.balloon() and state.lanky()) or (state.CanMoonkick() and settings.free_trade_items())) end },
}
M.locations["Balloon047"] = {
  { region = "TreasureRoom", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["Balloon052"] = {
  { region = "TreasureRoom", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["GalleonDiddyGoldTower"] = {
  { region = "TreasureRoomDiddyGoldTower", logic = function() return ((state.spring() and state.diddy()) or (state.CanMoonkick() and settings.free_trade_items())) end },
}
M.locations["GalleonKasplatGoldTower"] = {
  { region = "TreasureRoomDiddyGoldTower", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["GalleonPearl0"] = {
  { region = "TinyChest", logic = function() return true end },
}
M.locations["GalleonPearl1"] = {
  { region = "TinyChest", logic = function() return true end },
}
M.locations["GalleonPearl2"] = {
  { region = "TinyChest", logic = function() return true end },
}
M.locations["GalleonPearl3"] = {
  { region = "TinyChest", logic = function() return true end },
}
M.locations["GalleonPearl4"] = {
  { region = "TinyChest", logic = function() return true end },
}
M.locations["GalleonTinySubmarine"] = {
  { region = "Submarine", logic = function() return (state.tiny() or settings.free_trade_items()) end },
}
M.locations["KremKap_GalleonSubEnemy_Enemy0"] = {
  { region = "Submarine", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonSubEnemy_Enemy1"] = {
  { region = "Submarine", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonSubEnemy_Enemy2"] = {
  { region = "Submarine", logic = function() return state.camera() end },
}
M.locations["KremKap_GalleonSubEnemy_Enemy3"] = {
  { region = "Submarine", logic = function() return state.camera() end },
}
M.locations["GalleonDiddyMechafish"] = {
  { region = "Mechafish", logic = function() return (state.HasGun("diddy") or (settings.free_trade_items() and state.HasGun("any"))) end },
}
M.locations["GalleonLanky2DoorShip"] = {
  { region = "LankyShip", logic = function() return (state.lanky() or (settings.free_trade_items() and state.CanPhaseswim())) end },
}
M.locations["BreakableGalleon2DSNearest"] = {
  { region = "LankyShip", logic = function() return state.lanky() end },
}
M.locations["BreakableGalleon2DSNear"] = {
  { region = "LankyShip", logic = function() return state.lanky() end },
}
M.locations["BreakableGalleon2DSFar"] = {
  { region = "LankyShip", logic = function() return state.lanky() end },
}
M.locations["BreakableGalleon2DSFurthest"] = {
  { region = "LankyShip", logic = function() return state.lanky() end },
}
M.locations["GalleonTiny2DoorShip"] = {
  { region = "TinyShip", logic = function() return (state.tiny() or settings.free_trade_items()) end },
}
M.locations["KremKap_Galleon2DSEnemy_Tiny0"] = {
  { region = "TinyShip", logic = function() return state.camera() end },
}
M.locations["KremKap_Galleon2DSEnemy_Tiny1"] = {
  { region = "TinyShip", logic = function() return state.camera() end },
}
M.locations["GalleonDonkey5DoorShip"] = {
  { region = "BongosShip", logic = function() return (state.donkey() or settings.free_trade_items()) end },
}
M.locations["KremKap_Galleon5DSDTEnemy_DK0"] = {
  { region = "BongosShip", logic = function() return state.camera() end },
}
M.locations["KremKap_Galleon5DSDTEnemy_DK1"] = {
  { region = "BongosShip", logic = function() return state.camera() end },
}
M.locations["KremKap_Galleon5DSDTEnemy_DK2"] = {
  { region = "BongosShip", logic = function() return state.camera() end },
}
M.locations["GalleonDiddy5DoorShip"] = {
  { region = "GuitarShip", logic = function() return (state.diddy() or settings.free_trade_items()) end },
}
M.locations["KremKap_Galleon5DSDLCEnemy_Diddy"] = {
  { region = "GuitarShip", logic = function() return state.camera() end },
}
M.locations["GalleonLanky5DoorShip"] = {
  { region = "TromboneShip", logic = function() return (state.lanky() or settings.free_trade_items()) end },
}
M.locations["KremKap_Galleon5DSDLCEnemy_Lanky"] = {
  { region = "TromboneShip", logic = function() return state.camera() end },
}
M.locations["GalleonTiny5DoorShip"] = {
  { region = "SaxophoneShip", logic = function() return (state.tiny() or settings.free_trade_items()) end },
}
M.locations["GalleonBananaFairy5DoorShip"] = {
  { region = "SaxophoneShip", logic = function() return state.camera() end },
}
M.locations["KremKap_Galleon5DSDTEnemy_TinyCage"] = {
  { region = "SaxophoneShip", logic = function() return state.camera() end },
}
M.locations["KremKap_Galleon5DSDTEnemy_TinyBed"] = {
  { region = "SaxophoneShip", logic = function() return state.camera() end },
}
M.locations["GalleonChunky5DoorShip"] = {
  { region = "TriangleShip", logic = function() return (state.chunky() or settings.free_trade_items()) end },
}
M.locations["KremKap_Galleon5DSDLCEnemy_Chunky"] = {
  { region = "TriangleShip", logic = function() return state.camera() end },
}
M.locations["GalleonKey"] = {
  { region = "GalleonBoss", logic = function() return state.IsBossBeatable("GloomyGalleon") end },
}
M.locations["HelmDonkey1"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_donkey()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmDonkeyRoom", logic = function() return true end },
}
M.locations["HelmDonkey2"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_donkey()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmDonkeyRoom", logic = function() return true end },
}
M.locations["HelmChunky1"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_chunky()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmChunkyRoom", logic = function() return true end },
}
M.locations["HelmChunky2"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_chunky()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmChunkyRoom", logic = function() return true end },
}
M.locations["HelmTiny1"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_tiny()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmTinyRoom", logic = function() return true end },
}
M.locations["HelmTiny2"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_tiny()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmTinyRoom", logic = function() return true end },
}
M.locations["HelmLanky1"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_lanky()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmLankyRoom", logic = function() return true end },
}
M.locations["HelmLanky2"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_lanky()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmLankyRoom", logic = function() return true end },
}
M.locations["HelmDiddy1"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_diddy()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmDiddyRoom", logic = function() return true end },
}
M.locations["HelmDiddy2"] = {
  { region = "HideoutHelmEntry", logic = function() return ((not settings.helm_diddy()) or (settings.helm_setting() == "skip_all")) end },
  { region = "HideoutHelmDiddyRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_Start0"] = {
  { region = "HideoutHelmStart", logic = function() return true end },
}
M.locations["HelmMainEnemy_Start1"] = {
  { region = "HideoutHelmStart", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_Start0"] = {
  { region = "HideoutHelmStart", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_Start1"] = {
  { region = "HideoutHelmStart", logic = function() return state.camera() end },
}
M.locations["HelmMainEnemy_Hill"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_SwitchRoom0"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_SwitchRoom1"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_Hill"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_SwitchRoom0"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_SwitchRoom1"] = {
  { region = "HideoutHelmSwitchRoom", logic = function() return state.camera() end },
}
M.locations["HelmMainEnemy_MiniRoom0"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_MiniRoom1"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_MiniRoom2"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_MiniRoom3"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_MiniRoom0"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_MiniRoom1"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_MiniRoom2"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_MiniRoom3"] = {
  { region = "HideoutHelmMiniRoom", logic = function() return state.camera() end },
}
M.locations["HelmBattleArena"] = {
  { region = "HideoutHelmMain", logic = function() return ((not settings.crown_placement_rando()) and state.jetpack() and state.diddy() and state.event("HelmFinished")) end },
}
M.locations["HelmDonkeyMedal"] = {
  { region = "HideoutHelmDonkeyRoom", logic = function() return (state.event("HelmDonkeyDone") and state.donkey()) end },
}
M.locations["HelmMainEnemy_DKRoom"] = {
  { region = "HideoutHelmDonkeyRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_DKRoom"] = {
  { region = "HideoutHelmDonkeyRoom", logic = function() return state.camera() end },
}
M.locations["HelmChunkyMedal"] = {
  { region = "HideoutHelmChunkyRoom", logic = function() return (state.event("HelmChunkyDone") and state.chunky()) end },
}
M.locations["HelmMainEnemy_ChunkyRoom0"] = {
  { region = "HideoutHelmChunkyRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_ChunkyRoom1"] = {
  { region = "HideoutHelmChunkyRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_ChunkyRoom0"] = {
  { region = "HideoutHelmChunkyRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_ChunkyRoom1"] = {
  { region = "HideoutHelmChunkyRoom", logic = function() return state.camera() end },
}
M.locations["HelmTinyMedal"] = {
  { region = "HideoutHelmTinyRoom", logic = function() return (state.event("HelmTinyDone") and state.tiny()) end },
}
M.locations["HelmMainEnemy_TinyRoom"] = {
  { region = "HideoutHelmTinyRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_TinyRoom"] = {
  { region = "HideoutHelmTinyRoom", logic = function() return state.camera() end },
}
M.locations["HelmLankyMedal"] = {
  { region = "HideoutHelmLankyRoom", logic = function() return (state.event("HelmLankyDone") and state.lanky()) end },
}
M.locations["HelmMainEnemy_LankyRoom0"] = {
  { region = "HideoutHelmLankyRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_LankyRoom1"] = {
  { region = "HideoutHelmLankyRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_LankyRoom0"] = {
  { region = "HideoutHelmLankyRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_LankyRoom1"] = {
  { region = "HideoutHelmLankyRoom", logic = function() return state.camera() end },
}
M.locations["HelmDiddyMedal"] = {
  { region = "HideoutHelmDiddyRoom", logic = function() return (state.event("HelmDiddyDone") and state.diddy()) end },
}
M.locations["HelmMainEnemy_DiddyRoom0"] = {
  { region = "HideoutHelmDiddyRoom", logic = function() return true end },
}
M.locations["HelmMainEnemy_DiddyRoom1"] = {
  { region = "HideoutHelmDiddyRoom", logic = function() return true end },
}
M.locations["KremKap_HelmMainEnemy_DiddyRoom0"] = {
  { region = "HideoutHelmDiddyRoom", logic = function() return state.camera() end },
}
M.locations["KremKap_HelmMainEnemy_DiddyRoom1"] = {
  { region = "HideoutHelmDiddyRoom", logic = function() return state.camera() end },
}
M.locations["HelmMainEnemy_NavRight"] = {
  { region = "HideoutHelmAfterBoM", logic = function() return state.event("HelmFinished") end },
}
M.locations["HelmMainEnemy_NavLeft"] = {
  { region = "HideoutHelmAfterBoM", logic = function() return state.event("HelmFinished") end },
}
M.locations["KremKap_HelmMainEnemy_NavRight"] = {
  { region = "HideoutHelmAfterBoM", logic = function() return (state.camera() and state.event("HelmFinished")) end },
}
M.locations["KremKap_HelmMainEnemy_NavLeft"] = {
  { region = "HideoutHelmAfterBoM", logic = function() return (state.camera() and state.event("HelmFinished")) end },
}
M.locations["HelmKey"] = {
  { region = "HideoutHelmKeyRoom", logic = function() return true end },
}
M.locations["HelmBananaFairy1"] = {
  { region = "HideoutHelmKeyRoom", logic = function() return state.camera() end },
}
M.locations["HelmBananaFairy2"] = {
  { region = "HideoutHelmKeyRoom", logic = function() return state.camera() end },
}
M.locations["JapesDonkeyMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "donkey") >= settings.medal_cb_req_level(0)) end },
}
M.locations["JapesDiddyMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "diddy") >= settings.medal_cb_req_level(0)) end },
}
M.locations["JapesLankyMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "lanky") >= settings.medal_cb_req_level(0)) end },
}
M.locations["JapesTinyMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "tiny") >= settings.medal_cb_req_level(0)) end },
}
M.locations["JapesChunkyMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "chunky") >= settings.medal_cb_req_level(0)) end },
}
M.locations["JapesDonkeyHalfMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
}
M.locations["JapesDiddyHalfMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
}
M.locations["JapesLankyHalfMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
}
M.locations["JapesTinyHalfMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
}
M.locations["JapesChunkyHalfMedal"] = {
  { region = "JungleJapesMedals", logic = function() return (state.cb("JungleJapes", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(0) / (2 ^ 1))))) end },
}
M.locations["JapesDonkeyCagedBanana"] = {
  { region = "JungleJapesStart", logic = function() return (((state.event("JapesDonkeySwitch") or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and state.donkey()) or ((state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
}
M.locations["JapesChunkyBoulder"] = {
  { region = "JungleJapesStart", logic = function() return (state.chunky() and state.barrels()) end },
}
M.locations["Balloon006"] = {
  { region = "JungleJapesStart", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["JapesMainEnemy_Start"] = {
  { region = "JungleJapesStart", logic = function() return true end },
}
M.locations["JapesMainEnemy_Tunnel0"] = {
  { region = "JungleJapesStart", logic = function() return true end },
}
M.locations["JapesMainEnemy_Tunnel1"] = {
  { region = "JungleJapesStart", logic = function() return true end },
}
M.locations["JapesMainEnemy_KilledInDemo"] = {
  { region = "JungleJapesStart", logic = function() return true end },
}
M.locations["JapesMainEnemy_NearUnderground"] = {
  { region = "JungleJapesStart", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_Start"] = {
  { region = "JungleJapesStart", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Tunnel0"] = {
  { region = "JungleJapesStart", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Tunnel1"] = {
  { region = "JungleJapesStart", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_KilledInDemo"] = {
  { region = "JungleJapesStart", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_NearUnderground"] = {
  { region = "JungleJapesStart", logic = function() return state.camera() end },
}
M.locations["JapesLankyCagedBanana"] = {
  { region = "JapesCannonPlatform", logic = function() return (((state.event("JapesLankySwitch") or ((not settings.shuffle_shops()) and state.CanSkew(true)) or state.CanSkew(false)) and state.lanky()) or (((not settings.shuffle_shops()) and state.CanSkew(true)) or (state.CanSkew(false) and settings.free_trade_items()))) end },
}
M.locations["DiddyKong"] = {
  { region = "JapesHillTop", logic = function() return state.CanFreeDiddy() end },
}
M.locations["Balloon002"] = {
  { region = "JapesHillTop", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["JapesDonkeyFrontofCage"] = {
  { region = "JapesHillTop", logic = function() return (state.HasKong(settings.diddy_freeing_kong()) or settings.free_trade_items()) end },
}
M.locations["JapesDonkeyFreeDiddy"] = {
  { region = "JapesHillTop", logic = function() return state.event("JapesFreeKongOpenGates") end },
}
M.locations["MelonCrate_Location00"] = {
  { region = "JapesHillTop", logic = function() return true end },
}
M.locations["JapesMainEnemy_Mountain"] = {
  { region = "JapesHillTop", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_Mountain"] = {
  { region = "JapesHillTop", logic = function() return state.camera() end },
}
M.locations["JapesChunkyCagedBanana"] = {
  { region = "JapesHillTop", logic = function() return (((state.event("JapesChunkySwitch") or state.CanPhase() or ((not settings.shuffle_shops()) and (state.CanSkew(true) or state.CanSkew(false)))) and state.chunky()) or ((state.CanPhase() or ((not settings.shuffle_shops()) and (state.CanSkew(true) or state.CanSkew(false)))) and settings.free_trade_items())) end },
}
M.locations["JapesDiddyCagedBanana"] = {
  { region = "JapesHill", logic = function() return (((state.event("JapesDiddySwitch1") or state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and state.diddy()) or ((state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
}
M.locations["JapesBattleArena"] = {
  { region = "JapesHill", logic = function() return (not settings.crown_placement_rando()) end },
}
M.locations["JapesTinyCagedBanana"] = {
  { region = "JungleJapesMain", logic = function() return (((state.event("JapesTinySwitch") or state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and state.tiny()) or ((state.CanPhase() or state.CanPhaseswim() or state.CanSkew(true) or state.CanSkew(false)) and settings.free_trade_items())) end },
}
M.locations["JapesMainEnemy_NearPainting0"] = {
  { region = "JungleJapesMain", logic = function() return true end },
}
M.locations["JapesMainEnemy_NearPainting1"] = {
  { region = "JungleJapesMain", logic = function() return true end },
}
M.locations["JapesMainEnemy_NearPainting2"] = {
  { region = "JungleJapesMain", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_NearPainting0"] = {
  { region = "JungleJapesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_NearPainting1"] = {
  { region = "JungleJapesMain", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_NearPainting2"] = {
  { region = "JungleJapesMain", logic = function() return state.camera() end },
}
M.locations["RainbowCoin_Location00"] = {
  { region = "JapesPaintingRoomHill", logic = function() return true end },
}
M.locations["JapesDiddyMountain"] = {
  { region = "JapesTopOfMountain", logic = function() return (state.event("JapesDiddySwitch2") and (state.diddy() or settings.free_trade_items())) end },
}
M.locations["Balloon005"] = {
  { region = "JapesTopOfMountain", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["JapesDonkeyBaboonBlast"] = {
  { region = "JapesBaboonBlast", logic = function() return state.donkey() end },
}
M.locations["Balloon001"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return (state.diddy() and state.peanut()) end },
}
M.locations["JapesDiddyTunnel"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return (state.diddy() or settings.free_trade_items()) end },
}
M.locations["JapesLankyGrapeGate"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return ((state.grape() and state.lanky()) or ((state.CanPhase() or state.generalclips() or state.CanSkew(true) or state.CanSkew(false)) and (state.lanky() or settings.free_trade_items()))) end },
}
M.locations["JapesTinyFeatherGateBarrel"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return ((state.feather() and state.tiny()) or ((state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) and (state.tiny() or settings.free_trade_items()))) end },
}
M.locations["JapesMainEnemy_DiddyCavern"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_DiddyCavern"] = {
  { region = "JapesBeyondPeanutGate", logic = function() return state.camera() end },
}
M.locations["JapesKasplatLeftTunnelNear"] = {
  { region = "JapesBeyondCoconutGate1", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["JapesKasplatLeftTunnelFar"] = {
  { region = "JapesBeyondCoconutGate1", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["JapesMainEnemy_FeatherTunnel"] = {
  { region = "JapesBeyondCoconutGate1", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_FeatherTunnel"] = {
  { region = "JapesBeyondCoconutGate1", logic = function() return state.camera() end },
}
M.locations["JapesTinyStump"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return (((state.mini() and state.tiny()) or state.CanPhase() or state.CanSkew(true) or state.CanSkew(false)) and state.tiny()) end },
}
M.locations["JapesChunkyGiantBonusBarrel"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return (state.climbing() and state.hunkyChunky() and state.chunky()) end },
}
M.locations["JapesMainEnemy_Hive0"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return true end },
}
M.locations["JapesMainEnemy_Hive1"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return true end },
}
M.locations["JapesMainEnemy_Hive2"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return true end },
}
M.locations["JapesMainEnemy_Hive3"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return true end },
}
M.locations["JapesMainEnemy_Hive4"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_Hive0"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Hive1"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Hive2"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Hive3"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Hive4"] = {
  { region = "JapesBeyondFeatherGate", logic = function() return state.camera() end },
}
M.locations["JapesTinyBeehive"] = {
  { region = "TinyHive", logic = function() return ((state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) or (settings.free_trade_items() and state.CanPhase())) end },
}
M.locations["JapesShellhiveEnemy_FirstRoom"] = {
  { region = "TinyHive", logic = function() return true end },
}
M.locations["JapesShellhiveEnemy_SecondRoom0"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_SecondRoom1"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_ThirdRoom0"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_ThirdRoom1"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_ThirdRoom2"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_ThirdRoom3"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips())) end },
}
M.locations["JapesShellhiveEnemy_MainRoom"] = {
  { region = "TinyHive", logic = function() return true end },
}
M.locations["KremKap_JapesShellhiveEnemy_FirstRoom"] = {
  { region = "TinyHive", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesShellhiveEnemy_SecondRoom0"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_SecondRoom1"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_ThirdRoom0"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_ThirdRoom1"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_ThirdRoom2"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_ThirdRoom3"] = {
  { region = "TinyHive", logic = function() return (state.camera() and (state.tiny() and ((state.CanSlamSwitch("JungleJapes", 1) and (state.saxophone() or state.oranges())) or state.CanPhase() or state.generalclips()))) end },
}
M.locations["KremKap_JapesShellhiveEnemy_MainRoom"] = {
  { region = "TinyHive", logic = function() return state.camera() end },
}
M.locations["Balloon013"] = {
  { region = "TinyHive", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["JapesLankySlope"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return ((state.handstand() and state.lanky()) or state.slope_resets()) end },
}
M.locations["JapesKasplatNearPaintingRoom"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["JapesKasplatNearLab"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (not settings.kasplat_rando()) end },
}
M.locations["JapesMainEnemy_Storm0"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return true end },
}
M.locations["JapesMainEnemy_Storm1"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return true end },
}
M.locations["JapesMainEnemy_Storm2"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return true end },
}
M.locations["JapesMainEnemy_MiddleTunnel"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return true end },
}
M.locations["KremKap_JapesMainEnemy_Storm0"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Storm1"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_Storm2"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMainEnemy_MiddleTunnel"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.camera() end },
}
M.locations["BreakableJapesDKHut"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.event("Rambi") end },
}
M.locations["BreakableJapesDiddyHut"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.event("Rambi") end },
}
M.locations["BreakableJapesLankyHut"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.event("Rambi") end },
}
M.locations["BreakableJapesTinyHut"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return state.event("Rambi") end },
}
M.locations["Balloon004"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["Balloon007"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (state.donkey() and state.coconut()) end },
}
M.locations["Balloon008"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["Balloon012"] = {
  { region = "JapesBeyondCoconutGate2", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["JapesBananaFairyRambiCave"] = {
  { region = "BeyondRambiGate", logic = function() return state.camera() end },
}
M.locations["MelonCrate_Location01"] = {
  { region = "BeyondRambiGate", logic = function() return true end },
}
M.locations["Balloon003"] = {
  { region = "BeyondRambiGate", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon009"] = {
  { region = "BeyondRambiGate", logic = function() return (state.tiny() and state.feather()) end },
}
M.locations["Balloon010"] = {
  { region = "BeyondRambiGate", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["Balloon011"] = {
  { region = "BeyondRambiGate", logic = function() return (state.chunky() and state.pineapple()) end },
}
M.locations["JapesLankyFairyCave"] = {
  { region = "JapesLankyCave", logic = function() return ((((state.grape() or state.trombone() or state.adv_orange_usage()) and state.Slam()) or state.generalclips()) and state.lanky()) end },
}
M.locations["JapesBananaFairyLankyCave"] = {
  { region = "JapesLankyCave", logic = function() return ((((state.grape() or state.trombone() or state.adv_orange_usage()) and state.Slam()) or state.generalclips()) and state.lanky() and state.camera()) end },
}
M.locations["Balloon014"] = {
  { region = "JapesLankyCave", logic = function() return (state.lanky() and state.grape()) end },
}
M.locations["Balloon000"] = {
  { region = "Mine", logic = function() return (state.diddy() and (state.CanSlamSwitch("JungleJapes", 1) or state.CanPhase()) and state.peanut()) end },
}
M.locations["JapesMountainEnemy_Start0"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_Start1"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_Start2"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_Start3"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_Start4"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_NearGateSwitch0"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_NearGateSwitch1"] = {
  { region = "Mine", logic = function() return true end },
}
M.locations["JapesMountainEnemy_HiLo"] = {
  { region = "Mine", logic = function() return ((state.charge() and state.diddy()) or state.CanPhase()) end },
}
M.locations["JapesMountainEnemy_Conveyor0"] = {
  { region = "Mine", logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase()) end },
}
M.locations["JapesMountainEnemy_Conveyor1"] = {
  { region = "Mine", logic = function() return ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase()) end },
}
M.locations["KremKap_JapesMountainEnemy_Start0"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_Start1"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_Start2"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_Start3"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_Start4"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_NearGateSwitch0"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_NearGateSwitch1"] = {
  { region = "Mine", logic = function() return state.camera() end },
}
M.locations["KremKap_JapesMountainEnemy_HiLo"] = {
  { region = "Mine", logic = function() return (state.camera() and ((state.charge() and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_JapesMountainEnemy_Conveyor0"] = {
  { region = "Mine", logic = function() return (state.camera() and ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase())) end },
}
M.locations["KremKap_JapesMountainEnemy_Conveyor1"] = {
  { region = "Mine", logic = function() return (state.camera() and ((state.CanSlamSwitch("JungleJapes", 1) and state.diddy()) or state.CanPhase())) end },
}
M.locations["JapesDiddyMinecarts"] = {
  { region = "JapesMinecarts", logic = function() return state.HasEnoughRaceCoins("JapesMinecarts", "diddy", true) end },
}
M.locations["JapesChunkyUnderground"] = {
  { region = "JapesCatacomb", logic = function() return ((state.can_use_vines() and state.pineapple() and state.chunky()) or (((state.twirl() and state.tiny()) or (state.can_use_vines() and (state.diddy() or state.tiny())) or (state.donkey() and (not state.isKrushaAdjacent("donkey")))) and state.monkey_maneuvers() and settings.free_trade_items()) or state.CanPhase()) end },
}
M.locations["JapesKasplatUnderground"] = {
  { region = "JapesCatacomb", logic = function() return ((not settings.kasplat_rando()) and ((state.can_use_vines() and state.pineapple() and state.chunky()) or (state.can_use_vines() and (state.diddy() or state.tiny()) and state.monkey_maneuvers() and settings.free_trade_items()) or state.CanPhase())) end },
}
M.locations["JapesKey"] = {
  { region = "JapesBoss", logic = function() return state.IsBossBeatable("JungleJapes") end },
}
M.locations["SharedJapesGun"] = {
  { region = "FunkyJapes", logic = function() return state.CanBuy("SharedJapesGun") end },
}
M.locations["CoconutGun"] = {
  { region = "FunkyJapes", logic = function() return (state.donkey() and state.CanBuy("CoconutGun")) end },
}
M.locations["PeanutGun"] = {
  { region = "FunkyJapes", logic = function() return (state.diddy() and state.CanBuy("PeanutGun")) end },
}
M.locations["GrapeGun"] = {
  { region = "FunkyJapes", logic = function() return (state.lanky() and state.CanBuy("GrapeGun")) end },
}
M.locations["FeatherGun"] = {
  { region = "FunkyJapes", logic = function() return (state.tiny() and state.CanBuy("FeatherGun")) end },
}
M.locations["PineappleGun"] = {
  { region = "FunkyJapes", logic = function() return (state.chunky() and state.CanBuy("PineappleGun")) end },
}
M.locations["SharedAztecGun"] = {
  { region = "FunkyAztec", logic = function() return state.CanBuy("SharedAztecGun") end },
}
M.locations["DonkeyAztecGun"] = {
  { region = "FunkyAztec", logic = function() return (state.donkey() and state.CanBuy("DonkeyAztecGun")) end },
}
M.locations["DiddyAztecGun"] = {
  { region = "FunkyAztec", logic = function() return (state.diddy() and state.CanBuy("DiddyAztecGun")) end },
}
M.locations["LankyAztecGun"] = {
  { region = "FunkyAztec", logic = function() return (state.lanky() and state.CanBuy("LankyAztecGun")) end },
}
M.locations["TinyAztecGun"] = {
  { region = "FunkyAztec", logic = function() return (state.tiny() and state.CanBuy("TinyAztecGun")) end },
}
M.locations["ChunkyAztecGun"] = {
  { region = "FunkyAztec", logic = function() return (state.chunky() and state.CanBuy("ChunkyAztecGun")) end },
}
M.locations["AmmoBelt1"] = {
  { region = "FunkyFactory", logic = function() return state.CanBuy("AmmoBelt1") end },
}
M.locations["DonkeyFactoryGun"] = {
  { region = "FunkyFactory", logic = function() return (state.donkey() and state.CanBuy("DonkeyFactoryGun")) end },
}
M.locations["DiddyFactoryGun"] = {
  { region = "FunkyFactory", logic = function() return (state.diddy() and state.CanBuy("DiddyFactoryGun")) end },
}
M.locations["LankyFactoryGun"] = {
  { region = "FunkyFactory", logic = function() return (state.lanky() and state.CanBuy("LankyFactoryGun")) end },
}
M.locations["TinyFactoryGun"] = {
  { region = "FunkyFactory", logic = function() return (state.tiny() and state.CanBuy("TinyFactoryGun")) end },
}
M.locations["ChunkyFactoryGun"] = {
  { region = "FunkyFactory", logic = function() return (state.chunky() and state.CanBuy("ChunkyFactoryGun")) end },
}
M.locations["SharedGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return state.CanBuy("SharedGalleonGun") end },
}
M.locations["DonkeyGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonGun")) end },
}
M.locations["DiddyGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonGun")) end },
}
M.locations["LankyGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonGun")) end },
}
M.locations["TinyGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonGun")) end },
}
M.locations["ChunkyGalleonGun"] = {
  { region = "FunkyGalleon", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonGun")) end },
}
M.locations["HomingAmmo"] = {
  { region = "FunkyForest", logic = function() return state.CanBuy("HomingAmmo") end },
}
M.locations["DonkeyForestGun"] = {
  { region = "FunkyForest", logic = function() return (state.donkey() and state.CanBuy("DonkeyForestGun")) end },
}
M.locations["DiddyForestGun"] = {
  { region = "FunkyForest", logic = function() return (state.diddy() and state.CanBuy("DiddyForestGun")) end },
}
M.locations["LankyForestGun"] = {
  { region = "FunkyForest", logic = function() return (state.lanky() and state.CanBuy("LankyForestGun")) end },
}
M.locations["TinyForestGun"] = {
  { region = "FunkyForest", logic = function() return (state.tiny() and state.CanBuy("TinyForestGun")) end },
}
M.locations["ChunkyForestGun"] = {
  { region = "FunkyForest", logic = function() return (state.chunky() and state.CanBuy("ChunkyForestGun")) end },
}
M.locations["AmmoBelt2"] = {
  { region = "FunkyCaves", logic = function() return state.CanBuy("AmmoBelt2") end },
}
M.locations["DonkeyCavesGun"] = {
  { region = "FunkyCaves", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesGun")) end },
}
M.locations["DiddyCavesGun"] = {
  { region = "FunkyCaves", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesGun")) end },
}
M.locations["LankyCavesGun"] = {
  { region = "FunkyCaves", logic = function() return (state.lanky() and state.CanBuy("LankyCavesGun")) end },
}
M.locations["TinyCavesGun"] = {
  { region = "FunkyCaves", logic = function() return (state.tiny() and state.CanBuy("TinyCavesGun")) end },
}
M.locations["ChunkyCavesGun"] = {
  { region = "FunkyCaves", logic = function() return (state.chunky() and state.CanBuy("ChunkyCavesGun")) end },
}
M.locations["SniperSight"] = {
  { region = "FunkyCastle", logic = function() return state.CanBuy("SniperSight") end },
}
M.locations["DonkeyCastleGun"] = {
  { region = "FunkyCastle", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastleGun")) end },
}
M.locations["DiddyCastleGun"] = {
  { region = "FunkyCastle", logic = function() return (state.diddy() and state.CanBuy("DiddyCastleGun")) end },
}
M.locations["LankyCastleGun"] = {
  { region = "FunkyCastle", logic = function() return (state.lanky() and state.CanBuy("LankyCastleGun")) end },
}
M.locations["TinyCastleGun"] = {
  { region = "FunkyCastle", logic = function() return (state.tiny() and state.CanBuy("TinyCastleGun")) end },
}
M.locations["ChunkyCastleGun"] = {
  { region = "FunkyCastle", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastleGun")) end },
}
M.locations["SharedAztecInstrument"] = {
  { region = "CandyAztec", logic = function() return state.CanBuy("SharedAztecInstrument") end },
}
M.locations["Bongos"] = {
  { region = "CandyAztec", logic = function() return (state.donkey() and state.CanBuy("Bongos")) end },
}
M.locations["Guitar"] = {
  { region = "CandyAztec", logic = function() return (state.diddy() and state.CanBuy("Guitar")) end },
}
M.locations["Trombone"] = {
  { region = "CandyAztec", logic = function() return (state.lanky() and state.CanBuy("Trombone")) end },
}
M.locations["Saxophone"] = {
  { region = "CandyAztec", logic = function() return (state.tiny() and state.CanBuy("Saxophone")) end },
}
M.locations["Triangle"] = {
  { region = "CandyAztec", logic = function() return (state.chunky() and state.CanBuy("Triangle")) end },
}
M.locations["SharedFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return state.CanBuy("SharedFactoryInstrument") end },
}
M.locations["DonkeyFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return (state.donkey() and state.CanBuy("DonkeyFactoryInstrument")) end },
}
M.locations["DiddyFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return (state.diddy() and state.CanBuy("DiddyFactoryInstrument")) end },
}
M.locations["LankyFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return (state.lanky() and state.CanBuy("LankyFactoryInstrument")) end },
}
M.locations["TinyFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return (state.tiny() and state.CanBuy("TinyFactoryInstrument")) end },
}
M.locations["ChunkyFactoryInstrument"] = {
  { region = "CandyFactory", logic = function() return (state.chunky() and state.CanBuy("ChunkyFactoryInstrument")) end },
}
M.locations["MusicUpgrade1"] = {
  { region = "CandyGalleon", logic = function() return state.CanBuy("MusicUpgrade1") end },
}
M.locations["DonkeyGalleonInstrument"] = {
  { region = "CandyGalleon", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonInstrument")) end },
}
M.locations["DiddyGalleonInstrument"] = {
  { region = "CandyGalleon", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonInstrument")) end },
}
M.locations["LankyGalleonInstrument"] = {
  { region = "CandyGalleon", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonInstrument")) end },
}
M.locations["TinyGalleonInstrument"] = {
  { region = "CandyGalleon", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonInstrument")) end },
}
M.locations["ChunkyGalleonInstrument"] = {
  { region = "CandyGalleon", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonInstrument")) end },
}
M.locations["ThirdMelon"] = {
  { region = "CandyCaves", logic = function() return state.CanBuy("ThirdMelon") end },
}
M.locations["DonkeyCavesInstrument"] = {
  { region = "CandyCaves", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesInstrument")) end },
}
M.locations["DiddyCavesInstrument"] = {
  { region = "CandyCaves", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesInstrument")) end },
}
M.locations["LankyCavesInstrument"] = {
  { region = "CandyCaves", logic = function() return (state.lanky() and state.CanBuy("LankyCavesInstrument")) end },
}
M.locations["TinyCavesInstrument"] = {
  { region = "CandyCaves", logic = function() return (state.tiny() and state.CanBuy("TinyCavesInstrument")) end },
}
M.locations["ChunkyCavesInstrument"] = {
  { region = "CandyCaves", logic = function() return (state.chunky() and state.CanBuy("ChunkyCavesInstrument")) end },
}
M.locations["MusicUpgrade2"] = {
  { region = "CandyCastle", logic = function() return state.CanBuy("MusicUpgrade2") end },
}
M.locations["DonkeyCastleInstrument"] = {
  { region = "CandyCastle", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastleInstrument")) end },
}
M.locations["DiddyCastleInstrument"] = {
  { region = "CandyCastle", logic = function() return (state.diddy() and state.CanBuy("DiddyCastleInstrument")) end },
}
M.locations["LankyCastleInstrument"] = {
  { region = "CandyCastle", logic = function() return (state.lanky() and state.CanBuy("LankyCastleInstrument")) end },
}
M.locations["TinyCastleInstrument"] = {
  { region = "CandyCastle", logic = function() return (state.tiny() and state.CanBuy("TinyCastleInstrument")) end },
}
M.locations["ChunkyCastleInstrument"] = {
  { region = "CandyCastle", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastleInstrument")) end },
}
M.locations["RarewareCoin"] = {
  { region = "CrankyGeneric", logic = function() return state.CanGetRarewareCoin() end },
}
M.locations["SharedJapesPotion"] = {
  { region = "CrankyJapes", logic = function() return state.CanBuy("SharedJapesPotion") end },
}
M.locations["BaboonBlast"] = {
  { region = "CrankyJapes", logic = function() return (state.donkey() and state.CanBuy("BaboonBlast")) end },
}
M.locations["ChimpyCharge"] = {
  { region = "CrankyJapes", logic = function() return (state.diddy() and state.CanBuy("ChimpyCharge")) end },
}
M.locations["Orangstand"] = {
  { region = "CrankyJapes", logic = function() return (state.lanky() and state.CanBuy("Orangstand")) end },
}
M.locations["MiniMonkey"] = {
  { region = "CrankyJapes", logic = function() return (state.tiny() and state.CanBuy("MiniMonkey")) end },
}
M.locations["HunkyChunky"] = {
  { region = "CrankyJapes", logic = function() return (state.chunky() and state.CanBuy("HunkyChunky")) end },
}
M.locations["SharedAztecPotion"] = {
  { region = "CrankyAztec", logic = function() return state.CanBuy("SharedAztecPotion") end },
}
M.locations["StrongKong"] = {
  { region = "CrankyAztec", logic = function() return (state.donkey() and state.CanBuy("StrongKong")) end },
}
M.locations["RocketbarrelBoost"] = {
  { region = "CrankyAztec", logic = function() return (state.diddy() and state.CanBuy("RocketbarrelBoost")) end },
}
M.locations["LankyAztecPotion"] = {
  { region = "CrankyAztec", logic = function() return (state.lanky() and state.CanBuy("LankyAztecPotion")) end },
}
M.locations["TinyAztecPotion"] = {
  { region = "CrankyAztec", logic = function() return (state.tiny() and state.CanBuy("TinyAztecPotion")) end },
}
M.locations["ChunkyAztecPotion"] = {
  { region = "CrankyAztec", logic = function() return (state.chunky() and state.CanBuy("ChunkyAztecPotion")) end },
}
M.locations["SharedFactoryPotion"] = {
  { region = "CrankyFactory", logic = function() return state.CanBuy("SharedFactoryPotion") end },
}
M.locations["GorillaGrab"] = {
  { region = "CrankyFactory", logic = function() return (state.donkey() and state.CanBuy("GorillaGrab")) end },
}
M.locations["SimianSpring"] = {
  { region = "CrankyFactory", logic = function() return (state.diddy() and state.CanBuy("SimianSpring")) end },
}
M.locations["BaboonBalloon"] = {
  { region = "CrankyFactory", logic = function() return (state.lanky() and state.CanBuy("BaboonBalloon")) end },
}
M.locations["PonyTailTwirl"] = {
  { region = "CrankyFactory", logic = function() return (state.tiny() and state.CanBuy("PonyTailTwirl")) end },
}
M.locations["PrimatePunch"] = {
  { region = "CrankyFactory", logic = function() return (state.chunky() and state.CanBuy("PrimatePunch")) end },
}
M.locations["SharedGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return state.CanBuy("SharedGalleonPotion") end },
}
M.locations["DonkeyGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return (state.donkey() and state.CanBuy("DonkeyGalleonPotion")) end },
}
M.locations["DiddyGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return (state.diddy() and state.CanBuy("DiddyGalleonPotion")) end },
}
M.locations["LankyGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return (state.lanky() and state.CanBuy("LankyGalleonPotion")) end },
}
M.locations["TinyGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return (state.tiny() and state.CanBuy("TinyGalleonPotion")) end },
}
M.locations["ChunkyGalleonPotion"] = {
  { region = "CrankyGalleon", logic = function() return (state.chunky() and state.CanBuy("ChunkyGalleonPotion")) end },
}
M.locations["SuperSimianSlam"] = {
  { region = "CrankyForest", logic = function() return state.CanBuy("SuperSimianSlam") end },
}
M.locations["DonkeyForestPotion"] = {
  { region = "CrankyForest", logic = function() return (state.donkey() and state.CanBuy("DonkeyForestPotion")) end },
}
M.locations["DiddyForestPotion"] = {
  { region = "CrankyForest", logic = function() return (state.diddy() and state.CanBuy("DiddyForestPotion")) end },
}
M.locations["LankyForestPotion"] = {
  { region = "CrankyForest", logic = function() return (state.lanky() and state.CanBuy("LankyForestPotion")) end },
}
M.locations["TinyForestPotion"] = {
  { region = "CrankyForest", logic = function() return (state.tiny() and state.CanBuy("TinyForestPotion")) end },
}
M.locations["ChunkyForestPotion"] = {
  { region = "CrankyForest", logic = function() return (state.chunky() and state.CanBuy("ChunkyForestPotion")) end },
}
M.locations["SharedCavesPotion"] = {
  { region = "CrankyCaves", logic = function() return state.CanBuy("SharedCavesPotion") end },
}
M.locations["OrangstandSprint"] = {
  { region = "CrankyCaves", logic = function() return (state.lanky() and state.CanBuy("OrangstandSprint")) end },
}
M.locations["Monkeyport"] = {
  { region = "CrankyCaves", logic = function() return (state.tiny() and state.CanBuy("Monkeyport")) end },
}
M.locations["GorillaGone"] = {
  { region = "CrankyCaves", logic = function() return (state.chunky() and state.CanBuy("GorillaGone")) end },
}
M.locations["DonkeyCavesPotion"] = {
  { region = "CrankyCaves", logic = function() return (state.donkey() and state.CanBuy("DonkeyCavesPotion")) end },
}
M.locations["DiddyCavesPotion"] = {
  { region = "CrankyCaves", logic = function() return (state.diddy() and state.CanBuy("DiddyCavesPotion")) end },
}
M.locations["SuperDuperSimianSlam"] = {
  { region = "CrankyCastle", logic = function() return state.CanBuy("SuperDuperSimianSlam") end },
}
M.locations["DonkeyCastlePotion"] = {
  { region = "CrankyCastle", logic = function() return (state.donkey() and state.CanBuy("DonkeyCastlePotion")) end },
}
M.locations["DiddyCastlePotion"] = {
  { region = "CrankyCastle", logic = function() return (state.diddy() and state.CanBuy("DiddyCastlePotion")) end },
}
M.locations["LankyCastlePotion"] = {
  { region = "CrankyCastle", logic = function() return (state.lanky() and state.CanBuy("LankyCastlePotion")) end },
}
M.locations["TinyCastlePotion"] = {
  { region = "CrankyCastle", logic = function() return (state.tiny() and state.CanBuy("TinyCastlePotion")) end },
}
M.locations["ChunkyCastlePotion"] = {
  { region = "CrankyCastle", logic = function() return (state.chunky() and state.CanBuy("ChunkyCastlePotion")) end },
}
M.locations["SimianSlam"] = {
  { region = "CrankyIsles", logic = function() return state.CanBuy("SimianSlam") end },
}
M.locations["DonkeyIslesPotion"] = {
  { region = "CrankyIsles", logic = function() return (state.donkey() and state.CanBuy("DonkeyIslesPotion")) end },
}
M.locations["DiddyIslesPotion"] = {
  { region = "CrankyIsles", logic = function() return (state.diddy() and state.CanBuy("DiddyIslesPotion")) end },
}
M.locations["LankyIslesPotion"] = {
  { region = "CrankyIsles", logic = function() return (state.lanky() and state.CanBuy("LankyIslesPotion")) end },
}
M.locations["TinyIslesPotion"] = {
  { region = "CrankyIsles", logic = function() return (state.tiny() and state.CanBuy("TinyIslesPotion")) end },
}
M.locations["ChunkyIslesPotion"] = {
  { region = "CrankyIsles", logic = function() return (state.chunky() and state.CanBuy("ChunkyIslesPotion")) end },
}
M.locations["TurnInJungleJapesDonkeyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(1) end },
}
M.locations["TurnInJungleJapesDiddyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(2) end },
}
M.locations["TurnInJungleJapesLankyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(3) end },
}
M.locations["TurnInJungleJapesTinyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(4) end },
}
M.locations["TurnInJungleJapesChunkyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(5) end },
}
M.locations["TurnInAngryAztecDonkeyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(6) end },
}
M.locations["TurnInAngryAztecDiddyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(7) end },
}
M.locations["TurnInAngryAztecLankyBlueprint"] = {
  { region = "SnideFirstGroup", logic = function() return state.CanGetBlueprintReward(8) end },
}
M.locations["TurnInAngryAztecTinyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(9) end },
}
M.locations["TurnInAngryAztecChunkyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(10) end },
}
M.locations["TurnInFranticFactoryDonkeyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(11) end },
}
M.locations["TurnInFranticFactoryDiddyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(12) end },
}
M.locations["TurnInFranticFactoryLankyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(13) end },
}
M.locations["TurnInFranticFactoryTinyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(14) end },
}
M.locations["TurnInFranticFactoryChunkyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(15) end },
}
M.locations["TurnInGloomyGalleonDonkeyBlueprint"] = {
  { region = "SnideSecondGroup", logic = function() return state.CanGetBlueprintReward(16) end },
}
M.locations["TurnInGloomyGalleonDiddyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(17) end },
}
M.locations["TurnInGloomyGalleonLankyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(18) end },
}
M.locations["TurnInGloomyGalleonTinyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(19) end },
}
M.locations["TurnInGloomyGalleonChunkyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(20) end },
}
M.locations["TurnInFungiForestDonkeyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(21) end },
}
M.locations["TurnInFungiForestDiddyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(22) end },
}
M.locations["TurnInFungiForestLankyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(23) end },
}
M.locations["TurnInFungiForestTinyBlueprint"] = {
  { region = "SnideThirdGroup", logic = function() return state.CanGetBlueprintReward(24) end },
}
M.locations["TurnInFungiForestChunkyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(25) end },
}
M.locations["TurnInCrystalCavesDonkeyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(26) end },
}
M.locations["TurnInCrystalCavesDiddyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(27) end },
}
M.locations["TurnInCrystalCavesLankyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(28) end },
}
M.locations["TurnInCrystalCavesTinyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(29) end },
}
M.locations["TurnInCrystalCavesChunkyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(30) end },
}
M.locations["TurnInCreepyCastleDonkeyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(31) end },
}
M.locations["TurnInCreepyCastleDiddyBlueprint"] = {
  { region = "SnideFourthGroup", logic = function() return state.CanGetBlueprintReward(32) end },
}
M.locations["TurnInCreepyCastleLankyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(33) end },
}
M.locations["TurnInCreepyCastleTinyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(34) end },
}
M.locations["TurnInCreepyCastleChunkyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(35) end },
}
M.locations["TurnInDKIslesDonkeyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(36) end },
}
M.locations["TurnInDKIslesDiddyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(37) end },
}
M.locations["TurnInDKIslesLankyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(38) end },
}
M.locations["TurnInDKIslesTinyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(39) end },
}
M.locations["TurnInDKIslesChunkyBlueprint"] = {
  { region = "SnideLastGroup", logic = function() return state.CanGetBlueprintReward(40) end },
}

if _G.graph then _G.graph.locations = M.locations end
return M