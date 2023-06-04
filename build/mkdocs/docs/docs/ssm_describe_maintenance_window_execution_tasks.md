<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_execution_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a given maintenance window execution, lists the tasks that were run

### Description

For a given maintenance window execution, lists the tasks that were run.

### Usage

    ssm_describe_maintenance_window_execution_tasks(WindowExecutionId,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_execution_tasks_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution whose task
executions should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_execution_tasks_:_Filters">Filters</code></td>
<td><p>Optional filters used to scope down the returned tasks. The
supported filter key is <code>STATUS</code> with the corresponding
values <code>PENDING</code>, <code>IN_PROGRESS</code>,
<code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
<code>CANCELLING</code>, and <code>CANCELLED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_execution_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_execution_tasks_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionTaskIdentities = list(
        list(
          WindowExecutionId = "string",
          TaskExecutionId = "string",
          Status = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"TIMED_OUT"|"CANCELLING"|"CANCELLED"|"SKIPPED_OVERLAPPING",
          StatusDetails = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          TaskArn = "string",
          TaskType = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
          AlarmConfiguration = list(
            IgnorePollAlarmFailure = TRUE|FALSE,
            Alarms = list(
              list(
                Name = "string"
              )
            )
          ),
          TriggeredAlarms = list(
            list(
              Name = "string",
              State = "UNKNOWN"|"ALARM"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_execution_tasks(
      WindowExecutionId = "string",
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
