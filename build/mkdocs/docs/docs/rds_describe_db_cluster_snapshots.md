<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB cluster snapshots

### Description

Returns information about DB cluster snapshots. This API action supports
pagination.

For more information on Amazon Aurora DB clusters, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_describe_db_cluster_snapshots(DBClusterIdentifier,
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
id="rds_describe_db_cluster_snapshots_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The ID of the DB cluster to retrieve the list of DB cluster
snapshots for. This parameter can't be used in conjunction with the
<code>DBClusterSnapshotIdentifier</code> parameter. This parameter isn't
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBCluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_snapshots_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
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
id="rds_describe_db_cluster_snapshots_:_SnapshotType">SnapshotType</code></td>
<td><p>The type of DB cluster snapshots to be returned. You can specify
one of the following values:</p>
<ul>
<li><p><code>automated</code> - Return all DB cluster snapshots that
have been automatically taken by Amazon RDS for my Amazon Web Services
account.</p></li>
<li><p><code>manual</code> - Return all DB cluster snapshots that have
been taken by my Amazon Web Services account.</p></li>
<li><p><code>shared</code> - Return all manual DB cluster snapshots that
have been shared to my Amazon Web Services account.</p></li>
<li><p><code>public</code> - Return all DB cluster snapshots that have
been marked as public.</p></li>
</ul>
<p>If you don't specify a <code>SnapshotType</code> value, then both
automated and manual DB cluster snapshots are returned. You can include
shared DB cluster snapshots with these results by enabling the
<code>IncludeShared</code> parameter. You can include public DB cluster
snapshots with these results by enabling the <code>IncludePublic</code>
parameter.</p>
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
id="rds_describe_db_cluster_snapshots_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB cluster snapshots to
describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts DB cluster identifiers and
DB cluster Amazon Resource Names (ARNs).</p></li>
<li><p><code>db-cluster-snapshot-id</code> - Accepts DB cluster snapshot
identifiers.</p></li>
<li><p><code>snapshot-type</code> - Accepts types of DB cluster
snapshots.</p></li>
<li><p><code>engine</code> - Accepts names of database engines.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so you can
retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_snapshots_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_cluster_snapshots</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_cluster_snapshots_:_IncludeShared">IncludeShared</code></td>
<td><p>A value that indicates whether to include shared manual DB
cluster snapshots from other Amazon Web Services accounts that this
Amazon Web Services account has been given permission to copy or
restore. By default, these snapshots are not included.</p>
<p>You can give an Amazon Web Services account permission to restore a
manual DB cluster snapshot from another Amazon Web Services account by
the <code>modify_db_cluster_snapshot_attribute</code> API
action.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_cluster_snapshots_:_IncludePublic">IncludePublic</code></td>
<td><p>A value that indicates whether to include manual DB cluster
snapshots that are public and can be copied or restored by any Amazon
Web Services account. By default, the public snapshots are not
included.</p>
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
          EngineMode = "string",
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
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          DBSystemId = "string",
          StorageType = "string"
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
