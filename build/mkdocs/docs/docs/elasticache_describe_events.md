<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to clusters, cache security groups, and cache parameter groups

### Description

Returns events related to clusters, cache security groups, and cache
parameter groups. You can obtain events specific to a particular
cluster, cache security group, or cache parameter group by providing the
name as a parameter.

By default, only the events occurring within the last hour are returned;
however, you can retrieve up to 14 days' worth of events if necessary.

### Usage

    elasticache_describe_events(SourceIdentifier, SourceType, StartTime,
      EndTime, Duration, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_events_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>The identifier of the event source for which events are returned.
If not specified, all sources are included in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format.</p>
<p><strong>Example:</strong> 2017-03-30T07:03:49.555Z</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format.</p>
<p><strong>Example:</strong> 2017-03-30T07:03:49.555Z</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes worth of events to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_events_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_describe_events_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      Events = list(
        list(
          SourceIdentifier = "string",
          SourceType = "cache-cluster"|"cache-parameter-group"|"cache-security-group"|"cache-subnet-group"|"replication-group"|"user"|"user-group",
          Message = "string",
          Date = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_events(
      SourceIdentifier = "string",
      SourceType = "cache-cluster"|"cache-parameter-group"|"cache-security-group"|"cache-subnet-group"|"replication-group"|"user"|"user-group",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Duration = 123,
      MaxRecords = 123,
      Marker = "string"
    )
