<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_stop_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the specified pipeline execution

### Description

Stops the specified pipeline execution. You choose to either stop the
pipeline execution by completing in-progress actions without starting
subsequent actions, or by abandoning in-progress actions. While
completing or abandoning in-progress actions, the pipeline execution is
in a `Stopping` state. After all in-progress actions are completed or
abandoned, the pipeline execution is in a `Stopped` state.

### Usage

    codepipeline_stop_pipeline_execution(pipelineName, pipelineExecutionId,
      abandon, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_stop_pipeline_execution_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_stop_pipeline_execution_:_pipelineExecutionId">pipelineExecutionId</code></td>
<td><p>[required] The ID of the pipeline execution to be stopped in the
current stage. Use the <code>get_pipeline_state</code> action to
retrieve the current pipelineExecutionId.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_stop_pipeline_execution_:_abandon">abandon</code></td>
<td><p>Use this option to stop the pipeline execution by abandoning,
rather than finishing, in-progress actions.</p>
<p>This option can lead to failed or out-of-sequence tasks.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_stop_pipeline_execution_:_reason">reason</code></td>
<td><p>Use this option to enter comments, such as the reason the
pipeline was stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineExecutionId = "string"
    )

### Request syntax

    svc$stop_pipeline_execution(
      pipelineName = "string",
      pipelineExecutionId = "string",
      abandon = TRUE|FALSE,
      reason = "string"
    )
