<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_event_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified event with a new label

### Description

Updates the specified event with a new label.

### Usage

    frauddetector_update_event_label(eventId, eventTypeName, assignedLabel,
      labelTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_event_label_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event associated with the label to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_event_label_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The event type of the event associated with the label
to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_event_label_:_assignedLabel">assignedLabel</code></td>
<td><p>[required] The new label to assign to the event.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_event_label_:_labelTimestamp">labelTimestamp</code></td>
<td><p>[required] The timestamp associated with the label. The timestamp
must be specified using ISO 8601 standard in UTC.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_event_label(
      eventId = "string",
      eventTypeName = "string",
      assignedLabel = "string",
      labelTimestamp = "string"
    )
