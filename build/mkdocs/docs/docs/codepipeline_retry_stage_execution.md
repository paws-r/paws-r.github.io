<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_retry_stage_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resumes the pipeline execution by retrying the last failed actions in a stage

### Description

Resumes the pipeline execution by retrying the last failed actions in a
stage. You can retry a stage immediately if any of the actions in the
stage fail. When you retry, all actions that are still in progress
continue working, and failed actions are triggered again.

### Usage

    codepipeline_retry_stage_execution(pipelineName, stageName,
      pipelineExecutionId, retryMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_retry_stage_execution_:_pipelineName">pipelineName</code></td>
<td><p>[required] The name of the pipeline that contains the failed
stage.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_retry_stage_execution_:_stageName">stageName</code></td>
<td><p>[required] The name of the failed stage to be retried.</p></td>
</tr>
<tr class="odd">
<td><code
id="codepipeline_retry_stage_execution_:_pipelineExecutionId">pipelineExecutionId</code></td>
<td><p>[required] The ID of the pipeline execution in the failed stage
to be retried. Use the <code>get_pipeline_state</code> action to
retrieve the current pipelineExecutionId of the failed stage</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_retry_stage_execution_:_retryMode">retryMode</code></td>
<td><p>[required] The scope of the retry attempt. Currently, the only
supported value is FAILED_ACTIONS.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineExecutionId = "string"
    )

### Request syntax

    svc$retry_stage_execution(
      pipelineName = "string",
      stageName = "string",
      pipelineExecutionId = "string",
      retryMode = "FAILED_ACTIONS"
    )
