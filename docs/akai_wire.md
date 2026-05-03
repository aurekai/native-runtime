# Akai Wire

`akai wire` is a consent-based network event layer.

It is designed for owned or explicitly authorized networks only. Its default mode
is metadata-only capture and flow classification. It can turn authorized flow
metadata into:

- ASR pipeline trigger suggestions
- usage metering records
- dynamic scaling signals
- dependency and sovereignty reports

## Safety model

- `--authorized` is required for all live or offline capture actions.
- metadata-only is the default behavior.
- payload reconstruction requires all of:
  - `--payload`
  - `--authorized`
  - `--unencrypted-only`
- encrypted sessions are never decrypted and never reconstructed.
- no TLS/SRTP/DTLS/QUIC bypass
- no MITM
- no credential or token extraction
- no raw packet persistence unless `--save-raw` is explicitly passed

## Commands

```bash
akai wire doctor
akai wire listen --interface en0 --authorized --metadata-only
akai wire ingest-pcap capture.pcap --authorized
akai wire flows <capture_id>
akai wire media-detect <capture_id>
akai wire meter <capture_id>
akai wire scale <capture_id>
akai wire route <capture_id>
akai wire report <capture_id>
```

## Offline-first workflow

```bash
akai wire ingest-pcap cmd/AkaiWire/fixtures/media_fixture.jsonl --authorized --root layeros/state
akai wire flows <capture_id> --root layeros/state
akai wire media-detect <capture_id> --root layeros/state
akai wire meter <capture_id> --root layeros/state
akai wire scale <capture_id> --root layeros/state
akai wire route <capture_id> --root layeros/state
akai wire report <capture_id> --root layeros/state
```

## Report outputs

`akai wire report` writes:

- `wire_flows.jsonl`
- `media_candidates.json`
- `usage_meter.json`
- `scaling_events.jsonl`
- `dependency_map.json`
- `sovereignty_report.md`

under:

```text
<root>/wire/reports/<capture_id>/
```
