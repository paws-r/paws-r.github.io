<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_events_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about events across your organization in Organizations

### Description

Returns information about events across your organization in
Organizations. You can use the`filters` parameter to specify the events
that you want to return. Events are returned in a summary form and don't
include the affected accounts, detailed description, any additional
metadata that depends on the event type, or any affected resources. To
retrieve that information, use the following operations:

-   `describe_affected_accounts_for_organization`

-   `describe_event_details_for_organization`

-   `describe_affected_entities_for_organization`

If you don't specify a `filter`, the `DescribeEventsForOrganizations`
returns all events across your organization. Results are sorted by
`lastModifiedTime`, starting with the most recent event.

For more information about the different types of Health events, see
[Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

Before you can call this operation, you must first enable Health to work
with Organizations. To do this, call the
`enable_health_service_access_for_organization` operation from your
organization's management account.

This API operation uses pagination. Specify the `nextToken` parameter in
the next request to return more results.

### Usage

    health_describe_events_for_organization(filter, nextToken, maxResults,
      locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="health_describe_events_for_organization_:_filter">filter</code></td>
<td><p>Values to narrow the results returned.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_events_for_organization_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_events_for_organization_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_events_for_organization_:_locale">locale</code></td>
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
          eventScopeCode = "PUBLIC"|"ACCOUNT_SPECIFIC"|"NONE",
          region = "string",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          statusCode = "open"|"closed"|"upcoming"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_events_for_organization(
      filter = list(
        eventTypeCodes = list(
          "string"
        ),
        awsAccountIds = list(
          "string"
        ),
        services = list(
          "string"
        ),
        regions = list(
          "string"
        ),
        startTime = list(
          from = as.POSIXct(
            "2015-01-01"
          ),
          to = as.POSIXct(
            "2015-01-01"
          )
        ),
        endTime = list(
          from = as.POSIXct(
            "2015-01-01"
          ),
          to = as.POSIXct(
            "2015-01-01"
          )
        ),
        lastUpdatedTime = list(
          from = as.POSIXct(
            "2015-01-01"
          ),
          to = as.POSIXct(
            "2015-01-01"
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
        eventStatusCodes = list(
          "open"|"closed"|"upcoming"
        )
      ),
      nextToken = "string",
      maxResults = 123,
      locale = "string"
    )
