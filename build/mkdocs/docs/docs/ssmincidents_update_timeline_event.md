<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_update_timeline_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a timeline event

### Description

Updates a timeline event. You can update events of type `⁠Custom Event⁠`.

### Usage

    ssmincidents_update_timeline_event(clientToken, eventData, eventId,
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
id="ssmincidents_update_timeline_event_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that a client calls the operation only once
with the specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_timeline_event_:_eventData">eventData</code></td>
<td><p>A short description of the event.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_timeline_event_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event to update. You can use
<code>list_timeline_events</code> to find an event's ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_timeline_event_:_eventReferences">eventReferences</code></td>
<td><p>Updates all existing references in a <code>TimelineEvent</code>.
A reference is an Amazon Web Services resource involved or associated
with the incident. To specify a reference, enter its Amazon Resource
Name (ARN). You can also specify a related item associated with that
resource. For example, to specify an Amazon DynamoDB (DynamoDB) table as
a resource, use its ARN. You can also specify an Amazon CloudWatch
metric associated with the DynamoDB table as a related item.</p>
<p>This update action overrides all existing references. If you want to
keep existing references, you must specify them in the call. If you
don't, this action removes any existing references and enters only new
references.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_timeline_event_:_eventTime">eventTime</code></td>
<td><p>The time that the event occurred.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_timeline_event_:_eventType">eventType</code></td>
<td><p>The type of event. You can update events of type <code
style="white-space: pre;">⁠Custom Event⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_timeline_event_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident that
includes the timeline event.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_timeline_event(
      clientToken = "string",
      eventData = "string",
      eventId = "string",
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
