-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/HideoutHelm.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: HideoutHelmEntry  (Hideout Helm Entry Redirect)
M.regions["HideoutHelmEntry"] = {
  display_name = [[Hideout Helm Entry Redirect]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = nil,
  locations = {
    { id = "HelmDonkey1", logic = function() return ((not settings.helm_donkey()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmDonkey2", logic = function() return ((not settings.helm_donkey()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmChunky1", logic = function() return ((not settings.helm_chunky()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmChunky2", logic = function() return ((not settings.helm_chunky()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmTiny1", logic = function() return ((not settings.helm_tiny()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmTiny2", logic = function() return ((not settings.helm_tiny()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmLanky1", logic = function() return ((not settings.helm_lanky()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmLanky2", logic = function() return ((not settings.helm_lanky()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmDiddy1", logic = function() return ((not settings.helm_diddy()) or (settings.helm_setting() == "skip_all")) end },
    { id = "HelmDiddy2", logic = function() return ((not settings.helm_diddy()) or (settings.helm_setting() == "skip_all")) end },
  },
  events = {
    { id = "HelmDoorsOpened", logic = function() return state.checkBarrier("helm_star_gates") end },
    { id = "HelmGatesPunched", logic = function() return (state.checkBarrier("helm_punch_gates") and state.event("HelmDoorsOpened")) end },
    { id = "HelmFinished", logic = function() return (settings.helm_setting() == "skip_all") end },
  },
  exits = {
    { dest = "HideoutHelmStart", logic = function() return ((settings.helm_setting() == "default") and state.canAccessHelm()) end },
    { dest = "HideoutHelmMain", logic = function() return ((settings.helm_setting() == "skip_start") and state.canAccessHelm()) end },
    { dest = "HideoutHelmAfterBoM", logic = function() return (settings.helm_setting() == "skip_all") end },
    { dest = "HideoutHelmLobbyPastVines", logic = function() return state.event("HelmFinished") end, exitShuffleId="HelmToIsles" },
  },
}

-- region: HideoutHelmStart  (Hideout Helm Start)
M.regions["HideoutHelmStart"] = {
  display_name = [[Hideout Helm Start]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = nil,
  locations = {
    { id = "HelmMainEnemy_Start0", logic = function() return true end },
    { id = "HelmMainEnemy_Start1", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_Start0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_Start1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmSwitchRoom", logic = function() return ((state.handstand() and state.lanky()) or state.slope_resets()) end },
    { dest = "HideoutHelmAfterBoM", logic = function() return ((settings.helm_setting() == "skip_all") or state.event("HelmFinished")) end },
  },
}

-- region: HideoutHelmSwitchRoom  (Hideout Helm Start)
M.regions["HideoutHelmSwitchRoom"] = {
  display_name = [[Hideout Helm Start]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmMainEnemy_Hill", logic = function() return true end },
    { id = "HelmMainEnemy_SwitchRoom0", logic = function() return true end },
    { id = "HelmMainEnemy_SwitchRoom1", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_Hill", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_SwitchRoom0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_SwitchRoom1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmStart", logic = function() return true end },
    { dest = "HideoutHelmMiniRoom", logic = function() return (state.pineapple() and state.chunky() and state.can_use_vines()) end },
    { dest = "HideoutHelmOOBChunky", logic = function() return (state.CanMoonkick() or state.CanPhase() or state.CanOStandTBSNoclip()) end },
  },
}

-- region: HideoutHelmMiniRoom  (Hideout Helm Start)
M.regions["HideoutHelmMiniRoom"] = {
  display_name = [[Hideout Helm Start]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmMainEnemy_MiniRoom0", logic = function() return true end },
    { id = "HelmMainEnemy_MiniRoom1", logic = function() return true end },
    { id = "HelmMainEnemy_MiniRoom2", logic = function() return true end },
    { id = "HelmMainEnemy_MiniRoom3", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_MiniRoom0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_MiniRoom1", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_MiniRoom2", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_MiniRoom3", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return (state.tiny() and state.mini()) end },
    { dest = "HideoutHelmOOBChunky", logic = function() return ((state.generalclips() and state.chunky()) or state.CanPhase() or state.CanOStandTBSNoclip()) end },
  },
}

-- region: HideoutHelmMain  (Hideout Helm Main)
M.regions["HideoutHelmMain"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmBattleArena", logic = function() return ((not settings.crown_placement_rando()) and state.jetpack() and state.diddy() and state.event("HelmFinished")) end },
  },
  events = {
    { id = "HelmDoorsOpened", logic = function() return (state.grab() and state.donkey() and state.jetpack() and state.diddy()) end },
    { id = "HelmGatesPunched", logic = function() return (state.event("HelmDoorsOpened") and state.chunky() and state.punch()) end },
    { id = "HelmDonkeyDone", logic = function() return (state.HelmDonkey1() and state.HelmDonkey2()) end },
    { id = "HelmChunkyDone", logic = function() return (state.HelmChunky1() and state.HelmChunky2()) end },
    { id = "HelmTinyDone", logic = function() return (state.HelmTiny1() and state.HelmTiny2()) end },
    { id = "HelmLankyDone", logic = function() return (state.HelmLanky1() and state.HelmLanky2()) end },
    { id = "HelmDiddyDone", logic = function() return (state.HelmDiddy1() and state.HelmDiddy2()) end },
    { id = "HelmFinished", logic = function() return (state.event("HelmDonkeyDone") and state.event("HelmChunkyDone") and state.event("HelmTinyDone") and state.event("HelmLankyDone") and state.event("HelmDiddyDone")) end },
  },
  exits = {
    { dest = "HideoutHelmDonkeyRoom", logic = function() return (state.bongos() and state.donkey() and state.isPriorHelmComplete("donkey") and state.event("HelmGatesPunched")) end },
    { dest = "HideoutHelmChunkyRoom", logic = function() return (state.triangle() and state.chunky() and state.isPriorHelmComplete("chunky") and state.event("HelmGatesPunched")) end },
    { dest = "HideoutHelmTinyRoom", logic = function() return (state.saxophone() and state.tiny() and state.isPriorHelmComplete("tiny") and state.event("HelmGatesPunched")) end },
    { dest = "HideoutHelmLankyRoom", logic = function() return (state.trombone() and state.lanky() and state.isPriorHelmComplete("lanky") and state.event("HelmGatesPunched")) end },
    { dest = "HideoutHelmDiddyRoom", logic = function() return (state.guitar() and state.jetpack() and state.diddy() and state.isPriorHelmComplete("diddy") and state.event("HelmDoorsOpened")) end },
    { dest = "HideoutHelmAfterBoM", logic = function() return state.event("HelmFinished") end },
    { dest = "HideoutHelmOOBChunky", logic = function() return (state.CanPhase() or state.CanOStandTBSNoclip()) end },
    { dest = "HideoutHelmOOBLanky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmDonkeyRoom  (Hideout Helm Main)
M.regions["HideoutHelmDonkeyRoom"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmDonkey1", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelSecond" },
    { id = "HelmDonkey2", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelFirst" },
    { id = "HelmDonkeyMedal", logic = function() return (state.event("HelmDonkeyDone") and state.donkey()) end },
    { id = "HelmMainEnemy_DKRoom", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_DKRoom", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmOOBChunky", logic = function() return (state.CanPhase() or (state.donkey() and state.generalclips())) end },
  },
}

-- region: HideoutHelmChunkyRoom  (Hideout Helm Main)
M.regions["HideoutHelmChunkyRoom"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmChunky1", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelFirst" },
    { id = "HelmChunky2", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelSecond" },
    { id = "HelmChunkyMedal", logic = function() return (state.event("HelmChunkyDone") and state.chunky()) end },
    { id = "HelmMainEnemy_ChunkyRoom0", logic = function() return true end },
    { id = "HelmMainEnemy_ChunkyRoom1", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_ChunkyRoom0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_ChunkyRoom1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmOOBChunky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmTinyRoom  (Hideout Helm Main)
M.regions["HideoutHelmTinyRoom"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmTiny1", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelSecond" },
    { id = "HelmTiny2", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelFirst" },
    { id = "HelmTinyMedal", logic = function() return (state.event("HelmTinyDone") and state.tiny()) end },
    { id = "HelmMainEnemy_TinyRoom", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_TinyRoom", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmOOBChunky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmLankyRoom  (Hideout Helm Main)
M.regions["HideoutHelmLankyRoom"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmLanky1", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelFirst" },
    { id = "HelmLanky2", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelSecond" },
    { id = "HelmLankyMedal", logic = function() return (state.event("HelmLankyDone") and state.lanky()) end },
    { id = "HelmMainEnemy_LankyRoom0", logic = function() return true end },
    { id = "HelmMainEnemy_LankyRoom1", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_LankyRoom0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_LankyRoom1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmOOBLanky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmDiddyRoom  (Hideout Helm Main)
M.regions["HideoutHelmDiddyRoom"] = {
  display_name = [[Hideout Helm Main]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmDiddy1", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelFirst" },
    { id = "HelmDiddy2", logic = function() return true end, bonusBarrel="MinigameType.HelmBarrelSecond" },
    { id = "HelmDiddyMedal", logic = function() return (state.event("HelmDiddyDone") and state.diddy()) end },
    { id = "HelmMainEnemy_DiddyRoom0", logic = function() return true end },
    { id = "HelmMainEnemy_DiddyRoom1", logic = function() return true end },
    { id = "KremKap_HelmMainEnemy_DiddyRoom0", logic = function() return state.camera() end },
    { id = "KremKap_HelmMainEnemy_DiddyRoom1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmOOBLanky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmAfterBoM  (Hideout Helm Navigation Room)
M.regions["HideoutHelmAfterBoM"] = {
  display_name = [[Hideout Helm Navigation Room]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
    { id = "HelmMainEnemy_NavRight", logic = function() return state.event("HelmFinished") end },
    { id = "HelmMainEnemy_NavLeft", logic = function() return state.event("HelmFinished") end },
    { id = "KremKap_HelmMainEnemy_NavRight", logic = function() return (state.camera() and state.event("HelmFinished")) end },
    { id = "KremKap_HelmMainEnemy_NavLeft", logic = function() return (state.camera() and state.event("HelmFinished")) end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmStart", logic = function() return true end },
    { dest = "HideoutHelmMain", logic = function() return state.event("HelmFinished") end },
    { dest = "HideoutHelmThroneRoom", logic = function() return state.CrownDoorOpened() end },
    { dest = "HideoutHelmOOBLanky", logic = function() return (state.generalclips() or state.CanPhase()) end },
  },
}

-- region: HideoutHelmThroneRoom  (Hideout Helm Throne Room)
M.regions["HideoutHelmThroneRoom"] = {
  display_name = [[Hideout Helm Throne Room]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmAfterBoM", logic = function() return state.CrownDoorOpened() end },
    { dest = "HideoutHelmKeyRoom", logic = function() return state.CoinDoorOpened() end },
    { dest = "HideoutHelmOOBLanky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmKeyRoom  (Hideout Helm Key Room)
M.regions["HideoutHelmKeyRoom"] = {
  display_name = [[Hideout Helm Key Room]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = nil,
  locations = {
    { id = "HelmKey", logic = function() return true end },
    { id = "HelmBananaFairy1", logic = function() return state.camera() end },
    { id = "HelmBananaFairy2", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmOOBLanky", logic = function() return state.CanPhase() end },
  },
}

-- region: HideoutHelmOOBChunky  (Hideout Helm OOB (Chunky Room Elevation))
M.regions["HideoutHelmOOBChunky"] = {
  display_name = [[Hideout Helm OOB (Chunky Room Elevation)]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmStart", logic = function() return true end },
    { dest = "HideoutHelmSwitchRoom", logic = function() return true end },
    { dest = "HideoutHelmMiniRoom", logic = function() return true end },
    { dest = "HideoutHelmMain", logic = function() return true end },
    { dest = "HideoutHelmDonkeyRoom", logic = function() return true end },
    { dest = "HideoutHelmChunkyRoom", logic = function() return true end },
    { dest = "HideoutHelmTinyRoom", logic = function() return true end },
    { dest = "HideoutHelmAfterBoM", logic = function() return true end },
    { dest = "HideoutHelmThroneRoom", logic = function() return true end },
    { dest = "HideoutHelmOOBLanky", logic = function() return (state.diddy() or state.tiny()) end },
  },
}

-- region: HideoutHelmOOBLanky  (Hideout Helm OOB (Lanky Room Elevation))
M.regions["HideoutHelmOOBLanky"] = {
  display_name = [[Hideout Helm OOB (Lanky Room Elevation)]],
  hint_region  = "Helm",
  level        = "HideoutHelm",
  deathwarp    = -1,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "HideoutHelmOOBChunky", logic = function() return true end },
    { dest = "HideoutHelmLankyRoom", logic = function() return true end },
    { dest = "HideoutHelmDiddyRoom", logic = function() return (state.diddy() or state.tiny()) end },
    { dest = "HideoutHelmAfterBoM", logic = function() return true end },
    { dest = "HideoutHelmThroneRoom", logic = function() return true end },
    { dest = "HideoutHelmKeyRoom", logic = function() return true end },
  },
}

if _G.graph and _G.graph.regions then
  for _name, _region in pairs(M.regions) do _G.graph.regions[_name] = _region end
end
return M