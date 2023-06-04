<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_db_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB cluster snapshots

### Description

Returns information about DB cluster snapshots. This API action supports
pagination.

### Usage

    neptune_describe_db_cluster_snapshots(DBClusterIdentifier,
      DBClusterSnapshotIdentifier, SnapshotType, Filters, MaxRecords, Marker,
      IncludeShared, IncludePublic)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_describe_db_cluster_snapshots_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The ID of the DB cluster to retrieve the list of DB cluster
snapshots for. This parameter can't be used in conjunction with the
<code>DBClusterSnapshotIdentifier</code> parameter. This parameter is
not case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBCluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_cluster_snapshots_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>A specific DB cluster snapshot identifier to describe. This
parameter can't be used in conjunction with the
<code>DBClusterIdentifier</code> parameter. This value is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBClusterSnapshot.</p></li>
<li><p>If this identifier is for an automated snapshot, the
<code>SnapshotType</code> parameter must also be specified.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_cluster_snapshots_:_SnapshotType">SnapshotType</code></td>
<td><p>The type of DB cluster snapshots to be returned. You can specify
one of the following values:</p>
<ul>
<li><p><code>automated</code> - Return all DB cluster snapshots that
have been automatically taken by Amazon Neptune for my Amazon
account.</p></li>
<li><p><code>manual</code> - Return all DB cluster snapshots that have
been taken by my Amazon account.</p></li>
<li><p><code>shared</code> - Return all manual DB cluster snapshots that
have been shared to my Amazon account.</p></li>
<li><p><code>public</code> - Return all DB cluster snapshots that have
been marked as public.</p></li>
</ul>
<p>If you don't specify a <code>SnapshotType</code> value, then both
automated and manual DB cluster snapshots are returned. You can include
shared DB cluster snapshots with these results by setting the
<code>IncludeShared</code> parameter to <code>true</code>. You can
include public DB cluster snapshots with these results by setting the
<code>IncludePublic</code> parameter to <code>true</code>.</p>
<p>The <code>IncludeShared</code> and <code>IncludePublic</code>
parameters don't apply for <code>SnapshotType</code> values of
<code>manual</code> or <code>automated</code>. The
<code>IncludePublic</code> parameter doesn't apply when
<code>SnapshotType</code> is set to <code>shared</code>. The
<code>IncludeShared</code> parameter doesn't apply when
<code>SnapshotType</code> is set to <code>public</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_cluster_snapshots_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_cluster_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_cluster_snapshots_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_cluster_snapshots</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_cluster_snapshots_:_IncludeShared">IncludeShared</code></td>
<td><p>True to include shared manual DB cluster snapshots from other
Amazon accounts that this Amazon account has been given permission to
copy or restore, and otherwise false. The default is
<code>false</code>.</p>
<p>You can give an Amazon account permission to restore a manual DB
cluster snapshot from another Amazon account by the
<code>modify_db_cluster_snapshot_attribute</code> API action.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_cluster_snapshots_:_IncludePublic">IncludePublic</code></td>
<td><p>True to include manual DB cluster snapshots that are public and
can be copied or restored by any Amazon account, and otherwise false.
The default is <code>false</code>. The default is false.</p>
<p>You can share a manual DB cluster snapshot as public by using the
<code>modify_db_cluster_snapshot_attribute</code> API action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBClusterSnapshots = list(
        list(
          AvailabilityZones = list(
            "string"
          ),
          DBClusterSnapshotIdentifier = "string",
          DBClusterIdentifier = "string",
          SnapshotCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Engine = "string",
          AllocatedStorage = 123,
          Status = "string",
          Port = 123,
          VpcId = "string",
          ClusterCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          MasterUsername = "string",
          EngineVersion = "string",
          LicenseModel = "string",
          SnapshotType = "string",
          PercentProgress = 123,
          StorageEncrypted = TRUE|FALSE,
          KmsKeyId = "string",
          DBClusterSnapshotArn = "string",
          SourceDBClusterSnapshotArn = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_db_cluster_snapshots(
      DBClusterIdentifier = "string",
      DBClusterSnapshotIdentifier = "string",
      SnapshotType = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string",
      IncludeShared = TRUE|FALSE,
      IncludePublic = TRUE|FALSE
    )
