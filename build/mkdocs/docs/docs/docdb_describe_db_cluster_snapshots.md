<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_cluster_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about cluster snapshots

### Description

Returns information about cluster snapshots. This API operation supports
pagination.

### Usage

    docdb_describe_db_cluster_snapshots(DBClusterIdentifier,
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
id="docdb_describe_db_cluster_snapshots_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>The ID of the cluster to retrieve the list of cluster snapshots
for. This parameter can't be used with the
<code>DBClusterSnapshotIdentifier</code> parameter. This parameter is
not case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match the identifier of an existing
<code>DBCluster</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_cluster_snapshots_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>A specific cluster snapshot identifier to describe. This
parameter can't be used with the <code>DBClusterIdentifier</code>
parameter. This value is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match the identifier of an existing
<code>DBClusterSnapshot</code>.</p></li>
<li><p>If this identifier is for an automated snapshot, the
<code>SnapshotType</code> parameter must also be specified.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_cluster_snapshots_:_SnapshotType">SnapshotType</code></td>
<td><p>The type of cluster snapshots to be returned. You can specify one
of the following values:</p>
<ul>
<li><p><code>automated</code> - Return all cluster snapshots that Amazon
DocumentDB has automatically created for your Amazon Web Services
account.</p></li>
<li><p><code>manual</code> - Return all cluster snapshots that you have
manually created for your Amazon Web Services account.</p></li>
<li><p><code>shared</code> - Return all manual cluster snapshots that
have been shared to your Amazon Web Services account.</p></li>
<li><p><code>public</code> - Return all cluster snapshots that have been
marked as public.</p></li>
</ul>
<p>If you don't specify a <code>SnapshotType</code> value, then both
automated and manual cluster snapshots are returned. You can include
shared cluster snapshots with these results by setting the
<code>IncludeShared</code> parameter to <code>true</code>. You can
include public cluster snapshots with these results by setting
the<code>IncludePublic</code> parameter to <code>true</code>.</p>
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
id="docdb_describe_db_cluster_snapshots_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_cluster_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_cluster_snapshots_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_cluster_snapshots_:_IncludeShared">IncludeShared</code></td>
<td><p>Set to <code>true</code> to include shared manual cluster
snapshots from other Amazon Web Services accounts that this Amazon Web
Services account has been given permission to copy or restore, and
otherwise <code>false</code>. The default is
<code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_db_cluster_snapshots_:_IncludePublic">IncludePublic</code></td>
<td><p>Set to <code>true</code> to include manual cluster snapshots that
are public and can be copied or restored by any Amazon Web Services
account, and otherwise <code>false</code>. The default is
<code>false</code>.</p></td>
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
          Status = "string",
          Port = 123,
          VpcId = "string",
          ClusterCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          MasterUsername = "string",
          EngineVersion = "string",
          SnapshotType = "string",
          PercentProgress = 123,
          StorageEncrypted = TRUE|FALSE,
          KmsKeyId = "string",
          DBClusterSnapshotArn = "string",
          SourceDBClusterSnapshotArn = "string"
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
