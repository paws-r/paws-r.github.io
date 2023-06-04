<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_delete_timeline_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a timeline event from an incident

### Description

Deletes a timeline event from an incident.

### Usage

    ssmincidents_delete_timeline_event(eventId, incidentRecordArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_delete_timeline_event_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event to update. You can use
<code>list_timeline_events</code> to find an event's ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_delete_timeline_event_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident that
includes the timeline event.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_timeline_event(
      eventId = "string",
      incidentRecordArn = "string"
    )
