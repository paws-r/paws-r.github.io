<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_send_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores events in Amazon Fraud Detector without generating fraud predictions for those events

### Description

Stores events in Amazon Fraud Detector without generating fraud
predictions for those events. For example, you can use `send_event` to
upload a historical dataset, which you can then later use to train a
model.

### Usage

    frauddetector_send_event(eventId, eventTypeName, eventTimestamp,
      eventVariables, assignedLabel, labelTimestamp, entities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_send_event_:_eventId">eventId</code></td>
<td><p>[required] The event ID to upload.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_send_event_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The event type name of the event.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_send_event_:_eventTimestamp">eventTimestamp</code></td>
<td><p>[required] The timestamp that defines when the event under
evaluation occurred. The timestamp must be specified using ISO 8601
standard in UTC.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_send_event_:_eventVariables">eventVariables</code></td>
<td><p>[required] Names of the event type's variables you defined in
Amazon Fraud Detector to represent data elements and their corresponding
values for the event you are sending for evaluation.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_send_event_:_assignedLabel">assignedLabel</code></td>
<td><p>The label to associate with the event. Required if specifying
<code>labelTimestamp</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_send_event_:_labelTimestamp">labelTimestamp</code></td>
<td><p>The timestamp associated with the label. Required if specifying
<code>assignedLabel</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_send_event_:_entities">entities</code></td>
<td><p>[required] An array of entities.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_event(
      eventId = "string",
      eventTypeName = "string",
      eventTimestamp = "string",
      eventVariables = list(
        "string"
      ),
      assignedLabel = "string",
      labelTimestamp = "string",
      entities = list(
        list(
          entityType = "string",
          entityId = "string"
        )
      )
    )
