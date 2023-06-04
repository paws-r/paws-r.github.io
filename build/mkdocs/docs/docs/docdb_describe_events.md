<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days

### Description

Returns events related to instances, security groups, snapshots, and DB
parameter groups for the past 14 days. You can obtain events specific to
a particular DB instance, security group, snapshot, or parameter group
by providing the name as a parameter. By default, the events of the past
hour are returned.

### Usage

    docdb_describe_events(SourceIdentifier, SourceType, StartTime, EndTime,
      Duration, EventCategories, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_events_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>The identifier of the event source for which events are returned.
If not specified, then all sources are included in the response.</p>
<p>Constraints:</p>
<ul>
<li><p>If <code>SourceIdentifier</code> is provided,
<code>SourceType</code> must also be provided.</p></li>
<li><p>If the source type is <code>DBInstance</code>, a
<code>DBInstanceIdentifier</code> must be provided.</p></li>
<li><p>If the source type is <code>DBSecurityGroup</code>, a
<code>DBSecurityGroupName</code> must be provided.</p></li>
<li><p>If the source type is <code>DBParameterGroup</code>, a
<code>DBParameterGroupName</code> must be provided.</p></li>
<li><p>If the source type is <code>DBSnapshot</code>, a
<code>DBSnapshotIdentifier</code> must be provided.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format.</p>
<p>Example: 2009-07-08T18:00Z</p></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format.</p>
<p>Example: 2009-07-08T18:00Z</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes to retrieve events for.</p>
<p>Default: 60</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_events_:_EventCategories">EventCategories</code></td>
<td><p>A list of event categories that trigger notifications for an
event notification subscription.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_describe_events_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_events_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_describe_events_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
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
          SourceType = "db-instance"|"db-parameter-group"|"db-security-group"|"db-snapshot"|"db-cluster"|"db-cluster-snapshot",
          Message = "string",
          EventCategories = list(
            "string"
          ),
          Date = as.POSIXct(
            "2015-01-01"
          ),
          SourceArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_events(
      SourceIdentifier = "string",
      SourceType = "db-instance"|"db-parameter-group"|"db-security-group"|"db-snapshot"|"db-cluster"|"db-cluster-snapshot",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Duration = 123,
      EventCategories = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
