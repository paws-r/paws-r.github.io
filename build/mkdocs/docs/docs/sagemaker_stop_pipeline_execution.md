<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_pipeline_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a pipeline execution

### Description

Stops a pipeline execution.

**Callback Step**

A pipeline execution won't stop while a callback step is running. When
you call `stop_pipeline_execution` on a pipeline execution with a
running callback step, SageMaker Pipelines sends an additional Amazon
SQS message to the specified SQS queue. The body of the SQS message
contains a "Status" field which is set to "Stopping".

You should add logic to your Amazon SQS message consumer to take any
needed action (for example, resource cleanup) upon receipt of the
message followed by a call to `send_pipeline_execution_step_success` or
`send_pipeline_execution_step_failure`.

Only when SageMaker Pipelines receives one of these calls will it stop
the pipeline execution.

**Lambda Step**

A pipeline execution can't be stopped while a lambda step is running
because the Lambda function invoked by the lambda step can't be stopped.
If you attempt to stop the execution while the Lambda function is
running, the pipeline waits for the Lambda function to finish or until
the timeout is hit, whichever occurs first, and then stops. If the
Lambda function finishes, the pipeline execution status is `Stopped`. If
the timeout is hit the pipeline execution status is `Failed`.

### Usage

    sagemaker_stop_pipeline_execution(PipelineExecutionArn,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_pipeline_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_stop_pipeline_execution_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency of the operation. An idempotent operation
completes no more than once.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionArn = "string"
    )

### Request syntax

    svc$stop_pipeline_execution(
      PipelineExecutionArn = "string",
      ClientRequestToken = "string"
    )
