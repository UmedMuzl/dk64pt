ScriptHost:LoadScript("scripts/logic/medallogic.lua")
ScriptHost:LoadScript("scripts/logic/logichelper.lua")
ScriptHost:LoadScript("scripts/logic/switchsanity.lua")
ScriptHost:LoadScript("scripts/logic/bonuslogic.lua")
ScriptHost:LoadScript("scripts/logic/medalcbrequirement.lua")
ScriptHost:LoadScript("scripts/logic/blocker.lua")
ScriptHost:LoadScript("scripts/logic/CBLogic.lua")

-- =============================================================================
-- Generated logic from DK64-Randomizer (managed by deploy.py).
-- ScriptHost:LoadScript returns true/false (not the module's return value), so
-- each generated module sets its own global on load (state.lua sets _G.state,
-- region files push to _G.graph.regions, etc). logic.lua's job is just to fire
-- the loads in order.
-- =============================================================================
ScriptHost:LoadScript("scripts/logic/generated/state.lua")
ScriptHost:LoadScript("scripts/logic/generated/settings.lua")
ScriptHost:LoadScript("scripts/logic/generated/graph.lua")

local _REGION_LEVELS = {
  "AngryAztec", "CreepyCastle", "CrystalCaves", "DKIsles",
  "FranticFactory", "FungiForest", "GloomyGalleon", "HideoutHelm",
  "JungleJapes", "Shops",
}
for _, lvl in ipairs(_REGION_LEVELS) do
  ScriptHost:LoadScript("scripts/logic/generated/regions/" .. lvl .. ".lua")
end
ScriptHost:LoadScript("scripts/logic/generated/regions/locations_index.lua")
ScriptHost:LoadScript("scripts/logic/generated/regions/location_kong.lua")
ScriptHost:LoadScript("scripts/logic/generated/regions/transition_names.lua")

local _COLLECTIBLE_LEVELS = {
  "AngryAztec", "CreepyCastle", "CrystalCaves", "DKIsles",
  "FranticFactory", "FungiForest", "GloomyGalleon", "JungleJapes",
}
for _, lvl in ipairs(_COLLECTIBLE_LEVELS) do
  ScriptHost:LoadScript("scripts/logic/generated/collectibles/" .. lvl .. ".lua")
end

state._event_lookup       = function(name) return graph.is_event_active(name) end
state._special_loc_lookup = function(_)    return false end

-- AP-specific: archipelago/Regions.py adds two unconditional warps from IslesMain
-- that aren't in randomizer/LogicFiles. These activate the Isles bananaport pads
-- by default (KremIsleBeyondLift is the Factory side; IslesMainUpper is the
-- Aztec/Castle side). Without these, players are gated behind climbing/AztecKey
-- in places where the AP world is more permissive.
do
  local isles = graph.regions["IslesMain"]
  if isles and isles.exits then
    table.insert(isles.exits, { dest = "IslesMainUpper",       logic = function() return true end })
    table.insert(isles.exits, { dest = "KremIsleBeyondLift",   logic = function() return true end })
  end
end

-- $loc|<LocationId> in JSON access rules dispatches to graph.is_location_accessible.
function loc(name) return graph.is_location_accessible(name) end

-- Print per-entry diagnostics for failed EntranceRando alias lookups in graph.lua.
-- Disable by removing this line once the redirect map is healthy.
-- Set _G.LEVEL_DEBUG = true (or _G.ENTRANCE_RANDO_DEBUG = true) to surface
-- per-compute reachability dumps. Off by default to keep the console quiet.
_G.ENTRANCE_RANDO_DEBUG = false
_G.LEVEL_DEBUG = true

-- $canEnter|<Level> resolves to graph.is_region_accessible on the level's
-- main lobby region. With loading-zone rando, vanilla level-order codes don't
-- apply — the region graph (with EntranceRando redirects + KeyTurnedIn events)
-- is the authoritative source for "can the player enter this level".
-- A level is "accessible" if any region inside that level is reachable.
-- With LZR, the level-entry door (LobbyToX) gets shuffled, so being in the lobby
-- doesn't guarantee level access; conversely, a player can reach a level's
-- interior by walking through some other lobby's redirected door. Walking the
-- whole reachable set and checking the level field is the only correct answer.
local _LEVEL_KEY = {
  Japes = "JungleJapes", Aztec = "AngryAztec", Factory = "FranticFactory",
  Galleon = "GloomyGalleon", Forest = "FungiForest", Caves = "CrystalCaves",
  Castle = "CreepyCastle",  Helm = "HideoutHelm",  Isles = "DKIsles",
}
-- Virtual regions used internally by the randomizer (e.g., medal aggregators)
-- — these are reachable trivially but represent no actual gameplay area, so
-- they shouldn't make a level look "accessible". Skip them when answering
-- canEnter().
local _VIRTUAL_REGIONS = {
  JungleJapesMedals = true, AngryAztecMedals = true,
  FranticFactoryMedals = true, GloomyGalleonMedals = true,
  FungiForestMedals = true, CrystalCavesMedals = true,
  CreepyCastleMedals = true, HideoutHelmMedals = true,
  DKIslesMedals = true,
}
function canEnter(level)
  local key = _LEVEL_KEY[level]
  if not key then return false end
  local reachable = graph.reachable_regions()
  for region_name in pairs(reachable) do
    if not _VIRTUAL_REGIONS[region_name] then
      local r = graph.regions[region_name]
      if r and r.level == key then return true end
    end
  end
  return false
end

-- Watch the codes that flow into state.lua so manual UI toggles invalidate the cache.
local function _invalidate_graph() if graph and graph.invalidate then graph.invalidate() end end
local _WATCHED_CODES = {
  "donkey", "diddy", "lanky", "tiny", "chunky",
  "coconut", "peanuts", "grape", "feather", "pineapple",
  "bongos", "guitar", "trombone", "sax", "triangle",
  "blast", "strong", "grab", "charge", "rocket", "spring",
  "orangstand", "balloon", "sprint", "mini", "twirl", "port",
  "big", "punch", "gone",
  "vine", "dive", "oranges", "barrel", "climb", "cannons", "cannon",
  "camera", "shockwave", "homing", "sniper",
  "slam", "greenslam", "blueslam", "redslam",
  "k1", "k2", "k3", "k4", "k5", "k6", "k7", "k8",
  "gb", "crowns", "fairies", "medals", "rainbow", "pearl", "bean",
  "nintendo", "rareware",
  "snide", "cranky", "candy", "funky",
  "openlobbies",
  "phase_walking", "phase_swimming", "phasefall",
  "moonkicks", "moontail",
  "ledge_clips", "general_clips",
  "b_locker_skips", "troff_n_scoff_skips", "spawn_snags",
  "swim_through_shores", "skew", "tag_barrel_storage", "boulder_clips",
  "monkey_maneuvers", "advanced_platforming",
  "hard_shooting", "advanced_grenading", "slope_resets",
  "japes_coconut_gates", "japes_shellhive_gate",
  "aztec_tunnel_door", "aztec_5dtemple_switches", "aztec_llama_switches", "aztec_tiny_temple_ice",
  "factory_production_room", "factory_testing_gate",
  "galleon_lighthouse_gate", "galleon_shipyard_area_gate",
  "galleon_seasick_ship", "galleon_treasure_room",
  "forest_green_tunnel", "forest_yellow_tunnel",
  "caves_igloo_pads", "caves_ice_walls",
  "castle_crypt_doors",
  "helm_punch_gates", "helm_star_gates",
}
for _, code in ipairs(_WATCHED_CODES) do
  ScriptHost:AddWatchForCode("dk64rgen_watch_" .. code, code, _invalidate_graph)
end


-- Function to check if a location is marked as junk
function isLocationJunk(locationName)
    if not JUNK_LOCATIONS then
        return true
    end
    
    for i, junkLocation in pairs(JUNK_LOCATIONS) do
        if junkLocation == locationName then
            return false
        end
    end
    return true
end

-- Function to check if a shop is visible based on SmallerShopsData
function isShopVisible(shopName)
    if not SMALLSHOPSDATA then
        return true -- Default to visible if no data
    end
    
    local shopValue = SMALLSHOPSDATA[shopName]
    if shopValue == nil then
        return true -- Default to visible if shop not found in data
    end
    
    return shopValue == 1 -- 1 means visible, 0 means not there
end

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function not_has(code)
    local count = Tracker:ProviderCountForCode(code)
    return count < 1
  end

function  coconut()
    return has("donkey") and has("coconut")
end

function bongos()
    return has("donkey") and has("bongos")
end

function grab()
    return has("donkey") and has("grab")
end

function blast()
    return has("donkey") and has("blast")
end

function strong()
    return has("donkey") and has("strong")
end

function peanuts()
    return has("diddy") and has("peanuts")
end

function guitar()
    return has("diddy") and has("guitar")
end

function charge()
    return has("diddy") and has("charge")
end

function spring()
    return has("diddy") and has("spring")
end

function rocket()
    return has("diddy") and has("rocket")
end

function grape()
    return has("lanky") and has("grape")
end

function trombone()
    return has("lanky") and has("trombone")
end

function ostand()
    return has("lanky") and has("orangstand")
end

function balloon()
    return has("lanky") and has("balloon")
end

function sprint()
    return has("lanky") and has("sprint")
end

function feather()
    return has("tiny") and has("feather")
end

function sax()
    return has("tiny") and has("sax")
end

function twirl()
    return has("tiny") and has("twirl")
end

function port()
    return has("tiny") and has("port")
end

function mini()
    return has("tiny") and has("mini")
end

function pineapple()
    return has("chunky") and has("pineapple")
end

function triangle()
    return has("chunky") and has("triangle")
end

function punch()
    return has("chunky") and has("punch")
end

function gone()
    return has("chunky") and has("gone")
end

function hunky()
    return has("chunky") and has("big")
end

function enguarde()
    return has("lanky") and has("dive")
end

-- Blueprints

-- Other logic
function canEnterTinyTemple()
    return pineapple() or peanuts() or feather() or grape()
end

function canEnterLlamaTemple()
    return canActivateAztecLlamaCoconut() or canActivateAztecLlamaGrape() or canActivateAztecLlamaFeather()
end

function anyGun()
    return coconut() or peanuts() or grape() or feather() or pineapple()
end

function topOfMushroom()
    return canClimbMushroom() and (ostand() or rocket())
end


function canEnterSprintCabin()
    return trombone() and (rocket() or balloon() or moonkicks())
end


function flyingEnemy()
    return bongos() or guitar() or trombone() or sax() or triangle() or coconut() or peanuts() or grape() or feather() or pineapple()
end

function heavyEnemy()
    return has("shockwave") or has("oranges") or bongos() or guitar() or trombone() or sax() or triangle()
end


function canEnterTree()
    return blast() or phaseswim()
end

function beginningDK5DI()
    return bongos() or phaseswim()
end

function dk5DI()
    return (bongos() or phaseswim()) and (strong() or moonkicks())
end

function beginningDiddy5DI()
    return guitar() or phaseswim()
end


function beginningLanky5DI()
    return trombone() or phaseswim()
end


function beginningTiny5DI()
    return sax() or phaseswim()
end


function chunky5DI()
    return triangle() or phaseswim()
end


function canEnterThornvine()
    if nightTime() and strong() and forestSlam() then
        return AccessibilityLevel.Normal
    elseif nightTime() then
        return phaseswim()
    end
end


function lowerMushroomExterior()
    return (twirl() and avp()) or canClimbMushroom() or (has("climb") and (has("donkey") or has("chunky")) and avp())
end

function canClimbMushroom()
    return has("climb") or rocket() or (coconut() and peanuts() and grape() and feather() and pineapple())
end

function raisedWater()
    local in_lighthouse = lighthouse()
    if has("waterraised") then
        return true
    elseif has("waterlowered") then
        return has("dive") and in_lighthouse
    end
    return false
end

function loweredWater()
    local in_lighthouse = lighthouse()
    if has("waterlowered") then
        return true
    elseif has("waterraised") then
        return has("dive") and in_lighthouse
    end
    return false
end

function dayTime()
    if has("daytime") or has("dusk") then
        return true
    elseif has("nighttime") then
        return coconut() or peanuts() or grape() or feather() or pineapple() or advancedGrenade()
    end
end

function nightTime()
    if has("nighttime") or has("dusk") then
        return true
    elseif has("daytime") then
        return coconut() or peanuts() or grape() or feather() or pineapple() or advancedGrenade()
    end
end


function lighthousePlatform()
    if raisedWater() then
        return true
    elseif has("lanky") or has("chunky") then
        return avp()
    end
end


function powerHutPlatform()
    return (testing() and has("climb")) or (moonkicks()) or (twirl() and avp())
end

function canGetOnCannonGamePlatform()
    return raisedWater() or (avp() and (has("chunky") or has("lanky")))
end


function lankyFreeing()
    if LANKY_FREEING_KONG == "donkey" then
        return bongos()
    elseif LANKY_FREEING_KONG == "diddy" then
        return guitar()
    elseif LANKY_FREEING_KONG == "lanky" then
        return trombone()
    elseif LANKY_FREEING_KONG == "tiny" then
        return sax()
    elseif LANKY_FREEING_KONG == "chunky" then
        return triangle()
    end
    return bongos()
end

-- Glitches

function avp()
    if has("advanced_platforming") then
        return AccessibilityLevel.Normal
    else
        return AccessibilityLevel.SequenceBreak
    end
end


function hard_shooting()
    if has("hard_shooting") then
        return AccessibilityLevel.Normal
    else
        return AccessibilityLevel.SequenceBreak
    end
end

function moonkicks()
    return has("moonkicks") and has("donkey")
end

function advancedGrenade()
    return has("advanced_grenading") and has("oranges")
end

function phaseswim()
    return has("phase_swimming") and has("dive")
end

function sts()
    return has("swim_through_shores") and has("dive")
end


function moontail()
    return has("diddy") and has("moontail")
end

-- Barriers

function coconutCage()
    if has("japes_coconut_gates") then
        return AccessibilityLevel.Normal
    elseif has("climb") then
        return AccessibilityLevel.Normal and canActivateJapesFreeKong()
    elseif ostand() then
        return avp() and canActivateJapesFreeKong()
    elseif has("slope_resets") then
        return has("tiny") and canActivateJapesFreeKong()
    else
        return phaseswim()
    end
end

function shellhive()
    local in_coconut = coconutCage()
    if has("japes_shellhive_gate") then
        return in_coconut
    else
        return in_coconut and (canActivateJapesFeather() or (moonkicks() and has("climb")))
    end
end

function templeIce()
    if has("aztec_tiny_temple_ice") then
        return true
    else
        return aztecSlam() and peanuts() and guitar()
    end
end

function tunnelDoor()
    if has("aztec_tunnel_door") then
        return AccessibilityLevel.Normal
    elseif canActivateAztecGuitar() and has("climb") and ((has("vine")) or rocket()) then
        return AccessibilityLevel.Normal
    else
        return canActivateAztecGuitar() and AccessibilityLevel.SequenceBreak
    end
end

function aztec5DT()
    local in_tunnel = tunnelDoor()
    if has("aztec_5dtemple_switches") then
        return in_tunnel
    else
        return rocket() and peanuts() and aztecSlam() and in_tunnel
    end
end

function llamaSwitches()
    local in_tunnel = tunnelDoor()
    if has("aztec_llama_switches") then
        return in_tunnel
    else
        return blast() and in_tunnel
    end
end

function production()
    local powerhut = powerHutPlatform() and (coconut() or moonkicks())
    if has("factory_production_room") then
        return true
    else
        return powerhut and grab()
    end
end

function testing()
    if has("factory_testing_gate") then
        return true
    else
        return has("slam")
    end
end

function lighthouse()
    if has("galleon_lighthouse_gate") then
        return true
    else
        return canActivateGalleonLighthouse()
    end
end

function shipyard()
    if has("galleon_shipyard_area_gate") then
        return true
    else
        return canActivateGalleonShipwreck() or (phaseswim() and raisedWater())
    end
end

function seasick()
    local in_lighthouse = lighthouse()
    if has("galleon_seasick_ship") then
        return in_lighthouse and lighthousePlatform()
    else
        return has("climb") and galleonSlam() and grab() and in_lighthouse and lighthousePlatform()
    end
end

function treasure()
    local in_shipyard = shipyard()
    
    if has("galleon_treasure_room") then
        return in_shipyard
    end
    if raisedWater() and enguarde() then
        return in_shipyard
    elseif phaseswim() then
        return (canActivateGalleonCannonGame() and raisedWater()) or in_shipyard
    else
        return in_shipyard and has("lanky") and avp()
    end
end

function greenTunnel()
    if has("forest_green_tunnel") then
        return true
    else
        return (canActivateFungiGreenFeather() and canActivateFungiGreenPineapple()) or phaseswim()
    end
end

function greenTunnelFeather()
    if has("forest_green_tunnel") then
        return true
    else
        return canActivateFungiGreenFeather() or phaseswim()
    end
end

function yellowTunnel()
    if has("forest_yellow_tunnel") then
        return true
    else
        return canActivateFungiYellow() or phaseswim()
    end
end

function igloo()
    if has("caves_igloo_pads") then
        return true
    else
        return rocket() or phaseswim()
    end
end

function cavesIce()
    if has("caves_ice_walls") then
        return true
    else
        return punch()
    end
end

function dkCryptDoors()
    if has("castle_crypt_doors") then
        return true
    else
        return coconut()
    end
end

function diddyCryptDoors()
    if has("castle_crypt_doors") then
        return true
    else
        return peanuts()
    end
end

function chunkyCryptDoors()
    if has("castle_crypt_doors") then
        return true
    else
        return pineapple()
    end
end

function cryptDoors()
    if has("castle_crypt_doors") then
        return true
    else
        return coconut() or peanuts() or pineapple()
    end
end

function mausoleumDoors()
    if has("castle_crypt_doors") then
        return true
    else
        return grape() or feather()
    end
end

-- Slam logic

function japesSlam()
    if has("greenslam")  and (has("l1_japes") or has("l2_japes") or has("l3_japes") or has("l4_japes")) then
      return true
    end
    if has("blueslam") and (has("l5_japes") or has("l6_japes")) then
      return true
    end
    if has("redslam") and (has("l7_japes") or has("l8_japes")) then
      return true
    end
    return false
  end

  function aztecSlam()
    if has("greenslam") and (has("l1_aztec") or has("l2_aztec") or has("l3_aztec") or has("l4_aztec")) then
      return true
    end
    if has("blueslam") and (has("l5_aztec") or has("l6_aztec")) then
      return true
    end
    if has("redslam") and (has("l7_aztec") or has("l8_aztec")) then
      return true
    end
    return false
  end

  function factorySlam()
    if has("greenslam") and (has("l1_factory") or has("l2_factory") or has("l3_factory") or has("l4_factory")) then
      return true
    end
    if has("blueslam") and (has("l5_factory") or has("l6_factory")) then
      return true
    end
    if has("redslam") and (has("l7_factory") or has("l8_factory")) then
      return true
    end
    return false
  end

  function galleonSlam()
    if has("greenslam") and (has("l1_galleon") or has("l2_galleon") or has("l3_galleon") or has("l4_galleon")) then
      return true
    end
    if has("blueslam") and (has("l5_galleon") or has("l6_galleon")) then
      return true
    end
    if has("redslam") and (has("l7_galleon") or has("l8_galleon")) then
      return true
    end
    return false
  end

  function forestSlam()
    if has("greenslam") and (has("l1_forest") or has("l2_forest") or has("l3_forest") or has("l4_forest")) then
      return true
    end
    if has("blueslam") and (has("l5_forest") or has("l6_forest")) then
      return true
    end
    if has("redslam") and (has("l7_forest") or has("l8_forest")) then
      return true
    end
    return false
  end

  function cavesSlam()
  if has("greenslam") and (has("l1_caves") or has("l2_caves") or has("l3_caves") or has("l4_caves")) then
    return true
  end
  if has("blueslam") and (has("l5_caves") or has("l6_caves")) then
    return true
  end
  if has("redslam") and (has("l7_caves") or has("l8_caves")) then
    return true
  end
  return false
end

function castleSlam()
    if has("greenslam") and (has("l1_castle") or has("l2_castle") or has("l3_castle") or has("l4_castle")) then
      return true
    end
    if has("blueslam") and (has("l5_castle") or has("l6_castle")) then
      return true
    end
    if has("redslam") and (has("l7_castle") or has("l8_castle")) then
      return true
    end
    return false
end

  -- Level Entry

  function canEnterWithBlocker(level, blockerCode)
    local gbCount = Tracker:ProviderCountForCode("gb")
    if not blockerCode then
        -- If blockerCode is nil, assume no blocker is required
        return has(level)
    end
    return has(level) and gbCount >= Tracker:ProviderCountForCode(blockerCode)
end


function BFI()
    local fairies = Tracker:ProviderCountForCode("fairies")
    local bfi = Tracker:ProviderCountForCode("bfiReq")
    return fairies >= bfi
end

function mermaid()
    local pearls = Tracker:ProviderCountForCode("pearl")
    local mermaid = Tracker:ProviderCountForCode("mermaid")
    return pearls >= mermaid
end

function toggleLevelOrder()
    if has("openlobbies") then
        Tracker:FindObjectForCode("num2").Active = true
        Tracker:FindObjectForCode("num3").Active = true
        Tracker:FindObjectForCode("num4").Active = true
        Tracker:FindObjectForCode("num5").Active = true
        Tracker:FindObjectForCode("num6").Active = true
        Tracker:FindObjectForCode("num7").Active = true
        Tracker:FindObjectForCode("num8").Active = true
    else
        Tracker:FindObjectForCode("num2").Active = false
        Tracker:FindObjectForCode("num3").Active = false
        Tracker:FindObjectForCode("num4").Active = false
        Tracker:FindObjectForCode("num5").Active = false
        Tracker:FindObjectForCode("num6").Active = false
        Tracker:FindObjectForCode("num7").Active = false
        Tracker:FindObjectForCode("num8").Active = false
        if has("k1") then Tracker:FindObjectForCode("num2").Active = true end
        if has("k2") then Tracker:FindObjectForCode("num3").Active = true end
        if has("k2") and has("dive") then Tracker:FindObjectForCode("num4").Active = true end
        if has("k4") then Tracker:FindObjectForCode("num5").Active = true end
        if has("k5") then
            Tracker:FindObjectForCode("num6").Active = true
            Tracker:FindObjectForCode("num7").Active = true
        end
        if has("k6") and has("k7") then Tracker:FindObjectForCode("num8").Active = true end
    end
end

function toggleShopowners()
    if not_has("shopowners") then
        Tracker:FindObjectForCode("cranky").Active = true
        Tracker:FindObjectForCode("funky").Active = true
        Tracker:FindObjectForCode("candy").Active = true
        Tracker:FindObjectForCode("snide").Active = true
    else
        Tracker:FindObjectForCode("cranky").Active = false
        Tracker:FindObjectForCode("funky").Active = false
        Tracker:FindObjectForCode("candy").Active = false
        Tracker:FindObjectForCode("snide").Active = false
    end
        chunkyphase = function() return hunky() and gone() and punch() and has("slam") end
end

ScriptHost:AddWatchForCode("shopowners", "shopowners", toggleShopowners)
ScriptHost:AddWatchForCode("openlobbies", "openlobbies", toggleLevelOrder)
ScriptHost:AddWatchForCode("number2", "k1", toggleLevelOrder)
ScriptHost:AddWatchForCode("number3", "k2", toggleLevelOrder)
ScriptHost:AddWatchForCode("number4_dive", "dive", toggleLevelOrder)
ScriptHost:AddWatchForCode("number5", "k4", toggleLevelOrder)
ScriptHost:AddWatchForCode("number67", "k5", toggleLevelOrder)
ScriptHost:AddWatchForCode("number8", "k6", toggleLevelOrder)
ScriptHost:AddWatchForCode("number8_k6", "k6", toggleLevelOrder)
ScriptHost:AddWatchForCode("number8_k7", "k7", toggleLevelOrder)
ScriptHost:AddWatchForCode("shopowners_init", "shopowners", function() toggleShopowners() end)