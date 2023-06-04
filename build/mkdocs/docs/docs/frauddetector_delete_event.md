<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified event

### Description

Deletes the specified event.

When you delete an event, Amazon Fraud Detector permanently deletes that
event and the event data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_event(eventId, eventTypeName, deleteAuditHistory)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_event_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_delete_event_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_delete_event_:_deleteAuditHistory">deleteAuditHistory</code></td>
<td><p>Specifies whether or not to delete any predictions associated
with the event.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event(
      eventId = "string",
      eventTypeName = "string",
      deleteAuditHistory = TRUE|FALSE
    )
