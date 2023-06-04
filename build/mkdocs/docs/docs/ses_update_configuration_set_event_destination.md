<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the event destination of a configuration set

### Description

Updates the event destination of a configuration set. Event destinations
are associated with configuration sets, which enable you to publish
email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or
Amazon Simple Notification Service (Amazon SNS). For information about
using configuration sets, see [Monitoring Your Amazon SES Sending
Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
in the *Amazon SES Developer Guide.*

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be Amazon CloudWatch,
Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
SNS).

You can execute this operation no more than once per second.

### Usage

    ses_update_configuration_set_event_destination(ConfigurationSetName,
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
id="ses_update_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that contains the
event destination that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_update_configuration_set_event_destination_:_EventDestination">EventDestination</code></td>
<td><p>[required] The event destination object that you want to apply to
the specified configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration_set_event_destination(
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
