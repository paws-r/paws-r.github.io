<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about events that meet the specified filter criteria

### Description

Returns information about events that meet the specified filter
criteria. Events are returned in a summary form and do not include the
detailed description, any additional metadata that depends on the event
type, or any affected resources. To retrieve that information, use the
`describe_event_details` and `describe_affected_entities` operations.

If no filter criteria are specified, all events are returned. Results
are sorted by `lastModifiedTime`, starting with the most recent event.

-   When you call the `describe_events` operation and specify an entity
    for the `entityValues` parameter, Health might return public events
    that aren't specific to that resource. For example, if you call
    `describe_events` and specify an ID for an Amazon Elastic Compute
    Cloud (Amazon EC2) instance, Health might return events that aren't
    specific to that resource or service. To get events that are
    specific to a service, use the `services` parameter in the `filter`
    object. For more information, see
    [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

-   This API operation uses pagination. Specify the `nextToken`
    parameter in the next request to return more results.

### Usage

    health_describe_events(filter, nextToken, maxResults, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="health_describe_events_:_filter">filter</code></td>
<td><p>Values to narrow the results returned.</p></td>
</tr>
<tr class="even">
<td><code id="health_describe_events_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_events_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p></td>
</tr>
<tr class="even">
<td><code id="health_describe_events_:_locale">locale</code></td>
<td><p>The locale (language) to return information in. English (en) is
the default and the only supported value at this time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      events = list(
        list(
          arn = "string",
          service = "string",
          eventTypeCode = "string",
          eventTypeCategory = "issue"|"accountNotification"|"scheduledChange"|"investigation",
          region = "string",
          availabilityZone = "string",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          statusCode = "open"|"closed"|"upcoming",
          eventScopeCode = "PUBLIC"|"ACCOUNT_SPECIFIC"|"NONE"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_events(
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
      nextToken = "string",
      maxResults = 123,
      locale = "string"
    )
