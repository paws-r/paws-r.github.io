<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing event destination

### Description

Deletes an existing event destination.

An event destination is a location where you send response information
about the messages that you send. For example, when a message is
delivered successfully, you can send information about that event to an
Amazon CloudWatch destination, or send notifications to endpoints that
are subscribed to an Amazon SNS topic.

### Usage

    pinpointsmsvoicev2_delete_event_destination(ConfigurationSetName,
      EventDestinationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set or the configuration
set's Amazon Resource Name (ARN) to remove the event destination from.
The ConfigurateSetName and ConfigurationSetArn can be found using the
<code>describe_configuration_sets</code> action.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_delete_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] The name of the event destination to delete.</p></td>
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

    svc$delete_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string"
    )
