<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_event</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details of events stored with Amazon Fraud Detector

### Description

Retrieves details of events stored with Amazon Fraud Detector. This
action does not retrieve prediction results.

### Usage

    frauddetector_get_event(eventId, eventTypeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_get_event_:_eventId">eventId</code></td>
<td><p>[required] The ID of the event to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The event type of the event to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      event = list(
        eventId = "string",
        eventTypeName = "string",
        eventTimestamp = "string",
        eventVariables = list(
          "string"
        ),
        currentLabel = "string",
        labelTimestamp = "string",
        entities = list(
          list(
            entityType = "string",
            entityId = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_event(
      eventId = "string",
      eventTypeName = "string"
    )
