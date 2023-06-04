<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns events related to DB instances, DB clusters, DB parameter groups, DB security groups, DB snapshots, DB cluster snapshots, and RDS Proxies for the past 14 days

### Description

Returns events related to DB instances, DB clusters, DB parameter
groups, DB security groups, DB snapshots, DB cluster snapshots, and RDS
Proxies for the past 14 days. Events specific to a particular DB
instance, DB cluster, DB parameter group, DB security group, DB
snapshot, DB cluster snapshot group, or RDS Proxy can be obtained by
providing the name as a parameter.

For more information on working with events, see [Monitoring Amazon RDS
events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/working-with-events.html)
in the *Amazon RDS User Guide* and [Monitoring Amazon Aurora
events](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/working-with-events.html)
in the *Amazon Aurora User Guide*.

By default, RDS returns events that were generated in the past hour.

### Usage

    rds_describe_events(SourceIdentifier, SourceType, StartTime, EndTime,
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
id="rds_describe_events_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>The identifier of the event source for which events are returned.
If not specified, then all sources are included in the response.</p>
<p>Constraints:</p>
<ul>
<li><p>If <code>SourceIdentifier</code> is supplied,
<code>SourceType</code> must also be provided.</p></li>
<li><p>If the source type is a DB instance, a
<code>DBInstanceIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB cluster, a
<code>DBClusterIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB parameter group, a
<code>DBParameterGroupName</code> value must be supplied.</p></li>
<li><p>If the source type is a DB security group, a
<code>DBSecurityGroupName</code> value must be supplied.</p></li>
<li><p>If the source type is a DB snapshot, a
<code>DBSnapshotIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB cluster snapshot, a
<code>DBClusterSnapshotIdentifier</code> value must be
supplied.</p></li>
<li><p>If the source type is an RDS Proxy, a <code>DBProxyName</code>
value must be supplied.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_describe_events_:_SourceType">SourceType</code></td>
<td><p>The event source to retrieve events for. If no value is
specified, all events are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_events_:_StartTime">StartTime</code></td>
<td><p>The beginning of the time interval to retrieve events for,
specified in ISO 8601 format. For more information about ISO 8601, go to
the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: 2009-07-08T18:00Z</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_events_:_EndTime">EndTime</code></td>
<td><p>The end of the time interval for which to retrieve events,
specified in ISO 8601 format. For more information about ISO 8601, go to
the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: 2009-07-08T18:00Z</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_events_:_Duration">Duration</code></td>
<td><p>The number of minutes to retrieve events for.</p>
<p>Default: 60</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_events_:_EventCategories">EventCategories</code></td>
<td><p>A list of event categories that trigger notifications for a event
notification subscription.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_events_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_events_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_events_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
DescribeEvents request. If this parameter is specified, the response
includes only records beyond the marker, up to the value specified by
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
          SourceType = "db-instance"|"db-parameter-group"|"db-security-group"|"db-snapshot"|"db-cluster"|"db-cluster-snapshot"|"custom-engine-version"|"db-proxy"|"blue-green-deployment",
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
      SourceType = "db-instance"|"db-parameter-group"|"db-security-group"|"db-snapshot"|"db-cluster"|"db-cluster-snapshot"|"custom-engine-version"|"db-proxy"|"blue-green-deployment",
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
