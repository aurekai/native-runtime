# Akai Cmd Capability + Wiring Audit

Generated: 2026-04-22T04:01:54Z

## Inventory Summary
- Cmd directories: 71
- Binaries with main.c: 71
- Binaries with explicit help/usage markers: 71

## Cmd → Target Mapping

| Cmd Dir | Target | Has main.c | Has help markers |
|---|---|---:|---:|
| AkaiAPI | akai-api | 1 | 1 |
| AkaiAuth | akai-auth | 1 | 1 |
| AkaiBrief | akai-brief | 1 | 1 |
| AkaiCanon | akai-canon | 1 | 1 |
| AkaiCapability | akai-capability | 1 | 1 |
| AkaiCLI | akai | 1 | 1 |
| AkaiClips | akai-clips | 1 | 1 |
| AkaiCMS | akai-cms | 1 | 1 |
| AkaiCompete | akai-compete | 1 | 1 |
| AkaiCompress | akai-compress | 1 | 1 |
| AkaiControl | akai-control | 1 | 1 |
| AkaiDistribute | (no TARGET var) | 1 | 1 |
| AkaiEconomy | akai-economy | 1 | 1 |
| AkaiEmbed | akai-embed | 1 | 1 |
| AkaiEmit | akai-emit | 1 | 1 |
| AkaiEntity | akai-entity | 1 | 1 |
| AkaiFinance | akai-finance | 1 | 1 |
| AkaiFlow | akai-flow | 1 | 1 |
| AkaiFPQ | (no TARGET var) | 1 | 1 |
| AkaiFPQx | akai-fpqx | 1 | 1 |
| AkaiGate | akai-gate | 1 | 1 |
| AkaiGen | akai-gen | 1 | 1 |
| AkaiGraph | akai-graph | 1 | 1 |
| AkaiHash | akai-hash | 1 | 1 |
| AkaiIndex | akai-index | 1 | 1 |
| AkaiIngest | akai-ingest | 1 | 1 |
| AkaiKVCache | akai-kvcache | 1 | 1 |
| AkaiLayer | akai-layer-c | 1 | 1 |
| AkaiLearn | akai-learn | 1 | 1 |
| AkaiLedger | akai-ledger | 1 | 1 |
| AkaiMediaPrep | akai-media-prep | 1 | 1 |
| AkaiMeter | akai-meter | 1 | 1 |
| AkaiMFADict | akai-mfa-dict | 1 | 1 |
| AkaiModel | akai-model | 1 | 1 |
| AkaiMoQ | akai-moq | 1 | 1 |
| AkaiNarrate | akai-narrate | 1 | 1 |
| AkaiOffer | (no TARGET var) | 1 | 1 |
| AkaiOrchestrate | (no TARGET var) | 1 | 1 |
| AkaiOutreach | akai-outreach | 1 | 1 |
| AkaiPack | (no TARGET var) | 1 | 1 |
| AkaiParagraph | akai-paragraph | 1 | 1 |
| AkaiPay | akai-pay | 1 | 1 |
| AkaiPipeline | akai-pipeline | 1 | 1 |
| AkaiProject | (no TARGET var) | 1 | 1 |
| AkaiProof | (no TARGET var) | 1 | 1 |
| AkaiProxy | akai-proxy | 1 | 1 |
| AkaiQuant | akai-quant | 1 | 1 |
| AkaiQuery | akai-query | 1 | 1 |
| AkaiQueue | (no TARGET var) | 1 | 1 |
| AkaiRecipe | akai-recipe | 1 | 1 |
| AkaiRender | (no TARGET var) | 1 | 1 |
| AkaiRepurpose | akai-repurpose | 1 | 1 |
| AkaiRun | akai-run | 1 | 1 |
| AkaiRuntime | (no TARGET var) | 1 | 1 |
| AkaiSegment | akai-segment | 1 | 1 |
| AkaiSLI | akai-sli | 1 | 1 |
| AkaiSpace | akai-space | 1 | 1 |
| AkaiSpeechLoop | akai-speechloop | 1 | 1 |
| AkaiStitch | akai-stitch | 1 | 1 |
| AkaiSwarm | akai-swarm | 1 | 1 |
| AkaiSync | akai-sync | 1 | 1 |
| AkaiTag | akai-tag | 1 | 1 |
| AkaiTel | akai-tel | 1 | 1 |
| AkaiTier | akai-tier | 1 | 1 |
| AkaiTime | akai-time | 1 | 1 |
| AkaiTone | akai-tone | 1 | 1 |
| AkaiTranscribe | akai-transcribe | 1 | 1 |
| AkaiTranscriptClean | akai-transcript-clean | 1 | 1 |
| AkaiTranscriptFamily | (no TARGET var) | 1 | 1 |
| AkaiVec | akai-vec | 1 | 1 |
| AkaiWeaviateIndex | akai-weaviate-index | 1 | 1 |

## Cross-Binary Invocation Edges

Format: source -> target (count)

- AkaiAPI ->  (10)
- AkaiAuth ->  (18)
- AkaiBrief ->  (1)
- AkaiCanon ->  (11)
- AkaiCapability ->  (31)
- AkaiCLI ->  (52)
- AkaiClips ->  (6)
- AkaiCMS ->  (70)
- AkaiCompete ->  (25)
- AkaiCompress ->  (11)
- AkaiControl ->  (51)
- AkaiDistribute ->  (4)
- AkaiEconomy ->  (20)
- AkaiEmbed ->  (2)
- AkaiEmit ->  (6)
- AkaiEntity ->  (27)
- AkaiFinance ->  (31)
- AkaiFlow ->  (30)
- AkaiFPQ ->  (20)
- AkaiFPQx ->  (18)
- AkaiGate ->  (8)
- AkaiGen ->  (24)
- AkaiGraph ->  (24)
- AkaiHash ->  (10)
- AkaiIndex ->  (18)
- AkaiIngest ->  (2)
- AkaiKVCache ->  (13)
- AkaiLayer ->  (40)
- AkaiLearn ->  (21)
- AkaiLedger ->  (9)
- AkaiMediaPrep ->  (6)
- AkaiMeter ->  (9)
- AkaiMFADict ->  (1)
- AkaiModel ->  (62)
- AkaiMoQ ->  (7)
- AkaiNarrate ->  (15)
- AkaiOffer ->  (1)
- AkaiOrchestrate ->  (15)
- AkaiOutreach ->  (16)
- AkaiPack ->  (5)
- AkaiParagraph ->  (1)
- AkaiPay ->  (17)
- AkaiPipeline ->  (28)
- AkaiProject ->  (11)
- AkaiProof ->  (3)
- AkaiProxy ->  (22)
- AkaiQuant ->  (17)
- AkaiQuery ->  (11)
- AkaiQueue ->  (21)
- AkaiRecipe ->  (113)
- AkaiRender ->  (9)
- AkaiRepurpose ->  (9)
- AkaiRun ->  (31)
- AkaiRuntime ->  (50)
- AkaiSegment ->  (8)
- AkaiSLI ->  (36)
- AkaiSpace ->  (23)
- AkaiSpeechLoop ->  (15)
- AkaiStitch ->  (20)
- AkaiSwarm ->  (14)
- AkaiSync ->  (4)
- AkaiTag ->  (11)
- AkaiTel ->  (42)
- AkaiTier ->  (24)
- AkaiTime ->  (28)
- AkaiTone ->  (9)
- AkaiTranscribe ->  (4)
- AkaiTranscriptClean ->  (1)
- AkaiTranscriptFamily ->  (8)
- AkaiVec ->  (15)
- AkaiWeaviateIndex ->  (2)

## High-Value Missing Wiring (Repo-Wide)

1. Runtime orchestration coverage is still thin versus cmd surface.
- Currently wired in runtime: queue, ledger, run/run-ledger, loop, parallel, pipeline, gen, swarm, control, conference, autowire.
- Missing wrappers for core ops binaries: model, recipe, run, stitch, proxy, sli, graph, index, finance, cms, capability, economy, flow, learn, compete, entity.

2. Control-plane feedback loops are not consistently connected.
- autowire runs control score/ops only post local/swarm launch; it does not persist control decision links to swarm dispatch IDs.
- akai-run and akai-runtime do not currently auto-invoke entropy-check before execution.

3. Model and swarm are partially connected but not fully closed-loop.
- akai-model references akai-swarm pull paths, but swarm does not expose pull/push model artifact endpoints.
- Missing consistent CAS hash handoff contract between model pull and swarm dispatch worker pathing.

4. Stitch op mapping includes legacy misroutes.
- In stitch op map, Clean maps to akai-transcribe (likely should map to akai-transcript-clean or akai-paragraph depending intent).
- MetadataEmit maps to akai-brief; likely wants akai-emit in many paths.

5. Service entrypoints are fragmented.
- akai-proxy provides OpenAI-compatible entrypoint but runtime does not expose proxy lifecycle commands.
- akai-moq is present now, but no shared auth/session wiring with akai-auth / akai-pay / akai-meter.

6. Build-target declaration is inconsistent across cmd tree.
- Multiple cmd Makefiles have no TARGET var, reducing discoverability/automation reliability (important for wasm-all/static tooling).

## Recommended Integration Pass Order

1. Runtime Surface Expansion Pass
- Add pass-through wrappers in AkaiRuntime for: model, recipe, run, stitch, proxy, sli, graph, index.
- Add runtime service commands: proxy-serve, moq-relay, swarm-worker orchestration.

2. Control-Gated Execution Pass
- Wire entropy-check preflight and route/score hooks into akai-run and runtime autowire for all modes.

3. Stitch Mapping Correctness Pass
- Fix op->binary mapping table and add map validation against existing cmd targets.

4. Model<->Swarm Contract Pass
- Add explicit swarm artifact pull API and model artifact exchange endpoint parity.

5. Packaging/Discoverability Pass
- Normalize TARGET in cmd Makefiles and emit machine-readable cmd capability index.

## Cross-Binary Reference Graph (Corrected)

Format: source -> referenced-binary (count, excluding self-name references).

- AkaiAPI -> akai-api (9)
- AkaiAPI -> akai-queue (1)
- AkaiAuth -> akai-auth (18)
- AkaiBrief -> akai-brief (1)
- AkaiCanon -> akai-canon (11)
- AkaiCapability -> akai-brief (1)
- AkaiCapability -> akai-capability (16)
- AkaiCapability -> akai-compete (1)
- AkaiCapability -> akai-control (1)
- AkaiCapability -> akai-distribute (1)
- AkaiCapability -> akai-economy (1)
- AkaiCapability -> akai-entity (1)
- AkaiCapability -> akai-flow (1)
- AkaiCapability -> akai-intake (1)
- AkaiCapability -> akai-learn (1)
- AkaiCapability -> akai-queue (1)
- AkaiCapability -> akai-space (1)
- AkaiCapability -> akai-tag (1)
- AkaiCapability -> akai-transcribe (2)
- AkaiCapability -> akai-translate (1)
- AkaiCLI -> akai-brief (2)
- AkaiCLI -> akai-compress (2)
- AkaiCLI -> akai-distribute (2)
- AkaiCLI -> akai-emit (2)
- AkaiCLI -> akai-gate (3)
- AkaiCLI -> akai-hash (3)
- AkaiCLI -> akai-index (2)
- AkaiCLI -> akai-ingest (2)
- AkaiCLI -> akai-ledger (2)
- AkaiCLI -> akai-media-prep (1)
- AkaiCLI -> akai-mediaprep (1)
- AkaiCLI -> akai-meter (2)
- AkaiCLI -> akai-narrate (2)
- AkaiCLI -> akai-offer (2)
- AkaiCLI -> akai-orchestrate (2)
- AkaiCLI -> akai-pack (2)
- AkaiCLI -> akai-paragraph (1)
- AkaiCLI -> akai-project (2)
- AkaiCLI -> akai-proof (2)
- AkaiCLI -> akai-queue (2)
- AkaiCLI -> akai-render (2)
- AkaiCLI -> akai-runtime (2)
- AkaiCLI -> akai-stitch (2)
- AkaiCLI -> akai-sync (2)
- AkaiCLI -> akai-transcribe (2)
- AkaiCLI -> akai-transcript-clean (1)
- AkaiCLI -> akai-transcript-family (2)
- AkaiClips -> akai-clips (6)
- AkaiCMS -> akai-cms (70)
- AkaiCompete -> akai-compete (21)
- AkaiCompete -> akai-control (2)
- AkaiCompete -> akai-economy (1)
- AkaiCompete -> akai-learn (1)
- AkaiCompress -> akai-compress (10)
- AkaiCompress -> akai-compress-test- (1)
- AkaiControl -> akai-control (40)
- AkaiControl -> akai-flow (1)
- AkaiControl -> akai-model (3)
- AkaiControl -> akai-run (6)
- AkaiControl -> akai-transcribe (1)
- AkaiDistribute -> akai-distribute (4)
- AkaiEconomy -> akai-control (2)
- AkaiEconomy -> akai-economy (17)
- AkaiEconomy -> akai-run (1)
- AkaiEmbed -> akai-embed (2)
- AkaiEmit -> akai-emit (6)
- AkaiEntity -> akai-entity (24)
- AkaiEntity -> akai-tag (1)
- AkaiEntity -> akai-time (1)
- AkaiEntity -> akai-transcribe (1)
- AkaiFinance -> akai-finance (31)
- AkaiFlow -> akai-control (1)
- AkaiFlow -> akai-flow (24)
- AkaiFlow -> akai-run (4)
- AkaiFlow -> akai-space (1)
- AkaiFPQ -> akai-fpq (20)
- AkaiFPQx -> akai-fpqx (18)
- AkaiGate -> akai-gate (8)
- AkaiGen -> akai-gen (21)
- AkaiGen -> akai-run (3)
- AkaiGraph -> akai-graph (24)
- AkaiHash -> akai-hash (10)
- AkaiIndex -> akai-index (18)
- AkaiIngest -> akai-ingest (2)
- AkaiKVCache -> akai-kvcache (10)
- AkaiKVCache -> akai-quant (3)
- AkaiLayer -> akai-layer (37)
- AkaiLayer -> akai-layer-target-v1 (1)
- AkaiLayer -> akai-model (2)
- AkaiLearn -> akai-compete (2)
- AkaiLearn -> akai-control (2)
- AkaiLearn -> akai-learn (17)
- AkaiLedger -> akai-ledger (9)
- AkaiMediaPrep -> akai-media-prep (6)
- AkaiMeter -> akai-meter (9)
- AkaiMFADict -> akai-mfa-dict (1)
- AkaiModel -> akai-fpq (2)
- AkaiModel -> akai-model (49)
- AkaiModel -> akai-oss (1)
- AkaiModel -> akai-quant (1)
- AkaiModel -> akai-run (3)
- AkaiModel -> akai-swarm (5)
- AkaiModel -> akai-topic-mapper-v1 (1)
- AkaiMoQ -> akai-moq (7)
- AkaiNarrate -> akai-narrate (8)
- AkaiNarrate -> akai-tone (7)
- AkaiOffer -> akai-offer (1)
- AkaiOrchestrate -> akai-api (1)
- AkaiOrchestrate -> akai-auth (1)
- AkaiOrchestrate -> akai-emit (1)
- AkaiOrchestrate -> akai-flow (1)
- AkaiOrchestrate -> akai-orchestrate (6)
- AkaiOrchestrate -> akai-orchestrate- (1)
- AkaiOrchestrate -> akai-queue (1)
- AkaiOrchestrate -> akai-render (1)
- AkaiOrchestrate -> akai-runtime (2)
- AkaiOutreach -> akai-outreach (16)
- AkaiPack -> akai-pack (2)
- AkaiPack -> akai-pack- (3)
- AkaiParagraph -> akai-paragraph (1)
- AkaiPay -> akai-meter (3)
- AkaiPay -> akai-pay (14)
- AkaiPipeline -> akai-brief (3)
- AkaiPipeline -> akai-media-prep (1)
- AkaiPipeline -> akai-offer (3)
- AkaiPipeline -> akai-pack (3)
- AkaiPipeline -> akai-pipeline (3)
- AkaiPipeline -> akai-proof (6)
- AkaiPipeline -> akai-tag (3)
- AkaiPipeline -> akai-transcribe (3)
- AkaiPipeline -> akai-transcript-clean (3)
- AkaiProject -> akai-cms (2)
- AkaiProject -> akai-index (2)
- AkaiProject -> akai-project (5)
- AkaiProject -> akai-stitch (2)
- AkaiProof -> akai-proof (3)
- AkaiProxy -> akai-brief (8)
- AkaiProxy -> akai-proxy (8)
- AkaiProxy -> akai-transcribe (6)
- AkaiQuant -> akai-quant (17)
- AkaiQuery -> akai-query (11)
- AkaiQueue -> akai-queue (21)
- AkaiRecipe -> akai-brief (6)
- AkaiRecipe -> akai-canon (1)
- AkaiRecipe -> akai-clips (1)
- AkaiRecipe -> akai-cms (1)
- AkaiRecipe -> akai-compress (1)
- AkaiRecipe -> akai-distribute (1)
- AkaiRecipe -> akai-embed (7)
- AkaiRecipe -> akai-emit (4)
- AkaiRecipe -> akai-finance (1)
- AkaiRecipe -> akai-gate (1)
- AkaiRecipe -> akai-graph (1)
- AkaiRecipe -> akai-hash (7)
- AkaiRecipe -> akai-index (2)
- AkaiRecipe -> akai-ingest (11)
- AkaiRecipe -> akai-ledger (5)
- AkaiRecipe -> akai-media-prep (2)
- AkaiRecipe -> akai-meter (3)
- AkaiRecipe -> akai-offer (2)
- AkaiRecipe -> akai-pack (4)
- AkaiRecipe -> akai-paragraph (1)
- AkaiRecipe -> akai-proof (4)
- AkaiRecipe -> akai-quant (3)
- AkaiRecipe -> akai-recipe (22)
- AkaiRecipe -> akai-render (2)
- AkaiRecipe -> akai-repurpose (2)
- AkaiRecipe -> akai-stitch (1)
- AkaiRecipe -> akai-sync (1)
- AkaiRecipe -> akai-tag (4)
- AkaiRecipe -> akai-tone (1)
- AkaiRecipe -> akai-transcribe (6)
- AkaiRecipe -> akai-transcript-clean (5)
- AkaiRender -> akai-brief (2)
- AkaiRender -> akai-narrate (2)
- AkaiRender -> akai-pack (2)
- AkaiRender -> akai-render (3)
- AkaiRepurpose -> akai-repurpose (9)
- AkaiRun -> akai-out (4)
- AkaiRun -> akai-recipe (8)
- AkaiRun -> akai-run (19)
- AkaiRuntime -> akai-clean (1)
- AkaiRuntime -> akai-control (2)
- AkaiRuntime -> akai-gen (4)
- AkaiRuntime -> akai-ingest (1)
- AkaiRuntime -> akai-ledger (2)
- AkaiRuntime -> akai-loop- (1)
- AkaiRuntime -> akai-moq (2)
- AkaiRuntime -> akai-pipeline (3)
- AkaiRuntime -> akai-queue (2)
- AkaiRuntime -> akai-runtime (26)
- AkaiRuntime -> akai-space (2)
- AkaiRuntime -> akai-swarm (3)
- AkaiRuntime -> akai-transcribe (1)
- AkaiSegment -> akai-segment (8)
- AkaiSLI -> akai-fpqx (1)
- AkaiSLI -> akai-model (16)
- AkaiSLI -> akai-quant (2)
- AkaiSLI -> akai-sli (17)
- AkaiSpace -> akai-compete (1)
- AkaiSpace -> akai-flow (1)
- AkaiSpace -> akai-run (1)
- AkaiSpace -> akai-space (20)
- AkaiSpeechLoop -> akai-brief (2)
- AkaiSpeechLoop -> akai-narrate (2)
- AkaiSpeechLoop -> akai-paragraph (2)
- AkaiSpeechLoop -> akai-speechloop (5)
- AkaiSpeechLoop -> akai-transcribe (2)
- AkaiSpeechLoop -> akai-transcript-clean (2)
- AkaiStitch -> akai-brief (2)
- AkaiStitch -> akai-compress (1)
- AkaiStitch -> akai-distribute (1)
- AkaiStitch -> akai-emit (1)
- AkaiStitch -> akai-ingest (1)
- AkaiStitch -> akai-narrate (1)
- AkaiStitch -> akai-offer (1)
- AkaiStitch -> akai-pack (1)
- AkaiStitch -> akai-proof (1)
- AkaiStitch -> akai-stitch (8)
- AkaiStitch -> akai-stitch-cache (1)
- AkaiStitch -> akai-transcribe (1)
- AkaiSwarm -> akai-control (1)
- AkaiSwarm -> akai-swarm (11)
- AkaiSwarm -> akai-transcribe (1)
- AkaiSwarm -> akai-worker- (1)
- AkaiSync -> akai-sync (4)
- AkaiTag -> akai-tag (11)
- AkaiTel -> akai-ingest (2)
- AkaiTel -> akai-pipeline (2)
- AkaiTel -> akai-sim (3)
- AkaiTel -> akai-tel (34)
- AkaiTel -> akai-verify (1)
- AkaiTier -> akai-control (2)
- AkaiTier -> akai-economy (2)
- AkaiTier -> akai-run (1)
- AkaiTier -> akai-tier (19)
- AkaiTime -> akai-entity (1)
- AkaiTime -> akai-model (1)
- AkaiTime -> akai-run (2)
- AkaiTime -> akai-time (24)
- AkaiTone -> akai-tone (9)
- AkaiTranscribe -> akai-media-prep (2)
- AkaiTranscribe -> akai-transcribe (2)
- AkaiTranscriptClean -> akai-transcript-clean (1)
- AkaiTranscriptFamily -> akai-paragraph (2)
- AkaiTranscriptFamily -> akai-transcribe (2)
- AkaiTranscriptFamily -> akai-transcript-clean (2)
- AkaiTranscriptFamily -> akai-transcript-family (2)
- AkaiVec -> akai-vec (15)
- AkaiWeaviateIndex -> akai-document (1)
- AkaiWeaviateIndex -> akai-weaviate-index (1)

## Binaries With No Outbound Cross-References


## Immediate Wiring Opportunities (Non-Cycle-9)

- Wire akai-runtime wrappers for akai-model, akai-recipe, akai-run, akai-stitch, akai-proxy, akai-sli.
- Add runtime command akai-runtime service proxy|moq|swarm-worker to standardize long-running process launch.
- Add akai-run preflight hooks: akai-control entropy-check + route before stage execution.
- Normalize stitch op mapping: Clean should target akai-transcript-clean (or akai-paragraph) rather than akai-transcribe.
- Add Makefile TARGET for dirs missing TARGET to improve automation surfaces (static/wasm/capability index).
