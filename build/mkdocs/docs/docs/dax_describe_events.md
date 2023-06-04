<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to DAX clusters and parameter groups

### Description

Returns events related to DAX clusters and parameter groups. You can
obtain events specific to a particular DAX cluster or parameter group by
providing the name as a parameter.

By default, only the events occurring within the last 24 hours are
returned; however, you can retrieve up to 14 days' worth of events if
necessary.

### Usage

    dax_describe_events(SourceName, SourceType, StartTime, EndTime,
      Duration, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_describe_events_:_SourceName">SourceName</code></td>
<td><p>The identifier of the event source for which events will be
returned. If not specified, then all sources are included in the
response.</p></td>
</tr>
<tr class="even">
<td><code id="dax_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="dax_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format.</p></td>
</tr>
<tr class="even">
<td><code id="dax_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format.</p></td>
</tr>
<tr class="odd">
<td><code id="dax_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes' worth of events to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="dax_describe_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p>
<p>The value for <code>MaxResults</code> must be between 20 and
100.</p></td>
</tr>
<tr class="odd">
<td><code id="dax_describe_events_:_NextToken">NextToken</code></td>
<td><p>An optional token returned from a prior request. Use this token
for pagination of results from this action. If this parameter is
specified, the response includes only results beyond the token, up to
the value specified by <code>MaxResults</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Events = list(
        list(
          SourceName = "string",
          SourceType = "CLUSTER"|"PARAMETER_GROUP"|"SUBNET_GROUP",
          Message = "string",
          Date = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_events(
      SourceName = "string",
      SourceType = "CLUSTER"|"PARAMETER_GROUP"|"SUBNET_GROUP",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Duration = 123,
      MaxResults = 123,
      NextToken = "string"
    )
