<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a DB cluster snapshot

### Description

Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
operation is terminated.

The DB cluster snapshot must be in the `available` state to be deleted.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_delete_db_cluster_snapshot(DBClusterSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_cluster_snapshot_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster snapshot to
delete.</p>
<p>Constraints: Must be the name of an existing DB cluster snapshot in
the <code>available</code> state.</p></td>
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

### Request syntax

    svc$delete_db_cluster_snapshot(
      DBClusterSnapshotIdentifier = "string"
    )
