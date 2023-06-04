<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_update_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the configuration of an event destination for a configuration set

### Description

Update the configuration of an event destination for a configuration
set.

In Amazon Pinpoint, *events* include message sends, deliveries, opens,
clicks, bounces, and complaints. *Event destinations* are places that
you can send information about these events to. For example, you can
send event data to Amazon SNS to receive notifications when you receive
bounces or complaints, or you can use Amazon Kinesis Data Firehose to
stream data to Amazon S3 for long-term storage.

### Usage

    pinpointemail_update_configuration_set_event_destination(
      ConfigurationSetName, EventDestinationName, EventDestination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_update_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that contains the
event destination that you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_update_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] The name of the event destination that you want to
modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_update_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td><p>[required] An object that defines the event destination.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration_set_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string",
      EventDestination = list(
        Enabled = TRUE|FALSE,
        MatchingEventTypes = list(
          "SEND"|"REJECT"|"BOUNCE"|"COMPLAINT"|"DELIVERY"|"OPEN"|"CLICK"|"RENDERING_FAILURE"
        ),
        KinesisFirehoseDestination = list(
          IamRoleArn = "string",
          DeliveryStreamArn = "string"
        ),
        CloudWatchDestination = list(
          DimensionConfigurations = list(
            list(
              DimensionName = "string",
              DimensionValueSource = "MESSAGE_TAG"|"EMAIL_HEADER"|"LINK_TAG",
              DefaultDimensionValue = "string"
            )
          )
        ),
        SnsDestination = list(
          TopicArn = "string"
        ),
        PinpointDestination = list(
          ApplicationArn = "string"
        )
      )
    )
