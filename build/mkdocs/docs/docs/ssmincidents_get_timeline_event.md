<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_get_timeline_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a timeline event based on its ID and incident record

### Description

Retrieves a timeline event based on its ID and incident record.

### Usage

    ssmincidents_get_timeline_event(eventId, incidentRecordArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_get_timeline_event_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event. You can get an event's ID when
you create it, or by using <code>list_timeline_events</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_get_timeline_event_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident that
includes the timeline event.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      event = list(
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
        eventUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        incidentRecordArn = "string"
      )
    )

### Request syntax

    svc$get_timeline_event(
      eventId = "string",
      incidentRecordArn = "string"
    )
