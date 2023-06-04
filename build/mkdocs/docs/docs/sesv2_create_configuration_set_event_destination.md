<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an event destination

### Description

Create an event destination. *Events* include message sends, deliveries,
opens, clicks, bounces, and complaints. *Event destinations* are places
that you can send information about these events to. For example, you
can send event data to Amazon SNS to receive notifications when you
receive bounces or complaints, or you can use Amazon Kinesis Data
Firehose to stream data to Amazon S3 for long-term storage.

A single configuration set can include more than one event destination.

### Usage

    sesv2_create_configuration_set_event_destination(ConfigurationSetName,
      EventDestinationName, EventDestination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_create_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set .</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] A name that identifies the event destination within
the configuration set.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td><p>[required] An object that defines the event destination.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string",
      EventDestination = list(
        Enabled = TRUE|FALSE,
        MatchingEventTypes = list(
          "SEND"|"REJECT"|"BOUNCE"|"COMPLAINT"|"DELIVERY"|"OPEN"|"CLICK"|"RENDERING_FAILURE"|"DELIVERY_DELAY"|"SUBSCRIPTION"
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
