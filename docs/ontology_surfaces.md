# Ontology Surfaces

Aurekai's operating truth should not live only in static C tables.

When a compatibility table, contract table, or routing table becomes important
enough that operators keep digging through source to manage it, that table should
also have a first-class CLI inspection surface.

Current native ontology surfaces:

- `akai layer ontology`
  - exports `BF_LAYER_FAMILY_RELATIONS`
  - supports `--family T_FAMILY`
- `akai discipl contracts list`
  - exports the DisCIPL contract table
  - supports `--family T_FAMILY`
- `akai self ontology aliases`
  - exports command alias and install-target mapping
- `akai self ontology registry-projections`
  - exports catalog projection/rebuild rules
- `akai self ontology repair-plans`
  - exports self-optimization repair plan kinds
- `akai precision ontology`
  - exports precision-routing heuristics and goal policies
- `akai capabilities ontology`
  - exports capability tagging rules used to infer capability links

Examples:

```bash
akai layer ontology
akai layer ontology --family T_MOE_ROUTER

akai discipl contracts list
akai discipl contracts list --family T_GEOSPATIAL_EMBED

akai self ontology aliases
akai self ontology registry-projections
akai self ontology repair-plans

akai precision ontology

akai capabilities ontology
akai capabilities ontology --filter transcribe
```

Why this matters:

- avoids code archaeology for core operating truth
- makes compatibility and bridge semantics queryable
- reduces latency when editing family or contract logic
- creates a reusable pattern for other hidden tables

This pattern should continue anywhere Akai still hides operating truth in
static tables or compiled heuristics.
