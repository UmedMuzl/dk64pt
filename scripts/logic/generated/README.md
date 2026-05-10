# Generated logic for dk64pt

This directory is auto-generated from DK64-Randomizer's logic.

**Do not hand-edit any file here.** Regenerate via:
```
python3 -m randomizer.Patching.PopTrackerExport.deploy --dk64pt <path-to-dk64pt>
```

## Layout
- `state.lua` — LogicVarHolder adapter (boolean attributes + ported helpers)
- `settings.lua` — settings adapter (PopTracker codes + defaults; expand as toggles get wired)
- `graph.lua` — region graph BFS + event fixpoint
- `regions/<Level>.lua` — per-level region tables (locations, events, exits)
- `regions/locations_index.lua` — flat location-name → region+logic index
- `init.lua` — single-entry bootstrap

## Wiring it into dk64pt

The generated logic is dormant until you call it. Add ONE line near the top of
[`scripts/logic/logic.lua`](../logic.lua):

```lua
ScriptHost:LoadScript("scripts/logic/generated/init.lua")
```

After that, three globals exist:
- `state.donkey()`, `state.CanPhase()`, ... — the LogicVarHolder API ported to Lua
- `settings.open_lobbies()`, ... — settings access
- `graph.is_region_accessible(R)`, `graph.is_event_active(E)`, `graph.is_location_accessible(L)`
- `loc(name)` — convenience function for location access rules

Cache invalidation: call `graph.invalidate()` whenever an item is received, a
toggle changes, or settings change. Wire this into `scripts/autotracking/archipelago.lua`.

## Using it from a location JSON

Replace a hand-written rule:
```json
"access_rules": ["$japesDKMedal"]
```
with:
```json
"access_rules": ["$loc|JapesDonkeyMedal"]
```
…where `loc` is the global function defined in `init.lua`. PopTracker treats
`$loc|Foo` as `loc("Foo")` (per its access-rule grammar — pipe separates the
function name from its single string argument).

## What's missing / next steps

1. Expand `settings.lua`'s `TRACKER_BOOL` table — most settings still return defaults.
2. Wire `graph.invalidate()` into the autotracking flow.
3. Replace existing tracker-only aggregators (medallogic.lua etc.) to call `state.X()`
   so they stop maintaining a parallel item-state model.
4. Migrate location JSONs gradually: any rule still using the legacy helpers
   (e.g. `$canEnterJapes`, `$japesDKMedal`) keeps working — `$loc|` is opt-in
   per location.

## Source of truth

Everything except `state.lua` is regenerated. `state.lua` is hand-translated
from `randomizer/Logic.py` with `@logic Logic.py:<line>` annotations on each
helper so divergence is reviewable.
