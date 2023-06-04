<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_maintenance_window_execution_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details about a specific task run as part of a maintenance window execution

### Description

Retrieves the details about a specific task run as part of a maintenance
window execution.

### Usage

    ssm_get_maintenance_window_execution_task(WindowExecutionId, TaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_execution_task_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution that
includes the task.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_maintenance_window_execution_task_:_TaskId">TaskId</code></td>
<td><p>[required] The ID of the specific task execution in the
maintenance window task that should be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionId = "string",
      TaskExecutionId = "string",
      TaskArn = "string",
      ServiceRole = "string",
      Type = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
      TaskParameters = list(
        list(
          list(
            Values = list(
              "string"
            )
          )
        )
      ),
      Priority = 123,
      MaxConcurrency = "string",
      MaxErrors = "string",
      Status = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"TIMED_OUT"|"CANCELLING"|"CANCELLED"|"SKIPPED_OVERLAPPING",
      StatusDetails = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
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

### Request syntax

    svc$get_maintenance_window_execution_task(
      WindowExecutionId = "string",
      TaskId = "string"
    )
