<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_maintenance_window_execution_task_invocation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a specific task running on a specific target

### Description

Retrieves information about a specific task running on a specific
target.

### Usage

    ssm_get_maintenance_window_execution_task_invocation(WindowExecutionId,
      TaskId, InvocationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_execution_task_invocation_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution for which
the task is a part.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_maintenance_window_execution_task_invocation_:_TaskId">TaskId</code></td>
<td><p>[required] The ID of the specific task in the maintenance window
task that should be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_execution_task_invocation_:_InvocationId">InvocationId</code></td>
<td><p>[required] The invocation ID to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionId = "string",
      TaskExecutionId = "string",
      InvocationId = "string",
      ExecutionId = "string",
      TaskType = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
      Parameters = "string",
      Status = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"TIMED_OUT"|"CANCELLING"|"CANCELLED"|"SKIPPED_OVERLAPPING",
      StatusDetails = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      OwnerInformation = "string",
      WindowTargetId = "string"
    )

### Request syntax

    svc$get_maintenance_window_execution_task_invocation(
      WindowExecutionId = "string",
      TaskId = "string",
      InvocationId = "string"
    )
