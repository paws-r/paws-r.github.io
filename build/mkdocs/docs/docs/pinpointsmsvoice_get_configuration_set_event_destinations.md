<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_get_configuration_set_event_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination

### Description

Obtain information about an event destination, including the types of
events it reports, the Amazon Resource Name (ARN) of the destination,
and the name of the event destination.

### Usage

    pinpointsmsvoice_get_configuration_set_event_destinations(
      ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_get_configuration_set_event_destinations_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] ConfigurationSetName</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventDestinations = list(
        list(
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
          Name = "string",
          SnsDestination = list(
            TopicArn = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_configuration_set_event_destinations(
      ConfigurationSetName = "string"
    )
