<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_send_command</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs commands on one or more managed nodes

### Description

Runs commands on one or more managed nodes.

### Usage

    ssm_send_command(InstanceIds, Targets, DocumentName, DocumentVersion,
      DocumentHash, DocumentHashType, TimeoutSeconds, Comment, Parameters,
      OutputS3Region, OutputS3BucketName, OutputS3KeyPrefix, MaxConcurrency,
      MaxErrors, ServiceRoleArn, NotificationConfig, CloudWatchOutputConfig,
      AlarmConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_send_command_:_InstanceIds">InstanceIds</code></td>
<td><p>The IDs of the managed nodes where the command should run.
Specifying managed node IDs is most useful when you are targeting a
limited number of managed nodes, though you can specify up to 50
IDs.</p>
<p>To target a larger number of managed nodes, or if you prefer not to
list individual node IDs, we recommend using the <code>Targets</code>
option instead. Using <code>Targets</code>, which accepts tag key-value
pairs to identify the managed nodes to send commands to, you can a send
command to tens, hundreds, or thousands of nodes at once.</p>
<p>For more information about how to use targets, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Using
targets and rate controls to send commands to a fleet</a> in the
<em>Amazon Web Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_send_command_:_Targets">Targets</code></td>
<td><p>An array of search criteria that targets managed nodes using a
<code style="white-space: pre;">⁠Key,Value⁠</code> combination that you
specify. Specifying targets is most useful when you want to send a
command to a large number of managed nodes at once. Using
<code>Targets</code>, which accepts tag key-value pairs to identify
managed nodes, you can send a command to tens, hundreds, or thousands of
nodes at once.</p>
<p>To send a command to a smaller number of managed nodes, you can use
the <code>InstanceIds</code> option instead.</p>
<p>For more information about how to use targets, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending
commands to a fleet</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_send_command_:_DocumentName">DocumentName</code></td>
<td><p>[required] The name of the Amazon Web Services Systems Manager
document (SSM document) to run. This can be a public document or a
custom document. To run a shared document belonging to another account,
specify the document Amazon Resource Name (ARN). For more information
about how to use shared documents, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html">Using
shared SSM documents</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p>
<p>If you specify a document name or ARN that hasn't been shared with
your account, you receive an <code>InvalidDocument</code>
error.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The SSM document version to use in the request. You can specify
$DEFAULT, $LATEST, or a specific version number. If you run commands by
using the Command Line Interface (Amazon Web Services CLI), then you
must escape the first two options by using a backslash. If you specify a
version number, then you don't need to use the backslash. For
example:</p>
<p>–document-version "\$DEFAULT"</p>
<p>–document-version "\$LATEST"</p>
<p>–document-version "3"</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_send_command_:_DocumentHash">DocumentHash</code></td>
<td><p>The Sha256 or Sha1 hash created by the system when the document
was created.</p>
<p>Sha1 hashes have been deprecated.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_DocumentHashType">DocumentHashType</code></td>
<td><p>Sha256 or Sha1.</p>
<p>Sha1 hashes have been deprecated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_send_command_:_TimeoutSeconds">TimeoutSeconds</code></td>
<td><p>If this time is reached and the command hasn't already started
running, it won't run.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_send_command_:_Comment">Comment</code></td>
<td><p>User-specified information about the command, such as a brief
description of what the command should do.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_send_command_:_Parameters">Parameters</code></td>
<td><p>The required and optional parameters specified in the document
being run.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_OutputS3Region">OutputS3Region</code></td>
<td><p>(Deprecated) You can no longer specify this parameter. The system
ignores it. Instead, Systems Manager automatically determines the Amazon
Web Services Region of the S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_send_command_:_OutputS3BucketName">OutputS3BucketName</code></td>
<td><p>The name of the S3 bucket where command execution responses
should be stored.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_OutputS3KeyPrefix">OutputS3KeyPrefix</code></td>
<td><p>The directory structure within the S3 bucket where the responses
should be stored.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_send_command_:_MaxConcurrency">MaxConcurrency</code></td>
<td><p>(Optional) The maximum number of managed nodes that are allowed
to run the command at the same time. You can specify a number such as 10
or a percentage such as 10%. The default value is <code>50</code>. For
more information about how to use <code>MaxConcurrency</code>, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity">Using
concurrency controls</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_send_command_:_MaxErrors">MaxErrors</code></td>
<td><p>The maximum number of errors allowed without the command failing.
When the command fails one more time beyond the value of
<code>MaxErrors</code>, the systems stops sending the command to
additional targets. You can specify a number like 10 or a percentage
like 10%. The default value is <code>0</code>. For more information
about how to use <code>MaxErrors</code>, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors">Using
error controls</a> in the <em>Amazon Web Services Systems Manager User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_send_command_:_ServiceRoleArn">ServiceRoleArn</code></td>
<td><p>The ARN of the Identity and Access Management (IAM) service role
to use to publish Amazon Simple Notification Service (Amazon SNS)
notifications for Run Command commands.</p>
<p>This role must provide the <code>sns:Publish</code> permission for
your notification topic. For information about creating and using this
service role, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html">Monitoring
Systems Manager status changes using Amazon SNS notifications</a> in the
<em>Amazon Web Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_NotificationConfig">NotificationConfig</code></td>
<td><p>Configurations for sending notifications.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_send_command_:_CloudWatchOutputConfig">CloudWatchOutputConfig</code></td>
<td><p>Enables Amazon Web Services Systems Manager to send Run Command
output to Amazon CloudWatch Logs. Run Command is a capability of Amazon
Web Services Systems Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_send_command_:_AlarmConfiguration">AlarmConfiguration</code></td>
<td><p>The CloudWatch alarm you want to apply to your command.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Command = list(
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
    )

### Request syntax

    svc$send_command(
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
      DocumentName = "string",
      DocumentVersion = "string",
      DocumentHash = "string",
      DocumentHashType = "Sha256"|"Sha1",
      TimeoutSeconds = 123,
      Comment = "string",
      Parameters = list(
        list(
          "string"
        )
      ),
      OutputS3Region = "string",
      OutputS3BucketName = "string",
      OutputS3KeyPrefix = "string",
      MaxConcurrency = "string",
      MaxErrors = "string",
      ServiceRoleArn = "string",
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
      AlarmConfiguration = list(
        IgnorePollAlarmFailure = TRUE|FALSE,
        Alarms = list(
          list(
            Name = "string"
          )
        )
      )
    )
