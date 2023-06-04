<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_workflow_step_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the runtime information that was logged for a specific runtime instance of the workflow step

### Description

Get the runtime information that was logged for a specific runtime
instance of the workflow step.

### Usage

    imagebuilder_get_workflow_step_execution(stepExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_workflow_step_execution_:_stepExecutionId">stepExecutionId</code></td>
<td><p>[required] Use the unique identifier for a specific runtime
instance of the workflow step to get runtime details for that
step.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      stepExecutionId = "string",
      workflowBuildVersionArn = "string",
      workflowExecutionId = "string",
      imageBuildVersionArn = "string",
      name = "string",
      description = "string",
      action = "string",
      status = "PENDING"|"SKIPPED"|"RUNNING"|"COMPLETED"|"FAILED",
      rollbackStatus = "RUNNING"|"COMPLETED"|"SKIPPED"|"FAILED",
      message = "string",
      inputs = "string",
      outputs = "string",
      startTime = "string",
      endTime = "string",
      onFailure = "string",
      timeoutSeconds = 123
    )

### Request syntax

    svc$get_workflow_step_execution(
      stepExecutionId = "string"
    )
