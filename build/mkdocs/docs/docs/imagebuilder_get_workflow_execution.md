<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_workflow_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the runtime information that was logged for a specific runtime instance of the workflow

### Description

Get the runtime information that was logged for a specific runtime
instance of the workflow.

### Usage

    imagebuilder_get_workflow_execution(workflowExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_workflow_execution_:_workflowExecutionId">workflowExecutionId</code></td>
<td><p>[required] Use the unique identifier for a runtime instance of
the workflow to get runtime details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      workflowBuildVersionArn = "string",
      workflowExecutionId = "string",
      imageBuildVersionArn = "string",
      type = "BUILD"|"TEST"|"DISTRIBUTION",
      status = "PENDING"|"SKIPPED"|"RUNNING"|"COMPLETED"|"FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETED",
      message = "string",
      totalStepCount = 123,
      totalStepsSucceeded = 123,
      totalStepsFailed = 123,
      totalStepsSkipped = 123,
      startTime = "string",
      endTime = "string"
    )

### Request syntax

    svc$get_workflow_execution(
      workflowExecutionId = "string"
    )
