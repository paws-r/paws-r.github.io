<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_retry_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retry the execution of the pipeline

### Description

Retry the execution of the pipeline.

### Usage

    sagemaker_retry_pipeline_execution(PipelineExecutionArn,
      ClientRequestToken, ParallelismConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_retry_pipeline_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_retry_pipeline_execution_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the operation. An idempotent operation
completes no more than once.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_retry_pipeline_execution_:_ParallelismConfiguration">ParallelismConfiguration</code></td>
<td><p>This configuration, if specified, overrides the parallelism
configuration of the parent pipeline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionArn = "string"
    )

### Request syntax

    svc$retry_pipeline_execution(
      PipelineExecutionArn = "string",
      ClientRequestToken = "string",
      ParallelismConfiguration = list(
        MaxParallelExecutionSteps = 123
      )
    )
