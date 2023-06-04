<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days

### Description

Returns events related to clusters, security groups, snapshots, and
parameter groups for the past 14 days. Events specific to a particular
cluster, security group, snapshot or parameter group can be obtained by
providing the name as a parameter. By default, the past hour of events
are returned.

### Usage

    redshift_describe_events(SourceIdentifier, SourceType, StartTime,
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
id="redshift_describe_events_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>The identifier of the event source for which events will be
returned. If this parameter is not specified, then all sources are
included in the response.</p>
<p>Constraints:</p>
<p>If <em>SourceIdentifier</em> is supplied, <em>SourceType</em> must
also be provided.</p>
<ul>
<li><p>Specify a cluster identifier when <em>SourceType</em> is
<code>cluster</code>.</p></li>
<li><p>Specify a cluster security group name when <em>SourceType</em> is
<code>cluster-security-group</code>.</p></li>
<li><p>Specify a cluster parameter group name when <em>SourceType</em>
is <code>cluster-parameter-group</code>.</p></li>
<li><p>Specify a cluster snapshot identifier when <em>SourceType</em> is
<code>cluster-snapshot</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p>
<p>Constraints:</p>
<p>If <em>SourceType</em> is supplied, <em>SourceIdentifier</em> must
also be provided.</p>
<ul>
<li><p>Specify <code>cluster</code> when <em>SourceIdentifier</em> is a
cluster identifier.</p></li>
<li><p>Specify <code>cluster-security-group</code> when
<em>SourceIdentifier</em> is a cluster security group name.</p></li>
<li><p>Specify <code>cluster-parameter-group</code> when
<em>SourceIdentifier</em> is a cluster parameter group name.</p></li>
<li><p>Specify <code>cluster-snapshot</code> when
<em>SourceIdentifier</em> is a cluster snapshot identifier.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format. For more information about ISO 8601, go to
the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: <code
style="white-space: pre;">⁠2009-07-08T18:00Z⁠</code></p></td>
</tr>
<tr class="even">
<td><code id="redshift_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format. For more information about ISO 8601, go to
the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: <code
style="white-space: pre;">⁠2009-07-08T18:00Z⁠</code></p></td>
</tr>
<tr class="odd">
<td><code id="redshift_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes prior to the time of the request for which
to retrieve events. For example, if the request is sent at 18:00 and you
specify a duration of 60, then only events which have occurred after
17:00 will be returned.</p>
<p>Default: <code>60</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_events_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_describe_events_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_events</code> request exceed the value specified in
<code>MaxRecords</code>, Amazon Web Services returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
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
          SourceType = "cluster"|"cluster-parameter-group"|"cluster-security-group"|"cluster-snapshot"|"scheduled-action",
          Message = "string",
          EventCategories = list(
            "string"
          ),
          Severity = "string",
          Date = as.POSIXct(
            "2015-01-01"
          ),
          EventId = "string"
        )
      )
    )

### Request syntax

    svc$describe_events(
      SourceIdentifier = "string",
      SourceType = "cluster"|"cluster-parameter-group"|"cluster-security-group"|"cluster-snapshot"|"scheduled-action",
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
