<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_list_timeline_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists timeline events for the specified incident record

### Description

Lists timeline events for the specified incident record.

### Usage

    ssmincidents_list_timeline_events(filters, incidentRecordArn,
      maxResults, nextToken, sortBy, sortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_list_timeline_events_:_filters">filters</code></td>
<td><p>Filters the timeline events based on the provided conditional
values. You can filter timeline events with the following keys:</p>
<ul>
<li><p><code>eventTime</code></p></li>
<li><p><code>eventType</code></p></li>
</ul>
<p>Note the following when deciding how to use Filters:</p>
<ul>
<li><p>If you don't specify a Filter, the response includes all timeline
events.</p></li>
<li><p>If you specify more than one filter in a single request, the
response returns timeline events that match all filters.</p></li>
<li><p>If you specify a filter with more than one value, the response
returns timeline events that match any of the values provided.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_timeline_events_:_incidentRecordArn">incidentRecordArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident that
includes the timeline event.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_list_timeline_events_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_timeline_events_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_list_timeline_events_:_sortBy">sortBy</code></td>
<td><p>Sort timeline events by the specified key value pair.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_list_timeline_events_:_sortOrder">sortOrder</code></td>
<td><p>Sorts the order of timeline events by the value specified in the
<code>sortBy</code> field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventSummaries = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_timeline_events(
      filters = list(
        list(
          condition = list(
            after = as.POSIXct(
              "2015-01-01"
            ),
            before = as.POSIXct(
              "2015-01-01"
            ),
            equals = list(
              integerValues = list(
                123
              ),
              stringValues = list(
                "string"
              )
            )
          ),
          key = "string"
        )
      ),
      incidentRecordArn = "string",
      maxResults = 123,
      nextToken = "string",
      sortBy = "EVENT_TIME",
      sortOrder = "ASCENDING"|"DESCENDING"
    )
