# Multi-Modal Recipe System — Phase 4 Extensions

**Status**: Phase 4 In Progress  
**Updated**: 2026-04-20

## Overview

Phase 4 extends the recipe system to support **multi-modal pipelines** that process video, images, code, and other non-audio content. All asset types can now be processed through declarative recipes.

## Multi-Modal Recipes

### V1: Video Investigation Pipeline
- **Input**: Video file (mp4, mov, avi)
- **Stages**: 12 (demux → frames → audio → objects → faces → OCR → fusion → graph)
- **Models**: Whisper, YOLOv8, RetinaFace
- **Output**: Cross-modal knowledge graph + investigation brief
- **Time**: ~25 min per hour of video

**Key Innovation**: Fuses visual entities (detected objects, faces, on-screen text) with speech transcripts using temporal alignment.

### I1: Image Analysis Pipeline
- **Input**: Single image (jpg, png, webp)
- **Stages**: 8 (normalize → objects → OCR → faces → scene → caption → metadata → fusion)
- **Models**: YOLOv8, RetinaFace, CLIP, BLIP2, Tesseract
- **Output**: Structured analysis JSON
- **Time**: ~8 seconds per image

**Use Cases**: Document analysis, photo investigation, visual search indexing.

### C1: Code Repository Investigation
- **Input**: Git repository directory
- **Stages**: 13 (scan → languages → deps → AST → symbols → callgraph → docs → tests → security → quality → contributors → graph → guide)
- **Output**: Dependency graph + onboarding guide (ONBOARDING.md)
- **Time**: 3-10 minutes (depends on repo size)

**Key Innovation**: Combines static analysis (AST, callgraph), dynamic analysis (git history, contributors), and security scanning into unified knowledge graph.

### M2: Podcast Multi-Modal Repurposing
- **Input**: Podcast audio + optional metadata
- **Stages**: 13 (normalize → segments → transcribe → diarize → topics → highlights → waveform → audiogram → clips → blog → cards → package)
- **Models**: Whisper Large v3, Pyannote Audio
- **Output**: Video clips, audiogram, blog post, social cards, deliverables.zip
- **Time**: ~35 min per hour of audio

**Use Cases**: Podcast production, content marketing, social media automation.

### X1: Cross-Modal Investigation Suite
- **Input**: Video + optional code repository
- **Stages**: 9 (composed from V1, I1, C1 + fusion stages)
- **Composition**: Serial (V1 → I1) + Parallel (C1) + Custom fusion
- **Output**: Unified knowledge graph, investigation report
- **Time**: 30-45 minutes

**Key Innovation**: Demonstrates **recipe composition** (V1 ⊕ I1 ⊕ C1) with cross-modal entity linking. Matches code symbols mentioned in video to actual codebase.

## Multi-Modal Operators

### Video Processing
- `AkaiVideoDemux` — Separate video/audio streams
- `AkaiFrameExtract` — Extract frames at specified FPS
- `AkaiSceneDetect` — Detect scene changes via frame similarity
- `AkaiDetectObjects` — YOLOv8 object detection
- `AkaiFaceTrack` — Track individuals across frames
- `AkaiOCR` — Extract on-screen text
- `AkaiTemporalAlign` — Align visual scenes with audio timeline

### Image Processing
- `AkaiImageNormalize` — Resize and standardize format
- `AkaiFaceDetect` — Detect faces in single image
- `AkaiSceneClassify` — Classify scene type (indoor, outdoor, etc)
- `AkaiImageCaption` — Generate natural language description (BLIP2)
- `AkaiImageMeta` — Extract EXIF, GPS, camera metadata
- `AkaiFuseAnalysis` — Merge multiple analyses into unified report

### Code Analysis
- `AkaiRepoScan` — Catalog files and git history
- `AkaiDetectLanguages` — Detect programming languages
- `AkaiDepsAnalyze` — Parse package manifests (package.json, requirements.txt, etc)
- `AkaiCodeAST` — Parse source files into AST
- `AkaiExtractSymbols` — Extract functions, classes, imports
- `AkaiCallGraph` — Build function call graph
- `AkaiSecurityScan` — Scan for secrets, vulnerabilities
- `AkaiQualityMetrics` — Complexity, duplication, maintainability
- `AkaiCodeGraph` — Fuse symbols + callgraph + dependencies

### Cross-Modal Fusion
- `AkaiEntityFusion` — Merge entities across modalities (speaker + face + object)
- `AkaiCrossReference` — Match transcript mentions to code symbols
- `AkaiCodeWalkthrough` — Align code discussion to video timestamps
- `AkaiGraphFusion` — Merge multiple knowledge graphs
- `AkaiCrossModalBrief` — Generate unified investigation report

### Media Production
- `AkaiAudioNormalize` — Normalize audio to target LUFS
- `AkaiDiarize` — Speaker diarization (Pyannote)
- `AkaiTopicSegment` — Detect topic changes for clip boundaries
- `AkaiHighlights` — Find shareable moments (humor, insight, quotes)
- `AkaiWaveform` — Generate waveform visualization
- `AkaiAudiogram` — Video with animated waveform + captions
- `AkaiClipsFromHighlights` — Extract video clips from timestamps
- `AkaiBlogPost` — Generate blog post from transcript
- `AkaiSocialCards` — Create quote cards for social media

## Schema Extensions

### Multi-Modal Input Types

```json
{
  "inputs": [
    {"name": "video", "type": "video/*", "required": true},
    {"name": "image", "type": "image/*", "required": true},
    {"name": "repo", "type": "directory", "required": true},
    {"name": "metadata", "type": "application/json", "required": false}
  ]
}
```

Supported MIME types:
- **Video**: `video/mp4`, `video/quicktime`, `video/x-msvideo`
- **Image**: `image/jpeg`, `image/png`, `image/webp`
- **Audio**: `audio/wav`, `audio/mpeg`, `audio/flac`
- **Code**: `directory` (special type for repository roots)
- **Metadata**: `application/json`

### Recipe Composition

```json
{
  "composition_type": "serial",  // or "parallel", "merge", "loop"
  "stages": [
    {
      "id": "s01",
      "operator": "AkaiRun",  // Call another recipe
      "args": ["V1", "--input", "{input}", "--out", "{out}/video"]
    }
  ]
}
```

**Composition Operators**:
- **Serial** (⊕): `A → B` (output of A becomes input of B)
- **Parallel** (⊗): `A ∥ B` (run concurrently, merge outputs)
- **Merge** (⊕): `A + B → C` (merge outputs with custom strategy)
- **Loop** (🔁): `repeat(A, condition, max_iter)` (iterative refinement)

### Conditional Execution

```json
{
  "stages": [
    {
      "id": "s04",
      "skip_if_null": ["input_repo"],
      "description": "Skip code analysis if no repo provided"
    }
  ]
}
```

## Implementation Status

### Phase 3 (Complete) ✓
- [x] Recipe schema v1
- [x] AkaiRecipe binary (init, add, list, show, validate, hash)
- [x] AkaiRun executor (DAG scheduler, run manifests)
- [x] SQLite registry with FTS5
- [x] SHA-256 content addressing
- [x] Basic recipes (A1, A3)

### Phase 4 (In Progress) 🚧
- [x] Multi-modal recipe schema extensions
- [x] Video investigation recipe (V1)
- [x] Image analysis recipe (I1)
- [x] Code investigation recipe (C1)
- [x] Podcast repurposing recipe (M2)
- [x] Cross-modal composition recipe (X1)
- [ ] Implement video processing binaries
- [ ] Implement image processing binaries
- [ ] Implement code analysis binaries
- [ ] Add parallel execution to AkaiRun
- [ ] Add conditional execution support
- [ ] Test full V1 pipeline

## Recipe Catalog

| ID | Name | Modality | Stages | Time | Status |
|----|------|----------|--------|------|--------|
| A1 | Audio Quick Brief | Audio | 3 | 0.5 min | ✓ |
| A3 | Full Speech Investigation | Audio | 11 | 11 min | ✓ |
| V1 | Video Investigation | Video | 12 | 25 min | Schema ✓ |
| I1 | Image Analysis | Image | 8 | 8 sec | Schema ✓ |
| C1 | Code Investigation | Code | 13 | 3-10 min | Schema ✓ |
| M2 | Podcast Repurposing | Multi-modal | 13 | 35 min | Schema ✓ |
| X1 | Cross-Modal Suite | Multi-modal | 9 | 30-45 min | Schema ✓ |

## Next Steps

1. **Implement Core Multi-Modal Binaries**:
   - `AkaiVideoDemux` (ffmpeg wrapper)
   - `AkaiFrameExtract` (ffmpeg wrapper)
   - `AkaiImageNormalize` (imagemagick wrapper)
   - `AkaiDetectObjects` (YOLOv8 integration)

2. **Add Parallel Execution**:
   - Modify AkaiRun to actually execute stages in parallel
   - Use fork() + wait() for process management
   - Respect `parallel: N` stage attribute

3. **Conditional Execution**:
   - Implement `skip_if_null` attribute
   - Add `condition` field for custom logic

4. **Recipe Composition**:
   - Implement `AkaiCompose` binary
   - Support serial/parallel/merge/loop operators
   - Validate composition semantics

5. **Test Full Pipelines**:
   - Run V1 on sample video
   - Run C1 on Akai repository
   - Run X1 on coding tutorial video

## Design Principles

1. **Everything is a Recipe**: Any pipeline can be expressed as JSON
2. **Composition over Configuration**: Chain recipes rather than monolithic configs
3. **Content Addressing**: SHA-256 ensures reproducibility
4. **Parallel by Default**: Maximize throughput with explicit parallelism
5. **Cross-Modal Fusion**: Link entities across audio, video, text, code

## Example: Video Investigation Flow

```
video.mp4 → AkaiVideoDemux → audio.wav + video.mp4
                                    ↓               ↓
                          AkaiSpeechLoop    AkaiFrameExtract
                                    ↓               ↓
                          AkaiTranscribe    AkaiDetectObjects
                                    ↓               ↓
                                   [Transcripts]  [Objects]
                                         ↓           ↓
                                    AkaiEntityFusion
                                         ↓
                                  [Merged Entities]
                                         ↓
                                   AkaiGraph
                                         ↓
                                 [Knowledge Graph]
```

Each arrow represents a stage. Stages at the same level run in parallel.

---

**Status**: Phase 4 multi-modal recipes designed and registered. Ready to implement binaries.
