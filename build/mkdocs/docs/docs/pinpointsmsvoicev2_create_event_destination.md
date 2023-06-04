<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_create_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new event destination in a configuration set

### Description

Creates a new event destination in a configuration set.

An event destination is a location where you send message events. The
event options are Amazon CloudWatch, Amazon Kinesis Data Firehose, or
Amazon SNS. For example, when a message is delivered successfully, you
can send information about that event to an event destination, or send
notifications to endpoints that are subscribed to an Amazon SNS topic.

Each configuration set can contain between 0 and 5 event destinations.
Each event destination can contain a reference to a single destination,
such as a CloudWatch or Kinesis Data Firehose destination.

### Usage

    pinpointsmsvoicev2_create_event_destination(ConfigurationSetName,
      EventDestinationName, MatchingEventTypes, CloudWatchLogsDestination,
      KinesisFirehoseDestination, SnsDestination, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] Either the name of the configuration set or the
configuration set ARN to apply event logging to. The ConfigurateSetName
and ConfigurationSetArn can be found using the
<code>describe_configuration_sets</code> action.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] The name that identifies the event
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_MatchingEventTypes">MatchingEventTypes</code></td>
<td><p>[required] An array of event types that determine which events to
log. If "ALL" is used, then Amazon Pinpoint logs every event
type.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_CloudWatchLogsDestination">CloudWatchLogsDestination</code></td>
<td><p>An object that contains information about an event destination
for logging to Amazon CloudWatch logs.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_KinesisFirehoseDestination">KinesisFirehoseDestination</code></td>
<td><p>An object that contains information about an event destination
for logging to Amazon Kinesis Data Firehose.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_SnsDestination">SnsDestination</code></td>
<td><p>An object that contains information about an event destination
for logging to Amazon SNS.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_event_destination_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure
idempotency.</p></td>
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

    svc$create_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string",
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
      ),
      ClientToken = "string"
    )
