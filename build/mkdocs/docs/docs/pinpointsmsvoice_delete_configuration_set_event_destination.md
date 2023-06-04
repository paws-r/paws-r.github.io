<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_delete_configuration_set_event_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an event destination in a configuration set

### Description

Deletes an event destination in a configuration set.

### Usage

    pinpointsmsvoice_delete_configuration_set_event_destination(
      ConfigurationSetName, EventDestinationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_delete_configuration_set_event_destination_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] ConfigurationSetName</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoice_delete_configuration_set_event_destination_:_EventDestinationName">EventDestinationName</code></td>
<td><p>[required] EventDestinationName</p></td>
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
