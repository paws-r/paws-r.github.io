<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_create_timeline_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom timeline event on the incident details page of an incident record

### Description

Creates a custom timeline event on the incident details page of an
incident record. Incident Manager automatically creates timeline events
that mark key moments during an incident. You can create custom timeline
events to mark important events that Incident Manager can detect
automatically.

### Usage

    ssmincidents_create_timeline_event(clientToken, eventData,
      eventReferences, eventTime, eventType, incidentRecordArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_create_timeline_event_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that a client calls the action only once
with the specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_timeline_event_:_eventData">eventData</code></td>
<td><p>[required] A short description of the event.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_timeline_event_:_eventReferences">eventReferences</code></td>
<td><p>Adds one or more references to the <code>TimelineEvent</code>. A
reference is an Amazon Web Services resource involved or associated with
the incident. To specify a reference, enter its Amazon Resource Name
(ARN). You can also specify a related item associated with a resource.
For example, to specify an Amazon DynamoDB (DynamoDB) table as a
resource, use the table's ARN. You can also specify an Amazon CloudWatch
metric associated with the DynamoDB table as a related item.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_timeline_event_:_eventTime">eventTime</code></td>
<td><p>[required] The time that the event occurred.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_timeline_event_:_eventType">eventType</code></td>
<td><p>[required] The type of event. You can create timeline events of
type <code style="white-space: pre;">⁠Custom Event⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_timeline_event_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident record
that the action adds the incident to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventId = "string",
      incidentRecordArn = "string"
    )

### Request syntax

    svc$create_timeline_event(
      clientToken = "string",
      eventData = "string",
      eventReferences = list(
        list(
          relatedItemId = "string",
          resource = "string"
        )
      ),
      eventTime = as.POSIXct(
        "2015-01-01"
      ),
      eventType = "string",
      incidentRecordArn = "string"
    )
