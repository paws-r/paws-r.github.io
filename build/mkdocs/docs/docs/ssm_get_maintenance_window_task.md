<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_maintenance_window_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of a maintenance window task

### Description

Retrieves the details of a maintenance window task.

For maintenance window tasks without a specified target, you can't
supply values for `--max-errors` and `--max-concurrency`. Instead, the
system inserts a placeholder value of `1`, which may be reported in the
response to this command. These values don't affect the running of your
task and can be ignored.

To retrieve a list of tasks in a maintenance window, instead use the
`describe_maintenance_window_tasks` command.

### Usage

    ssm_get_maintenance_window_task(WindowId, WindowTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_task_:_WindowId">WindowId</code></td>
<td><p>[required] The maintenance window ID that includes the task to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_maintenance_window_task_:_WindowTaskId">WindowTaskId</code></td>
<td><p>[required] The maintenance window task ID to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      WindowTaskId = "string",
      Targets = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      TaskArn = "string",
      ServiceRoleArn = "string",
      TaskType = "RUN_COMMAND"|"AUTOMATION"|"STEP_FUNCTIONS"|"LAMBDA",
      TaskParameters = list(
        list(
          Values = list(
            "string"
          )
        )
      ),
      TaskInvocationParameters = list(
        RunCommand = list(
          Comment = "string",
          CloudWatchOutputConfig = list(
            CloudWatchLogGroupName = "string",
            CloudWatchOutputEnabled = TRUE|FALSE
          ),
          DocumentHash = "string",
          DocumentHashType = "Sha256"|"Sha1",
          DocumentVersion = "string",
          NotificationConfig = list(
            NotificationArn = "string",
            NotificationEvents = list(
              "All"|"InProgress"|"Success"|"TimedOut"|"Cancelled"|"Failed"
            ),
            NotificationType = "Command"|"Invocation"
          ),
          OutputS3BucketName = "string",
          OutputS3KeyPrefix = "string",
          Parameters = list(
            list(
              "string"
            )
          ),
          ServiceRoleArn = "string",
          TimeoutSeconds = 123
        ),
        Automation = list(
          DocumentVersion = "string",
          Parameters = list(
            list(
              "string"
            )
          )
        ),
        StepFunctions = list(
          Input = "string",
          Name = "string"
        ),
        Lambda = list(
          ClientContext = "string",
          Qualifier = "string",
          Payload = raw
        )
      ),
      Priority = 123,
      MaxConcurrency = "string",
      MaxErrors = "string",
      LoggingInfo = list(
        S3BucketName = "string",
        S3KeyPrefix = "string",
        S3Region = "string"
      ),
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

### Request syntax

    svc$get_maintenance_window_task(
      WindowId = "string",
      WindowTaskId = "string"
    )
