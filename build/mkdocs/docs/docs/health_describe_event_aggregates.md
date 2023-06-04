<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_event_aggregates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of events of each event type (issue, scheduled change, and account notification)

### Description

Returns the number of events of each event type (issue, scheduled
change, and account notification). If no filter is specified, the counts
of all events in each category are returned.

This API operation uses pagination. Specify the `nextToken` parameter in
the next request to return more results.

### Usage

    health_describe_event_aggregates(filter, aggregateField, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_event_aggregates_:_filter">filter</code></td>
<td><p>Values to narrow the results returned.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_event_aggregates_:_aggregateField">aggregateField</code></td>
<td><p>[required] The only currently supported value is
<code>eventTypeCategory</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_event_aggregates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_event_aggregates_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventAggregates = list(
        list(
          aggregateValue = "string",
          count = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_event_aggregates(
      filter = list(
        eventArns = list(
          "string"
        ),
        eventTypeCodes = list(
          "string"
        ),
        services = list(
          "string"
        ),
        regions = list(
          "string"
        ),
        availabilityZones = list(
          "string"
        ),
        startTimes = list(
          list(
            from = as.POSIXct(
              "2015-01-01"
            ),
            to = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        endTimes = list(
          list(
            from = as.POSIXct(
              "2015-01-01"
            ),
            to = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        lastUpdatedTimes = list(
          list(
            from = as.POSIXct(
              "2015-01-01"
            ),
            to = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        entityArns = list(
          "string"
        ),
        entityValues = list(
          "string"
        ),
        eventTypeCategories = list(
          "issue"|"accountNotification"|"scheduledChange"|"investigation"
        ),
        tags = list(
          list(
            "string"
          )
        ),
        eventStatusCodes = list(
          "open"|"closed"|"upcoming"
        )
      ),
      aggregateField = "eventTypeCategory",
      maxResults = 123,
      nextToken = "string"
    )
