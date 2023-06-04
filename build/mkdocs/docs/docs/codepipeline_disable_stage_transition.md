<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_disable_stage_transition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline

### Description

Prevents artifacts in a pipeline from transitioning to the next stage in
the pipeline.

### Usage

    codepipeline_disable_stage_transition(pipelineName, stageName,
      transitionType, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_disable_stage_transition_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline in which you want to disable
the flow of artifacts from one stage to another.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_disable_stage_transition_:_stageName">stageName</code></td>
<td><p>[required] The name of the stage where you want to disable the
inbound or outbound transition of artifacts.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_disable_stage_transition_:_transitionType">transitionType</code></td>
<td><p>[required] Specifies whether artifacts are prevented from
transitioning into the stage and being processed by the actions in that
stage (inbound), or prevented from transitioning from the stage after
they have been processed by the actions in that stage
(outbound).</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_disable_stage_transition_:_reason">reason</code></td>
<td><p>[required] The reason given to the user that a stage is disabled,
such as waiting for manual approval or manual tests. This message is
displayed in the pipeline console UI.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_stage_transition(
      pipelineName = "string",
      stageName = "string",
      transitionType = "Inbound"|"Outbound",
      reason = "string"
    )
