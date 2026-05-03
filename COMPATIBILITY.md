# Compatibility

## Akai ABI Compatibility

Legacy Akai command names and ABI remain fully supported in v0.8.x.
The `akai` dispatcher (see `bin/akai`) maps Aurekai-native command names
to the underlying Akai operator binaries.

## Operator Name Mapping

`akai <command>` calls the corresponding `Aurekai<Operator>` binary.

| akai command       | Akai binary          | akai command       | Akai binary          |
|--------------------|-------------------------|--------------------|-------------------------|
| api                | AkaiAPI              | narrate            | AkaiNarrate          |
| auth               | AkaiAuth             | net                | AkaiNet              |
| brief              | AkaiBrief            | offer              | AkaiOffer            |
| canon              | AkaiCanon            | orchestrate        | AkaiOrchestrate      |
| capability         | AkaiCapability       | outreach           | AkaiOutreach         |
| cli                | AkaiCLI              | pack               | AkaiPack             |
| clips              | AkaiClips            | paragraph          | AkaiParagraph        |
| cms                | AkaiCMS              | pay                | AkaiPay              |
| compete            | AkaiCompete          | physics            | AkaiPhysics          |
| compress           | AkaiCompress         | pipeline           | AkaiPipeline         |
| control            | AkaiControl          | project            | AkaiProject          |
| detect-objects     | AkaiDetectObjects    | proof              | AkaiProof            |
| discip             | AkaiDiscipl          | proxy              | AkaiProxy            |
| distribute         | AkaiDistribute       | quant              | AkaiQuant            |
| economy            | AkaiEconomy          | query              | AkaiQuery            |
| embed              | AkaiEmbed            | queue              | AkaiQueue            |
| emit               | AkaiEmit             | reason             | AkaiReason           |
| entity             | AkaiEntity           | recipe             | AkaiRecipe           |
| family             | AkaiFamily           | render             | AkaiRender           |
| finance            | AkaiFinance          | repurpose          | AkaiRepurpose        |
| flash-qla          | AkaiFlashQLA         | run                | AkaiRun              |
| flow               | AkaiFlow             | runtime            | AkaiRuntime          |
| fpq                | AkaiFPQ              | sae                | AkaiSAE              |
| fpqx               | AkaiFPQx             | scene-detect       | AkaiSceneDetect      |
| fragment           | AkaiFragment         | segment            | AkaiSegment          |
| frame-extract      | AkaiFrameExtract     | sli                | AkaiSLI              |
| gate               | AkaiGate             | space              | AkaiSpace            |
| gen                | AkaiGen              | speech-loop        | AkaiSpeechLoop       |
| graph              | AkaiGraph            | stitch             | AkaiStitch           |
| hash               | AkaiHash             | surface            | AkaiSurface          |
| index              | AkaiIndex            | swarm              | AkaiSwarm            |
| ingest             | AkaiIngest           | sync               | AkaiSync             |
| kv-cache           | AkaiKVCache          | tag                | AkaiTag              |
| layer              | AkaiLayer            | tel                | AkaiTel              |
| leapfrog           | AkaiLeapfrog         | tier               | AkaiTier             |
| learn              | AkaiLearn            | time               | AkaiTime             |
| ledger             | AkaiLedger           | tone               | AkaiTone             |
| media-prep         | AkaiMediaPrep        | transcribe         | AkaiTranscribe       |
| meter              | AkaiMeter            | transcript-clean   | AkaiTranscriptClean  |
| mfa-dict           | AkaiMFADict          | transcript-family  | AkaiTranscriptFamily |
| model              | AkaiModel            | vec                | AkaiVec              |
| moq                | AkaiMoQ              | video-demux        | AkaiVideoDemux       |
|                    |                         | violence           | AkaiViolence         |
|                    |                         | watch              | AkaiWatch            |
|                    |                         | weaviate-index     | AkaiWeaviateIndex    |
|                    |                         | wire               | AkaiWire             |
|                    |                         | workflow           | AkaiWorkflow         |

Total: **89 operators**

## Artifact Format Mapping

Aurekai `.bf*` formats are canonical on-disk in v0.8.x. Aurekai-native `.ak*` names
are the migration target for v1.0+. All formats share the same ABI (`bonfyre-abi-v1`).
See [`schemas/format-bridge.json`](schemas/format-bridge.json) for the full machine-readable mapping.

| Akai extension | Aurekai extension | Description                            |
|-------------------|-------------------|----------------------------------------|
| `.bf`             | `.ak`             | General packed artifact bundle         |
| `.bfa`            | `.aka`            | Artifact archive (multi-item bundle)   |
| `.bfq`            | `.akq`            | FPQ quantization snapshot              |
| `.bfqx`           | `.akqx`           | FPQx cross-family alignment artifact   |
| `.bfmodel`        | `.akmodel`        | Embedded model snapshot (ONNX)         |
| `.bfsae`          | `.aksae`          | SAE feature dictionary                 |
| `.bfgraph`        | `.akgraph`        | Graph artifact (entity/relation store) |
| `.bftag`          | `.aktag`          | Tag artifact (language classification) |
| `.bftone`         | `.aktone`         | Tone artifact (eGeMAPS feature vector) |
| `.bfvec`          | `.akvec`          | Dense vector store snapshot            |
| `.bfrecipe`       | `.akrecipe`       | Pipeline recipe definition (DAG)       |
| `.bfproof`        | `.akproof`        | Proof bundle (signed + attested)       |

## Install Wrappers

```bash
# Add akai dispatcher to your PATH
export PATH="$PWD/bin:$PATH"
akai embed --help
```

Or copy `bin/akai` to `/usr/local/bin/`.
