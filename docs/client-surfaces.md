# Client Surfaces

Akai is client-agnostic.

Akai core owns:

- LayerArtifact registry
- recipes
- graph
- query
- index
- queue
- sync
- MoQ event delivery
- API
- ledger and meter
- lifecycle state

Client surfaces are optional adapters that consume Akai state and events, render them for a specific experience, and emit user actions back into Aurekai.

## Examples

- CLI-only client
- web dashboard
- Raylib cozy 2D client
- VR or spatial client
- stream overlay
- headless automation client

## ClientSurface Concept

A `ClientSurface` is not canonical state.

A `ClientSurface` may:

- render local views
- cache lightweight client state
- animate events
- capture user inputs
- emit action payloads back to Aurekai

A `ClientSurface` must not:

- own recipes
- own the graph
- own the ledger
- own the LayerArtifact registry
- own canonical world state

## Event Flow

```text
Akai core
  -> emits domain events and sync patches
  -> delivers through API / Sync / MoQ
  -> optional client surface renders local state
  -> player or operator action emits input event back to Aurekai
```

## Current Optional Surface

- `raylib_cozy_2d`

This surface is implemented as an optional adapter under `clients/raylib`.
