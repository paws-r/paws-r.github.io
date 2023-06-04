<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_execution_task_invocations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution

### Description

Retrieves the individual task executions (one per target) for a
particular task run as part of a maintenance window execution.

### Usage

    ssm_describe_maintenance_window_execution_task_invocations(
      WindowExecutionId, TaskId, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_execution_task_invocations_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution the task is
part of.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_execution_task_invocations_:_TaskId">TaskId</code></td>
<td><p>[required] The ID of the specific task in the maintenance window
task that should be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_execution_task_invocations_:_Filters">Filters</code></td>
<td><p>Optional filters used to scope down the returned task
invocations. The supported filter key is <code>STATUS</code> with the
corresponding values <code>PENDING</code>, <code>IN_PROGRESS</code>,
<code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
<code>CANCELLING</code>, and <code>CANCELLED</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_execution_task_invocations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_execution_task_invocations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionTaskInvocationIdentities = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_execution_task_invocations(
      WindowExecutionId = "string",
      TaskId = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
