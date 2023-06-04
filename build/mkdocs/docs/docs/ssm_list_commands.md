<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_commands</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the commands requested by users of the Amazon Web Services account

### Description

Lists the commands requested by users of the Amazon Web Services
account.

### Usage

    ssm_list_commands(CommandId, InstanceId, MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_list_commands_:_CommandId">CommandId</code></td>
<td><p>(Optional) If provided, lists only the specified
command.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_commands_:_InstanceId">InstanceId</code></td>
<td><p>(Optional) Lists commands issued against this managed node
ID.</p>
<p>You can't specify a managed node ID in the same command that you
specify <code>Status</code> = <code>Pending</code>. This is because the
command hasn't reached the managed node yet.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_commands_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) The maximum number of items to return for this call.
The call also returns a token that you can specify in a subsequent call
to get the next set of results.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_commands_:_NextToken">NextToken</code></td>
<td><p>(Optional) The token for the next set of items to return. (You
received this token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_commands_:_Filters">Filters</code></td>
<td><p>(Optional) One or more filters. Use a filter to return a more
specific list of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Commands = list(
        list(
          CommandId = "string",
          DocumentName = "string",
          DocumentVersion = "string",
          Comment = "string",
          ExpiresAfter = as.POSIXct(
            "2015-01-01"
          ),
          Parameters = list(
            list(
              "string"
            )
          ),
          InstanceIds = list(
            "string"
          ),
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          RequestedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "Pending"|"InProgress"|"Success"|"Cancelled"|"Failed"|"TimedOut"|"Cancelling",
          StatusDetails = "string",
          OutputS3Region = "string",
          OutputS3BucketName = "string",
          OutputS3KeyPrefix = "string",
          MaxConcurrency = "string",
          MaxErrors = "string",
          TargetCount = 123,
          CompletedCount = 123,
          ErrorCount = 123,
          DeliveryTimedOutCount = 123,
          ServiceRole = "string",
          NotificationConfig = list(
            NotificationArn = "string",
            NotificationEvents = list(
              "All"|"InProgress"|"Success"|"TimedOut"|"Cancelled"|"Failed"
            ),
            NotificationType = "Command"|"Invocation"
          ),
          CloudWatchOutputConfig = list(
            CloudWatchLogGroupName = "string",
            CloudWatchOutputEnabled = TRUE|FALSE
          ),
          TimeoutSeconds = 123,
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

    svc$list_commands(
      CommandId = "string",
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          key = "InvokedAfter"|"InvokedBefore"|"Status"|"ExecutionStage"|"DocumentName",
          value = "string"
        )
      )
    )
