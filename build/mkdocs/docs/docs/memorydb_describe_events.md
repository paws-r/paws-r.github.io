<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to clusters, security groups, and parameter groups

### Description

Returns events related to clusters, security groups, and parameter
groups. You can obtain events specific to a particular cluster, security
group, or parameter group by providing the name as a parameter. By
default, only the events occurring within the last hour are returned;
however, you can retrieve up to 14 days' worth of events if necessary.

### Usage

    memorydb_describe_events(SourceName, SourceType, StartTime, EndTime,
      Duration, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_describe_events_:_SourceName">SourceName</code></td>
<td><p>The identifier of the event source for which events are returned.
If not specified, all sources are included in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes worth of events to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_events_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
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
          SourceType = "node"|"parameter-group"|"subnet-group"|"cluster"|"user"|"acl",
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
      SourceType = "node"|"parameter-group"|"subnet-group"|"cluster"|"user"|"acl",
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
