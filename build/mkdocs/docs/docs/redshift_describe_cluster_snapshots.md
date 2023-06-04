<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns one or more snapshot objects, which contain metadata about your cluster snapshots

### Description

Returns one or more snapshot objects, which contain metadata about your
cluster snapshots. By default, this operation returns information about
all snapshots of all clusters that are owned by your Amazon Web Services
account. No information is returned for snapshots owned by inactive
Amazon Web Services accounts.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all snapshots that match any combination of the
specified keys and values. For example, if you have `owner` and
`environment` for tag keys, and `admin` and `test` for tag values, all
snapshots that have any combination of those values are returned. Only
snapshots that you own are returned in the response; shared snapshots
are not returned with the tag key and tag value request parameters.

If both tag keys and values are omitted from the request, snapshots are
returned regardless of whether they have tag keys or values associated
with them.

### Usage

    redshift_describe_cluster_snapshots(ClusterIdentifier,
      SnapshotIdentifier, SnapshotArn, SnapshotType, StartTime, EndTime,
      MaxRecords, Marker, OwnerAccount, TagKeys, TagValues, ClusterExists,
      SortingEntities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The identifier of the cluster which generated the requested
snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>The snapshot identifier of the snapshot about which to return
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_SnapshotArn">SnapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot associated with
the message to describe cluster snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_SnapshotType">SnapshotType</code></td>
<td><p>The type of snapshots for which you are requesting information.
By default, snapshots of all types are returned.</p>
<p>Valid Values: <code>automated</code> | <code>manual</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_StartTime">StartTime</code></td>
<td><p>A value that requests only snapshots created at or after the
specified time. The time value is specified in ISO 8601 format. For more
information about ISO 8601, go to the <a
href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: <code
style="white-space: pre;">⁠2012-07-16T18:00:00Z⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_EndTime">EndTime</code></td>
<td><p>A time value that requests only snapshots created at or before
the specified time. The time value is specified in ISO 8601 format. For
more information about ISO 8601, go to the <a
href="https://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
page.</a></p>
<p>Example: <code
style="white-space: pre;">⁠2012-07-16T18:00:00Z⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 500.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_cluster_snapshots</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Web Services returns a
value in the <code>Marker</code> field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the <code>Marker</code> parameter and retrying the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_OwnerAccount">OwnerAccount</code></td>
<td><p>The Amazon Web Services account used to create or copy the
snapshot. Use this field to filter the results to snapshots owned by a
particular account. To describe snapshots you own, either specify your
Amazon Web Services account, or do not specify the parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_TagKeys">TagKeys</code></td>
<td><p>A tag key or keys for which you want to return all matching
cluster snapshots that are associated with the specified key or keys.
For example, suppose that you have snapshots that are tagged with keys
called <code>owner</code> and <code>environment</code>. If you specify
both of these tag keys in the request, Amazon Redshift returns a
response with the snapshots that have either or both of these tag keys
associated with them.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_TagValues">TagValues</code></td>
<td><p>A tag value or values for which you want to return all matching
cluster snapshots that are associated with the specified tag value or
values. For example, suppose that you have snapshots that are tagged
with values called <code>admin</code> and <code>test</code>. If you
specify both of these tag values in the request, Amazon Redshift returns
a response with the snapshots that have either or both of these tag
values associated with them.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_snapshots_:_ClusterExists">ClusterExists</code></td>
<td><p>A value that indicates whether to return snapshots only for an
existing cluster. You can perform table-level restore only by using a
snapshot of an existing cluster, that is, a cluster that has not been
deleted. Values for this parameter work as follows:</p>
<ul>
<li><p>If <code>ClusterExists</code> is set to <code>true</code>,
<code>ClusterIdentifier</code> is required.</p></li>
<li><p>If <code>ClusterExists</code> is set to <code>false</code> and
<code>ClusterIdentifier</code> isn't specified, all snapshots associated
with deleted clusters (orphaned snapshots) are returned.</p></li>
<li><p>If <code>ClusterExists</code> is set to <code>false</code> and
<code>ClusterIdentifier</code> is specified for a deleted cluster,
snapshots associated with that cluster are returned.</p></li>
<li><p>If <code>ClusterExists</code> is set to <code>false</code> and
<code>ClusterIdentifier</code> is specified for an existing cluster, no
snapshots are returned.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_snapshots_:_SortingEntities">SortingEntities</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      Snapshots = list(
        list(
          SnapshotIdentifier = "string",
          ClusterIdentifier = "string",
          SnapshotCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "string",
          Port = 123,
          AvailabilityZone = "string",
          ClusterCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          MasterUsername = "string",
          ClusterVersion = "string",
          EngineFullVersion = "string",
          SnapshotType = "string",
          NodeType = "string",
          NumberOfNodes = 123,
          DBName = "string",
          VpcId = "string",
          Encrypted = TRUE|FALSE,
          KmsKeyId = "string",
          EncryptedWithHSM = TRUE|FALSE,
          AccountsWithRestoreAccess = list(
            list(
              AccountId = "string",
              AccountAlias = "string"
            )
          ),
          OwnerAccount = "string",
          TotalBackupSizeInMegaBytes = 123.0,
          ActualIncrementalBackupSizeInMegaBytes = 123.0,
          BackupProgressInMegaBytes = 123.0,
          CurrentBackupRateInMegaBytesPerSecond = 123.0,
          EstimatedSecondsToCompletion = 123,
          ElapsedTimeInSeconds = 123,
          SourceRegion = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          RestorableNodeTypes = list(
            "string"
          ),
          EnhancedVpcRouting = TRUE|FALSE,
          MaintenanceTrackName = "string",
          ManualSnapshotRetentionPeriod = 123,
          ManualSnapshotRemainingDays = 123,
          SnapshotRetentionStartTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_cluster_snapshots(
      ClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      SnapshotArn = "string",
      SnapshotType = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxRecords = 123,
      Marker = "string",
      OwnerAccount = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      ),
      ClusterExists = TRUE|FALSE,
      SortingEntities = list(
        list(
          Attribute = "SOURCE_TYPE"|"TOTAL_SIZE"|"CREATE_TIME",
          SortOrder = "ASC"|"DESC"
        )
      )
    )
