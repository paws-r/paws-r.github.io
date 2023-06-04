<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_create_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of a cluster

### Description

Creates a snapshot of a cluster.

### Usage

    docdb_create_db_cluster_snapshot(DBClusterSnapshotIdentifier,
      DBClusterIdentifier, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_create_db_cluster_snapshot_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the cluster snapshot. This parameter
is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster-snapshot1</code></p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_db_cluster_snapshot_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster to create a snapshot
for. This parameter is not case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBCluster</code>.</p></li>
</ul>
<p>Example: <code>my-cluster</code></p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_db_cluster_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the cluster snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterSnapshot = list(
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

### Request syntax

    svc$create_db_cluster_snapshot(
      DBClusterSnapshotIdentifier = "string",
      DBClusterIdentifier = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
