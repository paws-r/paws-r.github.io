<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_enable_stage_transition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables artifacts in a pipeline to transition to a stage in a pipeline

### Description

Enables artifacts in a pipeline to transition to a stage in a pipeline.

### Usage

    codepipeline_enable_stage_transition(pipelineName, stageName,
      transitionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_enable_stage_transition_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline in which you want to enable
the flow of artifacts from one stage to another.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_enable_stage_transition_:_stageName">stageName</code></td>
<td><p>[required] The name of the stage where you want to enable the
transition of artifacts, either into the stage (inbound) or from that
stage to the next stage (outbound).</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_enable_stage_transition_:_transitionType">transitionType</code></td>
<td><p>[required] Specifies whether artifacts are allowed to enter the
stage and be processed by the actions in that stage (inbound) or whether
already processed artifacts are allowed to transition to the next stage
(outbound).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_stage_transition(
      pipelineName = "string",
      stageName = "string",
      transitionType = "Inbound"|"Outbound"
    )
