<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_delete_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cluster snapshot

### Description

Deletes a cluster snapshot. If the snapshot is being copied, the copy
operation is terminated.

The cluster snapshot must be in the `available` state to be deleted.

### Usage

    docdb_delete_db_cluster_snapshot(DBClusterSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_delete_db_cluster_snapshot_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the cluster snapshot to delete.</p>
<p>Constraints: Must be the name of an existing cluster snapshot in the
<code>available</code> state.</p></td>
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

    svc$delete_db_cluster_snapshot(
      DBClusterSnapshotIdentifier = "string"
    )
