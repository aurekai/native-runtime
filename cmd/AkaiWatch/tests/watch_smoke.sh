#!/bin/sh
set -eu

ROOT="${1:-/tmp/bonfyre_watch_test}"
BIN="${BIN:-cmd/AkaiWatch/akai-watch}"

rm -rf "$ROOT"
mkdir -p "$ROOT/inbox"
printf 'hello bonfyre watch\n' > "$ROOT/inbox/sample.txt"

$BIN "$ROOT/inbox" --pipeline pipeline --root "$ROOT/state" --out "$ROOT/out" --once --dry-run >/tmp/akai-watch-dryrun.json
grep -q '"event":"planned"' /tmp/akai-watch-dryrun.json

$BIN "$ROOT/inbox" --pipeline pipeline --root "$ROOT/state" --out "$ROOT/out" --once >/tmp/akai-watch-live.json
grep -Eq '"event":"(triggered|failed)"' /tmp/akai-watch-live.json

echo "watch smoke ok"
