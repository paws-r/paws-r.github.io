<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_send_pipeline_execution_step_success</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Notifies the pipeline that the execution of a callback step succeeded and provides a list of the step's output parameters

### Description

Notifies the pipeline that the execution of a callback step succeeded
and provides a list of the step's output parameters. When a callback
step is run, the pipeline generates a callback token and includes the
token in a message sent to Amazon Simple Queue Service (Amazon SQS).

### Usage

    sagemaker_send_pipeline_execution_step_success(CallbackToken,
      OutputParameters, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_send_pipeline_execution_step_success_:_CallbackToken">CallbackToken</code></td>
<td><p>[required] The pipeline generated token from the Amazon SQS
queue.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_send_pipeline_execution_step_success_:_OutputParameters">OutputParameters</code></td>
<td><p>A list of the output parameters of the callback step.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_send_pipeline_execution_step_success_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the operation. An idempotent operation completes no
more than one time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineExecutionArn = "string"
    )

### Request syntax

    svc$send_pipeline_execution_step_success(
      CallbackToken = "string",
      OutputParameters = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ClientRequestToken = "string"
    )
