<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_list_event_predictions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of past predictions

### Description

Gets a list of past predictions. The list can be filtered by detector
ID, detector version ID, event ID, event type, or by specifying a time
period. If filter is not specified, the most recent prediction is
returned.

For example, the following filter lists all past predictions for `xyz`
event type - `⁠{ "eventType":{ "value": "xyz" }” } ⁠`

This is a paginated API. If you provide a null `maxResults`, this action
will retrieve a maximum of 10 records per page. If you provide a
`maxResults`, the value must be between 50 and 100. To get the next page
results, provide the `nextToken` from the response as part of your
request. A null `nextToken` fetches the records from the beginning.

### Usage

    frauddetector_list_event_predictions(eventId, eventType, detectorId,
      detectorVersionId, predictionTimeRange, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_list_event_predictions_:_eventId">eventId</code></td>
<td><p>The event ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_list_event_predictions_:_eventType">eventType</code></td>
<td><p>The event type associated with the detector.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_list_event_predictions_:_detectorId">detectorId</code></td>
<td><p>The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_list_event_predictions_:_detectorVersionId">detectorVersionId</code></td>
<td><p>The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_list_event_predictions_:_predictionTimeRange">predictionTimeRange</code></td>
<td><p>The time period for when the predictions were generated.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_list_event_predictions_:_nextToken">nextToken</code></td>
<td><p>Identifies the next page of results to return. Use the token to
make the call again to retrieve the next page. Keep all other arguments
unchanged. Each pagination token expires after 24 hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_list_event_predictions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of predictions to return for the
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventPredictionSummaries = list(
        list(
          eventId = "string",
          eventTypeName = "string",
          eventTimestamp = "string",
          predictionTimestamp = "string",
          detectorId = "string",
          detectorVersionId = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_event_predictions(
      eventId = list(
        value = "string"
      ),
      eventType = list(
        value = "string"
      ),
      detectorId = list(
        value = "string"
      ),
      detectorVersionId = list(
        value = "string"
      ),
      predictionTimeRange = list(
        startTime = "string",
        endTime = "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
