<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_update_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an event destination in a configuration set

### Description

Update an event destination in a configuration set. An event destination
is a location that you publish information about your voice calls to.
For example, you can log an event to an Amazon CloudWatch destination
when a call fails.

### Usage

    pinpointsmsvoice_update_configuration_set_event_destination(
      ConfigurationSetName, EventDestination, EventDestinationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_update_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] ConfigurationSetName</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_update_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoice_update_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] EventDestinationName</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration_set_event_destination(
      ConfigurationSetName = "string",
      EventDestination = list(
        CloudWatchLogsDestination = list(
          IamRoleArn = "string",
          LogGroupArn = "string"
        ),
        Enabled = TRUE|FALSE,
        KinesisFirehoseDestination = list(
          DeliveryStreamArn = "string",
          IamRoleArn = "string"
        ),
        MatchingEventTypes = list(
          "INITIATED_CALL"|"RINGING"|"ANSWERED"|"COMPLETED_CALL"|"BUSY"|"FAILED"|"NO_ANSWER"
        ),
        SnsDestination = list(
          TopicArn = "string"
        )
      ),
      EventDestinationName = "string"
    )
