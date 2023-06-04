<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an event destination

### Description

Delete an event destination.

*Events* include message sends, deliveries, opens, clicks, bounces, and
complaints. *Event destinations* are places that you can send
information about these events to. For example, you can send event data
to Amazon SNS to receive notifications when you receive bounces or
complaints, or you can use Amazon Kinesis Data Firehose to stream data
to Amazon S3 for long-term storage.

### Usage

    sesv2_delete_configuration_set_event_destination(ConfigurationSetName,
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
id="sesv2_delete_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that contains the
event destination to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_delete_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] The name of the event destination to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_set_event_destination(
      ConfigurationSetName = "string",
      EventDestinationName = "string"
    )
