<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_events_by_event_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all events of a particular event type

### Description

Deletes all events of a particular event type.

### Usage

    frauddetector_delete_events_by_event_type(eventTypeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_events_by_event_type_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTypeName = "string",
      eventsDeletionStatus = "string"
    )

### Request syntax

    svc$delete_events_by_event_type(
      eventTypeName = "string"
    )
