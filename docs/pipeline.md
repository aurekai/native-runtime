# Pipeline Guide

Aurekai's audio pipeline takes raw audio and produces a packaged deliverable: transcript, summary, quality score, pricing, and ZIP package.

## Full pipeline (one command)

```bash
akai-pipeline run --input interview.mp3 --out ./output
```

This runs 10 stages in-process in **5–8 ms** (after transcription, which depends on audio length).

## Step by step

You can also run each step individually:

### 1. Ingest

```bash
akai-ingest intake interview.mp3 --out ./work/
```

Validates the file, creates a manifest, copies to working directory.

### 2. Normalize

```bash
akai-media-prep normalize ./work/interview.mp3
```

Converts to 16 kHz mono WAV, applies denoising, chunks if needed.

### 3. Hash

```bash
akai-hash ./work/interview.wav
```

Produces SHA-256 content address for deduplication and integrity.

### 4. Transcribe

```bash
akai-transcribe run ./work/interview.wav --out transcript.json
```

Speech-to-text using Whisper. Runs locally — no external API calls.

### 5. Clean

```bash
akai-transcript-clean transcript.json --out clean.json
```

Removes filler words ("um", "uh"), hallucinations, normalizes punctuation.

### 6. Paragraph

```bash
akai-paragraph clean.json --out paragraphed.json
```

Structures text into readable paragraphs with sentence boundary detection.

### 7. Brief

```bash
akai-brief generate paragraphed.json --out brief.md
```

Extracts executive summary and action items.

### 8. Proof

```bash
akai-proof score paragraphed.json
```

Quality scoring: length, filler ratio, hallucination probability, confidence.

### 9. Offer

```bash
akai-offer generate --input brief.md --tier standard
```

Generates pricing proposal based on content quality and tier.

### 10. Pack

```bash
akai-pack bundle ./work/ --out deliverable.zip
```

Assembles everything into a ZIP with manifest.

## Composing with pipes

Since every binary reads/writes JSON, you can pipe them:

```bash
akai-ingest intake interview.mp3 | \
  akai-transcribe run --stdin | \
  akai-transcript-clean --stdin | \
  akai-paragraph --stdin | \
  akai-brief generate --stdin
```

## Adding custom steps

Write a binary that reads JSON from stdin and writes JSON to stdout. Drop it in the pipeline at any point. See [CONTRIBUTING.md](../CONTRIBUTING.md) for the binary template.

## Monitoring

Track pipeline jobs through the API:

```bash
# Start the API gateway
akai-api --port 9090 serve

# Submit a job
curl -X POST http://localhost:9090/api/jobs \
  -H "Content-Type: application/json" \
  -d '{"binary": "akai-pipeline", "args": ["run", "--input", "interview.mp3"]}'

# Check status
curl http://localhost:9090/api/jobs/1
```

## Usage metering

Every pipeline run is tracked by `akai-meter`:

```bash
akai-meter report
```

Shows per-operation costs, total usage, and billing summary.
