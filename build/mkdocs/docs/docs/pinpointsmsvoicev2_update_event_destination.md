<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_update_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing event destination in a configuration set

### Description

Updates an existing event destination in a configuration set. You can
update the IAM role ARN for CloudWatch Logs and Kinesis Data Firehose.
You can also enable or disable the event destination.

You may want to update an event destination to change its matching event
types or updating the destination resource ARN. You can't change an
event destination's type between CloudWatch Logs, Kinesis Data Firehose,
and Amazon SNS.

### Usage

    pinpointsmsvoicev2_update_event_destination(ConfigurationSetName,
      EventDestinationName, Enabled, MatchingEventTypes,
      CloudWatchLogsDestination, KinesisFirehoseDestination, SnsDestination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The configuration set to update with the new event
destination. Valid values for this can be the ConfigurationSetName or
ConfigurationSetArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] The name to use for the event destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_Enabled">Enabled</code></td>
<td><p>When set to true logging is enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_MatchingEventTypes">MatchingEventTypes</code></td>
<td><p>An array of event types that determine which events to
log.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_CloudWatchLogsDestination">CloudWatchLogsDestination</code></td>
<td><p>An object that contains information about an event destination
that sends data to CloudWatch Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_KinesisFirehoseDestination">KinesisFirehoseDestination</code></td>
<td><p>An object that contains information about an event destination
for logging to Kinesis Data Firehose.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_update_event_destination_:_SnsDestination">SnsDestination</code></td>
<td><p>An object that contains information about an event destination
that sends data to Amazon SNS.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      EventDestination = list(
        EventDestinationName = "string",
        Enabled = TRUE|FALSE,
        MatchingEventTypes = list(
          "ALL"|"TEXT_ALL"|"TEXT_SENT"|"TEXT_PENDING"|"TEXT_QUEUED"|"TEXT_SUCCESSFUL"|"TEXT_DELIVERED"|"TEXT_INVALID"|"TEXT_INVALID_MESSAGE"|"TEXT_UNREACHABLE"|"TEXT_CARRIER_UNREACHABLE"|"TEXT_BLOCKED"|"TEXT_CARRIER_BLOCKED"|"TEXT_SPAM"|"TEXT_UNKNOWN"|"TEXT_TTL_EXPIRED"|"VOICE_ALL"|"VOICE_INITIATED"|"VOICE_RINGING"|"VOICE_ANSWERED"|"VOICE_COMPLETED"|"VOICE_BUSY"|"VOICE_NO_ANSWER"|"VOICE_FAILED"|"VOICE_TTL_EXPIRED"
        ),
        CloudWatchLogsDestination = list(
          IamRoleArn = "string",
          LogGroupArn = "string"
        ),
        KinesisFirehoseDestination = list(
          IamRoleArn = "string",
          DeliveryStreamArn = "string"
        ),
        SnsDestination = list(
          TopicArn = "string"
        )
      )
    )

### Request syntax

    svc$update_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string",
      Enabled = TRUE|FALSE,
      MatchingEventTypes = list(
        "ALL"|"TEXT_ALL"|"TEXT_SENT"|"TEXT_PENDING"|"TEXT_QUEUED"|"TEXT_SUCCESSFUL"|"TEXT_DELIVERED"|"TEXT_INVALID"|"TEXT_INVALID_MESSAGE"|"TEXT_UNREACHABLE"|"TEXT_CARRIER_UNREACHABLE"|"TEXT_BLOCKED"|"TEXT_CARRIER_BLOCKED"|"TEXT_SPAM"|"TEXT_UNKNOWN"|"TEXT_TTL_EXPIRED"|"VOICE_ALL"|"VOICE_INITIATED"|"VOICE_RINGING"|"VOICE_ANSWERED"|"VOICE_COMPLETED"|"VOICE_BUSY"|"VOICE_NO_ANSWER"|"VOICE_FAILED"|"VOICE_TTL_EXPIRED"
      ),
      CloudWatchLogsDestination = list(
        IamRoleArn = "string",
        LogGroupArn = "string"
      ),
      KinesisFirehoseDestination = list(
        IamRoleArn = "string",
        DeliveryStreamArn = "string"
      ),
      SnsDestination = list(
        TopicArn = "string"
      )
    )
