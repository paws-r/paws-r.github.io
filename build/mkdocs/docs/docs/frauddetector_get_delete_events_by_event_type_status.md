<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_delete_events_by_event_type_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status of a DeleteEventsByEventType action

### Description

Retrieves the status of a `delete_events_by_event_type` action.

### Usage

    frauddetector_get_delete_events_by_event_type_status(eventTypeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_delete_events_by_event_type_status_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] Name of event type for which to get the deletion
status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTypeName = "string",
      eventsDeletionStatus = "IN_PROGRESS_INITIALIZING"|"IN_PROGRESS"|"CANCEL_IN_PROGRESS"|"CANCELED"|"COMPLETE"|"FAILED"
    )

### Request syntax

    svc$get_delete_events_by_event_type_status(
      eventTypeName = "string"
    )
