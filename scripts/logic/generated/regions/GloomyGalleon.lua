-- AUTO-GENERATED — do not hand-edit.
-- Source: randomizer/LogicFiles/GloomyGalleon.py
-- Regenerate via: python3 -m randomizer.Patching.PopTrackerExport.region_emitter

local M = {}
M.regions = {}

-- region: GloomyGalleonMedals  (Gloomy Galleon Medals)
M.regions["GloomyGalleonMedals"] = {
  display_name = [[Gloomy Galleon Medals]],
  hint_region  = "GalleonCBs",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  restart      = -1,
  locations = {
    { id = "GalleonDonkeyMedal", logic = function() return (state.cb("GloomyGalleon", "donkey") >= settings.medal_cb_req_level(3)) end },
    { id = "GalleonDiddyMedal", logic = function() return (state.cb("GloomyGalleon", "diddy") >= settings.medal_cb_req_level(3)) end },
    { id = "GalleonLankyMedal", logic = function() return (state.cb("GloomyGalleon", "lanky") >= settings.medal_cb_req_level(3)) end },
    { id = "GalleonTinyMedal", logic = function() return (state.cb("GloomyGalleon", "tiny") >= settings.medal_cb_req_level(3)) end },
    { id = "GalleonChunkyMedal", logic = function() return (state.cb("GloomyGalleon", "chunky") >= settings.medal_cb_req_level(3)) end },
    { id = "GalleonDonkeyHalfMedal", logic = function() return (state.cb("GloomyGalleon", "donkey") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
    { id = "GalleonDiddyHalfMedal", logic = function() return (state.cb("GloomyGalleon", "diddy") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
    { id = "GalleonLankyHalfMedal", logic = function() return (state.cb("GloomyGalleon", "lanky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
    { id = "GalleonTinyHalfMedal", logic = function() return (state.cb("GloomyGalleon", "tiny") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
    { id = "GalleonChunkyHalfMedal", logic = function() return (state.cb("GloomyGalleon", "chunky") >= math.max(1, math.floor(math.floor(settings.medal_cb_req_level(3) / (2 ^ 1))))) end },
  },
  events = {
  },
  exits = {
  },
}

-- region: GloomyGalleonEntryHandler  (Gloomy Galleon Entry Handler)
M.regions["GloomyGalleonEntryHandler"] = {
  display_name = [[Gloomy Galleon Entry Handler]],
  hint_region  = "Error",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  restart      = -1,
  locations = {
  },
  events = {
    { id = "GalleonEntered", logic = function() return true end },
  },
  exits = {
    { dest = "GloomyGalleonLobby", logic = function() return true end, exitShuffleId="GalleonToIsles" },
    { dest = "GloomyGalleonStart", logic = function() return true end },
  },
}

-- region: GloomyGalleonStart  (Gloomy Galleon Start)
M.regions["GloomyGalleonStart"] = {
  display_name = [[Gloomy Galleon Start]],
  hint_region  = "GalleonCaverns",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonChunkyChest", logic = function() return (state.punch() and state.chunky()) end },
    { id = "BreakableGalleonHeadphonesChest", logic = function() return (state.punch() and state.chunky()) end },
    { id = "GalleonBattleArena", logic = function() return ((not settings.crown_placement_rando()) and ((state.punch() and state.chunky()) or state.CanPhase() or state.CanSkew(false, false))) end },
    { id = "GalleonBananaFairybyCranky", logic = function() return (state.camera() and state.punch() and state.chunky()) end },
    { id = "GalleonMainEnemy_ChestRoom0", logic = function() return true end },
    { id = "GalleonMainEnemy_ChestRoom1", logic = function() return true end },
    { id = "GalleonMainEnemy_NearVineCannon", logic = function() return true end },
    { id = "GalleonMainEnemy_CrankyCannon", logic = function() return true end },
    { id = "GalleonMainEnemy_PeanutTunnel", logic = function() return true end },
    { id = "GalleonMainEnemy_CoconutTunnel", logic = function() return true end },
    { id = "KremKap_GalleonMainEnemy_ChestRoom0", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_ChestRoom1", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_NearVineCannon", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_CrankyCannon", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_PeanutTunnel", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_CoconutTunnel", logic = function() return state.camera() end },
    { id = "Balloon041", logic = function() return (((state.chunky() and state.punch()) or state.CanPhase() or state.CanSkew(false, false)) and state.lanky() and state.grape()) end },
    { id = "Balloon042", logic = function() return (((state.chunky() and state.punch()) or state.CanPhase() or state.CanSkew(false, false)) and state.lanky() and state.grape()) end },
    { id = "Balloon046", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "GalleonLankySwitch", logic = function() return (state.CanSlamSwitch("GloomyGalleon", 1) and state.lanky() and (state.swim() or state.galleonGatesStayOpen())) end },
    { id = "GalleonTinySwitch", logic = function() return (state.CanSlamSwitch("GloomyGalleon", 1) and state.tiny() and (state.swim() or state.galleonGatesStayOpen())) end },
    { id = "LighthouseGateOpened", logic = function() return state.hasMoveSwitchsanity("GalleonLighthouse", false) end },
    { id = "ShipyardGateOpened", logic = function() return state.hasMoveSwitchsanity("GalleonShipwreck", false) end },
    { id = "GalleonCannonRoomOpened", logic = function() return state.hasMoveSwitchsanity("GalleonCannonGame", false) end },
    { id = "GalleonW1aTagged", logic = function() return true end },
    { id = "GalleonW2aTagged", logic = function() return true end },
    { id = "WaterLowered", logic = function() return (settings.galleon_water_internal() == "lowered") end },
    { id = "WaterRaised", logic = function() return (settings.galleon_water_internal() == "raised") end },
  },
  exits = {
    { dest = "GalleonPastVines", logic = function() return ((state.can_use_vines() or state.CanMoonkick()) and state.cannons()) end },
    { dest = "GalleonBeyondPineappleGate", logic = function() return (state.event("GalleonCannonRoomOpened") or state.CanPhase() or state.CanSkew(false, false) or (state.CanPhaseswim() and state.event("WaterRaised"))) end },
    { dest = "LighthouseSurface", logic = function() return (state.checkBarrier("galleon_lighthouse_gate") or state.event("LighthouseGateOpened") or state.CanPhase() or state.CanSkew(false, false)) end },
    { dest = "Shipyard", logic = function() return ((state.checkBarrier("galleon_shipyard_area_gate") or state.event("ShipyardGateOpened") or state.CanPhase() or state.CanSkew(false, false) or (state.CanPhaseswim() and state.event("WaterRaised"))) and ((not state.IsLavaWater()) or (state.Melons() >= 2))) end },
    { dest = "CrankyGalleon", logic = function() return (state.crankyAccess() and state.cannons()) end },
  },
}

-- region: GalleonPastVines  (Galleon Past Vines)
M.regions["GalleonPastVines"] = {
  display_name = [[Galleon Past Vines]],
  hint_region  = "GalleonCaverns",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonKasplatNearLab", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
    { id = "GalleonW3aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "GloomyGalleonStart", logic = function() return true end },
    { dest = "GalleonBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: GalleonBeyondPineappleGate  (Galleon Beyond Pineapple Gate)
M.regions["GalleonBeyondPineappleGate"] = {
  display_name = [[Galleon Beyond Pineapple Gate]],
  hint_region  = "GalleonCaverns",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonChunkyCannonGame", logic = function() return (state.CanGetOnCannonGamePlatform() and state.chunky() and state.barrels()) end },
    { id = "GalleonKasplatCannons", logic = function() return ((not settings.kasplat_rando()) and state.CanGetOnCannonGamePlatform()) end },
    { id = "Balloon048", logic = function() return (state.chunky() and state.pineapple() and state.CanGetOnCannonGamePlatform()) end },
  },
  events = {
  },
  exits = {
    { dest = "GloomyGalleonStart", logic = function() return (state.event("GalleonCannonRoomOpened") or state.CanPhaseswim() or (state.CanPhase() and state.CanGetOnCannonGamePlatform())) end },
    { dest = "Shipyard", logic = function() return ((state.CanPhaseswim() or (state.CanPhase() and state.CanGetOnCannonGamePlatform())) and ((not state.IsLavaWater()) or (state.Melons() >= 2))) end },
  },
}

-- region: LighthouseSurface  (Lighthouse Surface)
M.regions["LighthouseSurface"] = {
  display_name = [[Lighthouse Surface]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonKasplatLighthouseArea", logic = function() return (not settings.kasplat_rando()) end },
    { id = "Balloon040", logic = function() return (state.tiny() and state.feather() and state.event("WaterLowered")) end },
  },
  events = {
    { id = "GalleonChunkyPad", logic = function() return ((state.triangle() and state.chunky()) and (state.swim() or state.galleonGatesStayOpen()) and state.event("WaterLowered")) end },
    { id = "WaterLowered", logic = function() return (settings.galleon_water_internal() == "lowered") end },
    { id = "WaterRaised", logic = function() return (settings.galleon_water_internal() == "raised") end },
  },
  exits = {
    { dest = "GloomyGalleonStart", logic = function() return state.event("LighthouseGateOpened") end },
    { dest = "LighthouseUnderwater", logic = function() return (state.swim() and ((not state.IsLavaWater()) or (state.Melons() >= 3))) end },
    { dest = "LighthousePlatform", logic = function() return (state.event("WaterRaised") or (state.monkey_maneuvers() and (state.lanky() or state.chunky()))) end },
    { dest = "LighthouseSnideAlcove", logic = function() return (state.event("WaterRaised") or (state.monkey_maneuvers() and (state.lanky() or state.chunky()))) end },
    { dest = "GalleonBeyondPineappleGate", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: LighthousePlatform  (Lighthouse Platform)
M.regions["LighthousePlatform"] = {
  display_name = [[Lighthouse Platform]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDiddyShipSwitch", logic = function() return (state.event("ActivatedLighthouse") and state.jetpack() and state.CanSlamSwitch("GloomyGalleon", 1) and state.diddy()) end },
    { id = "Balloon044", logic = function() return (state.diddy() and state.peanut()) end },
    { id = "Balloon045", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
    { id = "MechafishSummoned", logic = function() return (state.jetpack() and state.guitar() and state.canTravelToMechFish() and state.diddy()) end },
    { id = "GalleonW1bTagged", logic = function() return true end },
    { id = "GalleonW5aTagged", logic = function() return true end },
  },
  exits = {
    { dest = "LighthouseSurface", logic = function() return true end },
    { dest = "Lighthouse", logic = function() return (((state.CanSlamSwitch("GloomyGalleon", 1) and state.donkey()) or state.generalclips()) and state.climbing()) end, exitShuffleId="GalleonLighthouseAreaToLighthouse" },
    { dest = "SickBay", logic = function() return (state.event("ActivatedLighthouse") and state.Slam() and state.chunky()) end, exitShuffleId="GalleonLighthouseAreaToSickBay" },
    { dest = "GalleonBaboonBlast", logic = function() return (state.blast() and state.donkey()) end },
  },
}

-- region: LighthouseUnderwater  (Lighthouse Underwater)
M.regions["LighthouseUnderwater"] = {
  display_name = [[Lighthouse Underwater]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonLankyEnguardeChest", logic = function() return (state.event("LighthouseEnguarde") and state.lanky()) end },
    { id = "BreakableGalleonHighHole", logic = function() return state.event("LighthouseEnguarde") end },
    { id = "BreakableGalleonHighKevin", logic = function() return state.event("LighthouseEnguarde") end },
    { id = "BreakableGalleonMidKevin", logic = function() return state.event("LighthouseEnguarde") end },
    { id = "BreakableGalleonMidHole", logic = function() return state.event("LighthouseEnguarde") end },
  },
  events = {
    { id = "WaterLowered", logic = function() return true end },
    { id = "WaterRaised", logic = function() return true end },
    { id = "LighthouseEnguarde", logic = function() return state.lanky() end },
  },
  exits = {
    { dest = "LighthouseSurface", logic = function() return true end },
    { dest = "LighthouseEnguardeDoor", logic = function() return (state.event("LighthouseEnguarde") or state.CanPhaseswim()) end },
    { dest = "MermaidRoom", logic = function() return ((state.mini() and state.tiny()) or state.CanPhaseswim()) end, exitShuffleId="GalleonLighthouseAreaToMermaid" },
    { dest = "GalleonBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: LighthouseEnguardeDoor  (Lighthouse Enguarde Door)
M.regions["LighthouseEnguardeDoor"] = {
  display_name = [[Lighthouse Enguarde Door]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "LighthouseUnderwater", logic = function() return true end },
    { dest = "GalleonBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: LighthouseSnideAlcove  (Lighthouse Snide Alcove)
M.regions["LighthouseSnideAlcove"] = {
  display_name = [[Lighthouse Snide Alcove]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "Balloon051", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
    { id = "GalleonW3bTagged", logic = function() return true end },
  },
  exits = {
    { dest = "LighthouseSurface", logic = function() return true end },
    { dest = "Snide", logic = function() return state.snideAccess() end },
  },
}

-- region: GalleonBaboonBlast  (Galleon Baboon Blast)
M.regions["GalleonBaboonBlast"] = {
  display_name = [[Galleon Baboon Blast]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
  },
  events = {
    { id = "SealReleased", logic = function() return state.donkey() end },
  },
  exits = {
    { dest = "LighthousePlatform", logic = function() return true end },
  },
}

-- region: Lighthouse  (Lighthouse)
M.regions["Lighthouse"] = {
  display_name = [[Lighthouse]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = -1,
  locations = {
    { id = "RainbowCoin_Location09", logic = function() return true end },
    { id = "GalleonLighthouseEnemy_Enemy0", logic = function() return true end },
    { id = "GalleonLighthouseEnemy_Enemy1", logic = function() return true end },
    { id = "KremKap_GalleonLighthouseEnemy_Enemy0", logic = function() return state.camera() end },
    { id = "KremKap_GalleonLighthouseEnemy_Enemy1", logic = function() return state.camera() end },
    { id = "Balloon064", logic = function() return (state.donkey() and state.coconut()) end },
  },
  events = {
  },
  exits = {
    { dest = "LighthousePlatform", logic = function() return true end, exitShuffleId="GalleonLighthouseToLighthouseArea" },
    { dest = "LighthouseAboveLadder", logic = function() return state.climbing() end },
  },
}

-- region: LighthouseAboveLadder  (Lighthouse Above Ladder)
M.regions["LighthouseAboveLadder"] = {
  display_name = [[Lighthouse Above Ladder]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDonkeyLighthouse", logic = function() return (state.event("ActivatedLighthouse") and (state.donkey() or settings.free_trade_items())) end },
  },
  events = {
    { id = "ActivatedLighthouse", logic = function() return (state.grab() and state.donkey()) end },
  },
  exits = {
    { dest = "Lighthouse", logic = function() return true end },
  },
}

-- region: MermaidRoom  (Mermaid Room)
M.regions["MermaidRoom"] = {
  display_name = [[Mermaid Room]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonTinyPearls", logic = function() return ((state.Pearls() >= settings.mermaid_gb_pearls()) and (state.tiny() or settings.free_trade_items())) end },
    { id = "KremKap_GalleonNPC_Mermaid", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "LighthouseUnderwater", logic = function() return true end, exitShuffleId="GalleonMermaidToLighthouseArea" },
  },
}

-- region: SickBay  (Sick Bay)
M.regions["SickBay"] = {
  display_name = [[Sick Bay]],
  hint_region  = "Lighthouse",
  level        = "GloomyGalleon",
  deathwarp    = -1,
  locations = {
    { id = "GalleonChunkySeasick", logic = function() return (state.punch() and state.chunky()) end },
  },
  events = {
  },
  exits = {
    { dest = "LighthousePlatform", logic = function() return state.cannons() end, exitShuffleId="GalleonSickBayToLighthouseArea" },
  },
}

-- region: Shipyard  (Shipyard)
M.regions["Shipyard"] = {
  display_name = [[Shipyard]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDonkeyFreetheSeal", logic = function() return (state.event("SealReleased") and (state.donkey() or settings.free_trade_items())) end },
    { id = "GalleonKasplatNearSub", logic = function() return (not settings.kasplat_rando()) end },
    { id = "MelonCrate_Location05", logic = function() return true end },
    { id = "KremKap_GalleonNPC_Seal", logic = function() return (state.camera() and state.event("SealReleased")) end },
    { id = "Balloon039", logic = function() return (state.diddy() and state.peanut()) end },
    { id = "Balloon043", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon049", logic = function() return (state.chunky() and state.pineapple()) end },
    { id = "Balloon050", logic = function() return (state.lanky() and state.grape()) end },
  },
  events = {
    { id = "ShipyardTreasureRoomOpened", logic = function() return ((state.event("ShipyardEnguarde") and (state.event("WaterRaised") or state.monkey_maneuvers())) or state.checkBarrier("galleon_treasure_room")) end },
    { id = "GalleonDonkeyPad", logic = function() return (state.bongos() and state.donkey() and (state.swim() or state.galleonGatesStayOpen())) end },
    { id = "GalleonDiddyPad", logic = function() return (state.guitar() and state.diddy() and (state.swim() or state.galleonGatesStayOpen()) and state.event("WaterLowered")) end },
    { id = "GalleonLankyPad", logic = function() return (state.trombone() and state.lanky() and (state.swim() or state.galleonGatesStayOpen()) and state.event("WaterLowered")) end },
    { id = "GalleonTinyPad", logic = function() return (state.saxophone() and state.tiny() and (state.swim() or state.galleonGatesStayOpen())) end },
    { id = "GalleonW2bTagged", logic = function() return true end },
    { id = "GalleonW4bTagged", logic = function() return true end },
    { id = "GalleonW5bTagged", logic = function() return true end },
    { id = "WaterLowered", logic = function() return (settings.galleon_water_internal() == "lowered") end },
    { id = "WaterRaised", logic = function() return (settings.galleon_water_internal() == "raised") end },
  },
  exits = {
    { dest = "GloomyGalleonStart", logic = function() return state.event("ShipyardGateOpened") end },
    { dest = "ShipyardUnderwater", logic = function() return (state.swim() and ((not state.IsLavaWater()) or (state.Melons() >= 3))) end },
    { dest = "SealRace", logic = function() return ((state.event("SealReleased") and state.event("WaterRaised") and state.donkey()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToSeal" },
    { dest = "CandyGalleon", logic = function() return state.candyAccess() end },
    { dest = "FunkyGalleon", logic = function() return state.funkyAccess() end },
  },
}

-- region: ShipyardUnderwater  (Shipyard Underwater)
M.regions["ShipyardUnderwater"] = {
  display_name = [[Shipyard Underwater]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "KremKap_GalleonMainEnemy_Submarine", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_5DS0", logic = function() return state.camera() end },
    { id = "KremKap_GalleonMainEnemy_5DS1", logic = function() return state.camera() end },
    { id = "KremKap_GalleonNPC_Mechfish", logic = function() return (state.camera() and state.event("MechafishSummoned") and state.diddy()) end },
    { id = "BreakableGalleonCloseSubmarine", logic = function() return state.event("ShipyardEnguarde") end },
    { id = "BreakableGalleonClose2DS", logic = function() return state.event("ShipyardEnguarde") end },
    { id = "BreakableGalleonUnderTunnel", logic = function() return state.event("ShipyardEnguarde") end },
    { id = "BreakableGalleonUnderDiddy5DS", logic = function() return state.event("ShipyardEnguarde") end },
    { id = "BreakableGalleonNearMechFish", logic = function() return state.event("ShipyardEnguarde") end },
  },
  events = {
    { id = "ShipyardEnguarde", logic = function() return state.lanky() end },
  },
  exits = {
    { dest = "Shipyard", logic = function() return ((not state.IsLavaWater()) or (state.Melons() >= 2)) end },
    { dest = "TreasureRoom", logic = function() return (state.event("ShipyardTreasureRoomOpened") or state.CanPhaseswim()) end },
    { dest = "Submarine", logic = function() return (((state.mini() or state.CanSTS()) and state.tiny()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToSubmarine" },
    { dest = "Mechafish", logic = function() return (state.event("MechafishSummoned") and state.diddy()) end, exitShuffleId="GalleonShipyardToMechFish" },
    { dest = "LankyShip", logic = function() return ((state.event("GalleonLankySwitch") and state.lanky()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToLanky" },
    { dest = "TinyShip", logic = function() return ((state.event("GalleonTinySwitch") and state.tiny()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToTiny" },
    { dest = "BongosShip", logic = function() return ((state.event("GalleonDonkeyPad") and state.donkey()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToBongos" },
    { dest = "GuitarShip", logic = function() return ((state.event("GalleonDiddyPad") and state.diddy()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToGuitar" },
    { dest = "TromboneShip", logic = function() return ((state.event("GalleonLankyPad") and state.lanky()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToTrombone" },
    { dest = "SaxophoneShip", logic = function() return ((state.event("GalleonTinyPad") and state.tiny()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToSaxophone" },
    { dest = "TriangleShip", logic = function() return ((state.event("GalleonChunkyPad") and state.chunky()) or state.CanPhaseswim()) end, exitShuffleId="GalleonShipyardToTriangle" },
    { dest = "GalleonBossLobby", logic = function() return (not settings.tns_location_rando()) end },
  },
}

-- region: SealRace  (Seal Race)
M.regions["SealRace"] = {
  display_name = [[Seal Race]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDonkeySealRace", logic = function() return state.HasEnoughRaceCoins("GalleonSealRace", "donkey", (not settings.free_trade_items())) end },
  },
  events = {
  },
  exits = {
    { dest = "Shipyard", logic = function() return ((not state.IsLavaWater()) or (state.Melons() >= 2)) end, exitShuffleId="GalleonSealToShipyard" },
  },
}

-- region: TreasureRoom  (Treasure Room)
M.regions["TreasureRoom"] = {
  display_name = [[Treasure Room]],
  hint_region  = "TreasureRoom",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonLankyGoldTower", logic = function() return (((state.event("WaterRaised") or (state.event("ShipyardEnguarde") and state.event("ShipyardTreasureRoomOpened") and state.monkey_maneuvers())) and state.balloon() and state.lanky()) or (state.CanMoonkick() and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "Balloon047", logic = function() return (state.diddy() and state.peanut()) end },
    { id = "Balloon052", logic = function() return (state.tiny() and state.feather()) end },
  },
  events = {
    { id = "WaterLowered", logic = function() return (settings.galleon_water_internal() == "lowered") end },
    { id = "WaterRaised", logic = function() return (settings.galleon_water_internal() == "raised") end },
    { id = "ShipyardTreasureRoomOpened", logic = function() return state.checkBarrier("galleon_treasure_room") end },
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return ((state.event("ShipyardTreasureRoomOpened") or state.CanPhaseswim()) and state.swim()) end },
    { dest = "TinyChest", logic = function() return ((state.mini() and state.tiny() and state.swim()) or state.CanPhaseswim()) end, exitShuffleId="GalleonTreasureToChest" },
    { dest = "TreasureRoomDiddyGoldTower", logic = function() return ((state.event("WaterRaised") and state.spring() and state.diddy()) or state.CanMoonkick() or (state.event("ShipyardEnguarde") and state.event("ShipyardTreasureRoomOpened") and state.monkey_maneuvers() and state.balloon() and state.lanky())) end },
  },
}

-- region: TreasureRoomDiddyGoldTower  (Treasure Room Diddy Gold Tower)
M.regions["TreasureRoomDiddyGoldTower"] = {
  display_name = [[Treasure Room Diddy Gold Tower]],
  hint_region  = "TreasureRoom",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDiddyGoldTower", logic = function() return ((state.spring() and state.diddy()) or (state.CanMoonkick() and settings.free_trade_items())) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "GalleonKasplatGoldTower", logic = function() return (not settings.kasplat_rando()) end },
  },
  events = {
    { id = "GalleonW4aTagged", logic = function() return state.special_loc("GalleonDiddyGoldTower") end },
  },
  exits = {
    { dest = "TreasureRoom", logic = function() return true end },
  },
}

-- region: TinyChest  (Tiny Chest)
M.regions["TinyChest"] = {
  display_name = [[Tiny Chest]],
  hint_region  = "TreasureRoom",
  level        = "GloomyGalleon",
  deathwarp    = -1,
  locations = {
    { id = "GalleonPearl0", logic = function() return true end },
    { id = "GalleonPearl1", logic = function() return true end },
    { id = "GalleonPearl2", logic = function() return true end },
    { id = "GalleonPearl3", logic = function() return true end },
    { id = "GalleonPearl4", logic = function() return true end },
  },
  events = {
  },
  exits = {
    { dest = "TreasureRoom", logic = function() return true end, exitShuffleId="GalleonChestToTreasure" },
  },
}

-- region: Submarine  (Submarine)
M.regions["Submarine"] = {
  display_name = [[Submarine]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonTinySubmarine", logic = function() return (state.tiny() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "KremKap_GalleonSubEnemy_Enemy0", logic = function() return state.camera() end },
    { id = "KremKap_GalleonSubEnemy_Enemy1", logic = function() return state.camera() end },
    { id = "KremKap_GalleonSubEnemy_Enemy2", logic = function() return state.camera() end },
    { id = "KremKap_GalleonSubEnemy_Enemy3", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonSubmarineToShipyard" },
  },
}

-- region: Mechafish  (Mechafish)
M.regions["Mechafish"] = {
  display_name = [[Mechafish]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = -1,
  locations = {
    { id = "GalleonDiddyMechafish", logic = function() return (state.HasGun("diddy") or (settings.free_trade_items() and state.HasGun("any"))) end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonMechFishToShipyard" },
  },
}

-- region: LankyShip  (Lanky Ship)
M.regions["LankyShip"] = {
  display_name = [[Lanky Ship]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonLanky2DoorShip", logic = function() return (state.lanky() or (settings.free_trade_items() and state.CanPhaseswim())) end },
    { id = "BreakableGalleon2DSNearest", logic = function() return state.lanky() end },
    { id = "BreakableGalleon2DSNear", logic = function() return state.lanky() end },
    { id = "BreakableGalleon2DSFar", logic = function() return state.lanky() end },
    { id = "BreakableGalleon2DSFurthest", logic = function() return state.lanky() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonLankyToShipyard" },
    { dest = "TinyShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: TinyShip  (Tiny Ship)
M.regions["TinyShip"] = {
  display_name = [[Tiny Ship]],
  hint_region  = "ShipyardOutskirts",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonTiny2DoorShip", logic = function() return (state.tiny() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "KremKap_Galleon2DSEnemy_Tiny0", logic = function() return state.camera() end },
    { id = "KremKap_Galleon2DSEnemy_Tiny1", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonTinyToShipyard" },
    { dest = "LankyShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: BongosShip  (Bongos Ship)
M.regions["BongosShip"] = {
  display_name = [[Bongos Ship]],
  hint_region  = "FiveDoorShip",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDonkey5DoorShip", logic = function() return (state.donkey() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "KremKap_Galleon5DSDTEnemy_DK0", logic = function() return state.camera() end },
    { id = "KremKap_Galleon5DSDTEnemy_DK1", logic = function() return state.camera() end },
    { id = "KremKap_Galleon5DSDTEnemy_DK2", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonBongosToShipyard" },
    { dest = "SaxophoneShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: GuitarShip  (Guitar Ship)
M.regions["GuitarShip"] = {
  display_name = [[Guitar Ship]],
  hint_region  = "FiveDoorShip",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonDiddy5DoorShip", logic = function() return (state.diddy() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "KremKap_Galleon5DSDLCEnemy_Diddy", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonGuitarToShipyard" },
    { dest = "TriangleShip", logic = function() return state.CanPhaseswim() end },
    { dest = "TromboneShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: TromboneShip  (Trombone Ship)
M.regions["TromboneShip"] = {
  display_name = [[Trombone Ship]],
  hint_region  = "FiveDoorShip",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonLanky5DoorShip", logic = function() return (state.lanky() or settings.free_trade_items()) end },
    { id = "KremKap_Galleon5DSDLCEnemy_Lanky", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonTromboneToShipyard" },
    { dest = "GuitarShip", logic = function() return state.CanPhaseswim() end },
    { dest = "TriangleShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: SaxophoneShip  (Saxophone Ship)
M.regions["SaxophoneShip"] = {
  display_name = [[Saxophone Ship]],
  hint_region  = "FiveDoorShip",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonTiny5DoorShip", logic = function() return (state.tiny() or settings.free_trade_items()) end },
    { id = "GalleonBananaFairy5DoorShip", logic = function() return state.camera() end },
    { id = "KremKap_Galleon5DSDTEnemy_TinyCage", logic = function() return state.camera() end },
    { id = "KremKap_Galleon5DSDTEnemy_TinyBed", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonSaxophoneToShipyard" },
    { dest = "BongosShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: TriangleShip  (Triangle Ship)
M.regions["TriangleShip"] = {
  display_name = [[Triangle Ship]],
  hint_region  = "FiveDoorShip",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonChunky5DoorShip", logic = function() return (state.chunky() or settings.free_trade_items()) end, bonusBarrel="MinigameType.BonusBarrel" },
    { id = "KremKap_Galleon5DSDLCEnemy_Chunky", logic = function() return state.camera() end },
  },
  events = {
  },
  exits = {
    { dest = "ShipyardUnderwater", logic = function() return true end, exitShuffleId="GalleonTriangleToShipyard" },
    { dest = "GuitarShip", logic = function() return state.CanPhaseswim() end },
    { dest = "TromboneShip", logic = function() return state.CanPhaseswim() end },
  },
}

-- region: GalleonBossLobby  (Galleon Boss Lobby)
M.regions["GalleonBossLobby"] = {
  display_name = [[Galleon Boss Lobby]],
  hint_region  = "Bosses",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
  },
  events = {
  },
  exits = {
    { dest = "GalleonBoss", logic = function() return state.IsBossReachable("GloomyGalleon") end },
  },
}

-- region: GalleonBoss  (Galleon Boss)
M.regions["GalleonBoss"] = {
  display_name = [[Galleon Boss]],
  hint_region  = "Bosses",
  level        = "GloomyGalleon",
  deathwarp    = nil,
  locations = {
    { id = "GalleonKey", logic = function() return state.IsBossBeatable("GloomyGalleon") end },
  },
  events = {
  },
  exits = {
  },
}

if _G.graph and _G.graph.regions then
  for _name, _region in pairs(M.regions) do _G.graph.regions[_name] = _region end
end
return M