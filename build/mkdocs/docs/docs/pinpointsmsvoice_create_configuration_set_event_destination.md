<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_create_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new event destination in a configuration set

### Description

Create a new event destination in a configuration set.

### Usage

    pinpointsmsvoice_create_configuration_set_event_destination(
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
id="pinpointsmsvoice_create_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] ConfigurationSetName</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_create_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoice_create_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>A name that identifies the event destination.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set_event_destination(
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
