# Akai Status And Drift

Akai now distinguishes between command dispatch availability, command health, and registry density.

## Meanings

`ready`
- The dispatcher found a runnable binary path for the command.

`healthy`
- The selected command responded to a lightweight `status` or `--help` probe.

`repo`
- The active command path is a repo-built binary under `cmd/...`.

`installed`
- The active command path is an installed binary, usually under `~/.local/bin`.

`stale`
- An installed binary differs from the repo-built binary for the same command name.

## Registry Layers

Akai currently has two different state surfaces that matter day to day:

`layeros/state`
- Large LayerArtifact and DisCIPL operating state.
- Includes `layers.db`, `index.db`, `discipl.db`, `graph.db`, and `queue.db`.

`~/.local/share/bonfyre/catalog.db`
- Smaller home catalog used by older family/model/recipe browsing surfaces.

The two are related, but they are not the same inventory.

## Useful Commands

Populate the command and registry surfaces after pulling new runtime code:

```bash
make
akai doctor sync-subcommands
akai-index layers --root layeros/state
akai list --health
akai workflow list
akai recipe list
akai layer registry --root layeros/state
```

Use the direct binary paths instead of `akai ...` if you are validating a fresh build before install.

Inspect registry density:

```bash
akai status registries --root layeros/state
akai status registries --root layeros/state --json
```

Inspect command drift:

```bash
akai status commands
akai status commands --json
```

Write a deep operational snapshot:

```bash
akai status snapshot --root layeros/state --out /tmp/bonfyre_ops_deep
```

Preview repo-to-install sync without changing anything:

```bash
akai doctor sync-subcommands --dry-run
```

Synchronize matching repo-built subcommands into `~/.local/bin`:

```bash
akai doctor sync-subcommands
```

Show health labels in the command surface:

```bash
akai list --health
akai list --compact --health
akai list --json --health
```

## Notes

When you run `akai` from inside the Akai repo, the dispatcher prefers repo-built binaries where possible. This reduces command drift during development and makes the command surface reflect the current working tree more accurately than the installed fleet alone.
