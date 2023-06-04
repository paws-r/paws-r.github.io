<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_command_invocations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An invocation is copy of a command sent to a specific managed node

### Description

An invocation is copy of a command sent to a specific managed node. A
command can apply to one or more managed nodes. A command invocation
applies to one managed node. For example, if a user runs `send_command`
against three managed nodes, then a command invocation is created for
each requested managed node ID. `list_command_invocations` provide
status about command execution.

### Usage

    ssm_list_command_invocations(CommandId, InstanceId, MaxResults,
      NextToken, Filters, Details)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_command_invocations_:_CommandId">CommandId</code></td>
<td><p>(Optional) The invocations for a specific command ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_command_invocations_:_InstanceId">InstanceId</code></td>
<td><p>(Optional) The command execution details for a specific managed
node ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_command_invocations_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) The maximum number of items to return for this call.
The call also returns a token that you can specify in a subsequent call
to get the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_command_invocations_:_NextToken">NextToken</code></td>
<td><p>(Optional) The token for the next set of items to return. (You
received this token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_command_invocations_:_Filters">Filters</code></td>
<td><p>(Optional) One or more filters. Use a filter to return a more
specific list of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_command_invocations_:_Details">Details</code></td>
<td><p>(Optional) If set this returns the response of the command
executions and any command output. The default value is
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CommandInvocations = list(
        list(
          CommandId = "string",
          InstanceId = "string",
          InstanceName = "string",
          Comment = "string",
          DocumentName = "string",
          DocumentVersion = "string",
          RequestedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "Pending"|"InProgress"|"Delayed"|"Success"|"Cancelled"|"TimedOut"|"Failed"|"Cancelling",
          StatusDetails = "string",
          TraceOutput = "string",
          StandardOutputUrl = "string",
          StandardErrorUrl = "string",
          CommandPlugins = list(
            list(
              Name = "string",
              Status = "Pending"|"InProgress"|"Success"|"TimedOut"|"Cancelled"|"Failed",
              StatusDetails = "string",
              ResponseCode = 123,
              ResponseStartDateTime = as.POSIXct(
                "2015-01-01"
              ),
              ResponseFinishDateTime = as.POSIXct(
                "2015-01-01"
              ),
              Output = "string",
              StandardOutputUrl = "string",
              StandardErrorUrl = "string",
              OutputS3Region = "string",
              OutputS3BucketName = "string",
              OutputS3KeyPrefix = "string"
            )
          ),
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_command_invocations(
      CommandId = "string",
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          key = "InvokedAfter"|"InvokedBefore"|"Status"|"ExecutionStage"|"DocumentName",
          value = "string"
        )
      ),
      Details = TRUE|FALSE
    )
