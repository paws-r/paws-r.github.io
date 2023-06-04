<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>health_describe_event_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the event types that meet the specified filter criteria

### Description

Returns the event types that meet the specified filter criteria. You can
use this API operation to find information about the Health event, such
as the category, Amazon Web Service, and event code. The metadata for
each event appears in the
[EventType](https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html)
object.

If you don't specify a filter criteria, the API operation returns all
event types, in no particular order.

This API operation uses pagination. Specify the `nextToken` parameter in
the next request to return more results.

### Usage

    health_describe_event_types(filter, locale, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="health_describe_event_types_:_filter">filter</code></td>
<td><p>Values to narrow the results returned.</p></td>
</tr>
<tr class="even">
<td><code id="health_describe_event_types_:_locale">locale</code></td>
<td><p>The locale (language) to return information in. English (en) is
the default and the only supported value at this time.</p></td>
</tr>
<tr class="odd">
<td><code
id="health_describe_event_types_:_nextToken">nextToken</code></td>
<td><p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is
returned in the response. To retrieve the next batch of results, reissue
the search request and include the returned token. When all results have
been returned, the response does not contain a pagination token
value.</p></td>
</tr>
<tr class="even">
<td><code
id="health_describe_event_types_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to return in one batch, between 10
and 100, inclusive.</p>
<p>If you don't specify the <code>maxResults</code> parameter, this
operation returns a maximum of 30 items by default.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTypes = list(
        list(
          service = "string",
          code = "string",
          category = "issue"|"accountNotification"|"scheduledChange"|"investigation"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_event_types(
      filter = list(
        eventTypeCodes = list(
          "string"
        ),
        services = list(
          "string"
        ),
        eventTypeCategories = list(
          "issue"|"accountNotification"|"scheduledChange"|"investigation"
        )
      ),
      locale = "string",
      nextToken = "string",
      maxResults = 123
    )
