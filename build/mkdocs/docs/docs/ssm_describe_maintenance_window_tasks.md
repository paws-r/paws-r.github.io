<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tasks in a maintenance window

### Description

Lists the tasks in a maintenance window.

For maintenance window tasks without a specified target, you can't
supply values for `--max-errors` and `--max-concurrency`. Instead, the
system inserts a placeholder value of `1`, which may be reported in the
response to this command. These values don't affect the running of your
task and can be ignored.

### Usage

    ssm_describe_maintenance_window_tasks(WindowId, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_tasks_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window whose tasks should be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_tasks_:_Filters">Filters</code></td>
<td><p>Optional filters used to narrow down the scope of the returned
tasks. The supported filter keys are <code>WindowTaskId</code>,
<code>TaskArn</code>, <code>Priority</code>, and
<code>TaskType</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_tasks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_tasks_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tasks = list(
        list(
          WindowId = "string",
          WindowTaskId = "string",
          TaskArn = "string",
          Type = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          TaskParameters = list(
            list(
              Values = list(
                "string"
              )
            )
          ),
          Priority = 123,
          LoggingInfo = list(
            S3BucketName = "string",
            S3KeyPrefix = "string",
            S3Region = "string"
          ),
          ServiceRoleArn = "string",
          MaxConcurrency = "string",
          MaxErrors = "string",
          Name = "string",
          Description = "string",
          CutoffBehavior = "CONTINUE_TASK"|"CANCEL_TASK",
          AlarmConfiguration = list(
            IgnorePollAlarmFailure = TRUE|FALSE,
            Alarms = list(
              list(
                Name = "string"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_tasks(
      WindowId = "string",
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
