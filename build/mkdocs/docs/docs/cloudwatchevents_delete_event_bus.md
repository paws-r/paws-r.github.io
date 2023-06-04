<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_delete_event_bus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified custom event bus or partner event bus

### Description

Deletes the specified custom event bus or partner event bus. All rules
associated with this event bus need to be deleted. You can't delete your
account's default event bus.

### Usage

    cloudwatchevents_delete_event_bus(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_delete_event_bus_:_Name">Name</code></td>
<td><p>[required] The name of the event bus to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event_bus(
      Name = "string"
    )
