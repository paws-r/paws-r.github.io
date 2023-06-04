<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_lookup_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Looks up management events or CloudTrail Insights events that are captured by CloudTrail

### Description

Looks up [management
events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
or [CloudTrail Insights
events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events)
that are captured by CloudTrail. You can look up events that occurred in
a region within the last 90 days. Lookup supports the following
attributes for management events:

-   Amazon Web Services access key

-   Event ID

-   Event name

-   Event source

-   Read only

-   Resource name

-   Resource type

-   User name

Lookup supports the following attributes for Insights events:

-   Event ID

-   Event name

-   Event source

All attributes are optional. The default number of results returned is
50, with a maximum of 50 possible. The response includes a token that
you can use to get the next page of results.

The rate of lookup requests is limited to two per second, per account,
per region. If this limit is exceeded, a throttling error occurs.

### Usage

    cloudtrail_lookup_events(LookupAttributes, StartTime, EndTime,
      EventCategory, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_lookup_events_:_LookupAttributes">LookupAttributes</code></td>
<td><p>Contains a list of lookup attributes. Currently the list can
contain only one item.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_lookup_events_:_StartTime">StartTime</code></td>
<td><p>Specifies that only events that occur after or at the specified
time are returned. If the specified start time is after the specified
end time, an error is returned.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudtrail_lookup_events_:_EndTime">EndTime</code></td>
<td><p>Specifies that only events that occur before or at the specified
time are returned. If the specified end time is before the specified
start time, an error is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_lookup_events_:_EventCategory">EventCategory</code></td>
<td><p>Specifies the event category. If you do not specify an event
category, events of the category are not returned in the response. For
example, if you do not specify <code>insight</code> as the value of
<code>EventCategory</code>, no Insights events are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_lookup_events_:_MaxResults">MaxResults</code></td>
<td><p>The number of events to return. Possible values are 1 through 50.
The default is 50.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_lookup_events_:_NextToken">NextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call. This token must be passed in with the same parameters that
were specified in the original call. For example, if the original call
specified an AttributeKey of 'Username' with a value of 'root', the call
with NextToken should include those same parameters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Events = list(
        list(
          EventId = "string",
          EventName = "string",
          ReadOnly = "string",
          AccessKeyId = "string",
          EventTime = as.POSIXct(
            "2015-01-01"
          ),
          EventSource = "string",
          Username = "string",
          Resources = list(
            list(
              ResourceType = "string",
              ResourceName = "string"
            )
          ),
          CloudTrailEvent = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$lookup_events(
      LookupAttributes = list(
        list(
          AttributeKey = "EventId"|"EventName"|"ReadOnly"|"Username"|"ResourceType"|"ResourceName"|"EventSource"|"AccessKeyId",
          AttributeValue = "string"
        )
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      EventCategory = "insight",
      MaxResults = 123,
      NextToken = "string"
    )
