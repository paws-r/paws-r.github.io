<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a configuration set event destination

### Description

Creates a configuration set event destination.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be CloudWatch, Amazon
Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).

An event destination is the AWS service to which Amazon SES publishes
the email sending events associated with a configuration set. For
information about using configuration sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

You can execute this operation no more than once per second.

### Usage

    ses_create_configuration_set_event_destination(ConfigurationSetName,
      EventDestination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_create_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that the event
destination should be associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_create_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td><p>[required] An object that describes the AWS service that email
sending event information will be published to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set_event_destination(
      ConfigurationSetName = "string",
      EventDestination = list(
        Name = "string",
        Enabled = TRUE|FALSE,
        MatchingEventTypes = list(
          "send"|"reject"|"bounce"|"complaint"|"delivery"|"open"|"click"|"renderingFailure"
        ),
        KinesisFirehoseDestination = list(
          IAMRoleARN = "string",
          DeliveryStreamARN = "string"
        ),
        CloudWatchDestination = list(
          DimensionConfigurations = list(
            list(
              DimensionName = "string",
              DimensionValueSource = "messageTag"|"emailHeader"|"linkTag",
              DefaultDimensionValue = "string"
            )
          )
        ),
        SNSDestination = list(
          TopicARN = "string"
        )
      )
    )
