<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_configuration_set_event_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of event destinations that are associated with a configuration set

### Description

Retrieve a list of event destinations that are associated with a
configuration set.

*Events* include message sends, deliveries, opens, clicks, bounces, and
complaints. *Event destinations* are places that you can send
information about these events to. For example, you can send event data
to Amazon SNS to receive notifications when you receive bounces or
complaints, or you can use Amazon Kinesis Data Firehose to stream data
to Amazon S3 for long-term storage.

### Usage

    sesv2_get_configuration_set_event_destinations(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_configuration_set_event_destinations_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that contains the
event destination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventDestinations = list(
        list(
          Name = "string",
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
    )

### Request syntax

    svc$get_configuration_set_event_destinations(
      ConfigurationSetName = "string"
    )
