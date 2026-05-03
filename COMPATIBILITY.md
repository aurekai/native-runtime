# Compatibility

## Bonfyre ABI Compatibility

Legacy Bonfyre command names and ABI remain fully supported in v0.8.x.
The `akai` dispatcher (see `bin/akai`) maps Aurekai-native command names
to the underlying Bonfyre operator binaries.

## Operator Name Mapping

`akai <command>` calls the corresponding `Bonfyre<Operator>` binary.

| akai command       | Bonfyre binary          | akai command       | Bonfyre binary          |
|--------------------|-------------------------|--------------------|-------------------------|
| api                | BonfyreAPI              | narrate            | BonfyreNarrate          |
| auth               | BonfyreAuth             | net                | BonfyreNet              |
| brief              | BonfyreBrief            | offer              | BonfyreOffer            |
| canon              | BonfyreCanon            | orchestrate        | BonfyreOrchestrate      |
| capability         | BonfyreCapability       | outreach           | BonfyreOutreach         |
| cli                | BonfyreCLI              | pack               | BonfyrePack             |
| clips              | BonfyreClips            | paragraph          | BonfyreParagraph        |
| cms                | BonfyreCMS              | pay                | BonfyrePay              |
| compete            | BonfyreCompete          | physics            | BonfyrePhysics          |
| compress           | BonfyreCompress         | pipeline           | BonfyrePipeline         |
| control            | BonfyreControl          | project            | BonfyreProject          |
| detect-objects     | BonfyreDetectObjects    | proof              | BonfyreProof            |
| discip             | BonfyreDiscipl          | proxy              | BonfyreProxy            |
| distribute         | BonfyreDistribute       | quant              | BonfyreQuant            |
| economy            | BonfyreEconomy          | query              | BonfyreQuery            |
| embed              | BonfyreEmbed            | queue              | BonfyreQueue            |
| emit               | BonfyreEmit             | reason             | BonfyreReason           |
| entity             | BonfyreEntity           | recipe             | BonfyreRecipe           |
| family             | BonfyreFamily           | render             | BonfyreRender           |
| finance            | BonfyreFinance          | repurpose          | BonfyreRepurpose        |
| flash-qla          | BonfyreFlashQLA         | run                | BonfyreRun              |
| flow               | BonfyreFlow             | runtime            | BonfyreRuntime          |
| fpq                | BonfyreFPQ              | sae                | BonfyreSAE              |
| fpqx               | BonfyreFPQx             | scene-detect       | BonfyreSceneDetect      |
| fragment           | BonfyreFragment         | segment            | BonfyreSegment          |
| frame-extract      | BonfyreFrameExtract     | sli                | BonfyreSLI              |
| gate               | BonfyreGate             | space              | BonfyreSpace            |
| gen                | BonfyreGen              | speech-loop        | BonfyreSpeechLoop       |
| graph              | BonfyreGraph            | stitch             | BonfyreStitch           |
| hash               | BonfyreHash             | surface            | BonfyreSurface          |
| index              | BonfyreIndex            | swarm              | BonfyreSwarm            |
| ingest             | BonfyreIngest           | sync               | BonfyreSync             |
| kv-cache           | BonfyreKVCache          | tag                | BonfyreTag              |
| layer              | BonfyreLayer            | tel                | BonfyreTel              |
| leapfrog           | BonfyreLeapfrog         | tier               | BonfyreTier             |
| learn              | BonfyreLearn            | time               | BonfyreTime             |
| ledger             | BonfyreLedger           | tone               | BonfyreTone             |
| media-prep         | BonfyreMediaPrep        | transcribe         | BonfyreTranscribe       |
| meter              | BonfyreMeter            | transcript-clean   | BonfyreTranscriptClean  |
| mfa-dict           | BonfyreMFADict          | transcript-family  | BonfyreTranscriptFamily |
| model              | BonfyreModel            | vec                | BonfyreVec              |
| moq                | BonfyreMoQ              | video-demux        | BonfyreVideoDemux       |
|                    |                         | violence           | BonfyreViolence         |
|                    |                         | watch              | BonfyreWatch            |
|                    |                         | weaviate-index     | BonfyreWeaviateIndex    |
|                    |                         | wire               | BonfyreWire             |
|                    |                         | workflow           | BonfyreWorkflow         |

Total: **89 operators**

## Artifact Format Mapping

Bonfyre `.bf*` formats are canonical on-disk in v0.8.x. Aurekai-native `.ak*` names
are the migration target for v1.0+. All formats share the same ABI (`bonfyre-abi-v1`).
See [`schemas/format-bridge.json`](schemas/format-bridge.json) for the full machine-readable mapping.

| Bonfyre extension | Aurekai extension | Description                            |
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
