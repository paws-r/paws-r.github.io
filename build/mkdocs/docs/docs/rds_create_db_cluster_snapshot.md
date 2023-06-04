<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of a DB cluster

### Description

Creates a snapshot of a DB cluster.

For more information on Amazon Aurora, see [What is Amazon
Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the *Amazon Aurora User Guide*.

For more information on Multi-AZ DB clusters, see [Multi-AZ DB cluster
deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_create_db_cluster_snapshot(DBClusterSnapshotIdentifier,
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
id="rds_create_db_cluster_snapshot_:_DBClusterSnapshotIdentifier">DBClusterSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster snapshot. This
parameter is stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul>
<p>Example: <code>my-cluster1-snapshot1</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_cluster_snapshot_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The identifier of the DB cluster to create a snapshot
for. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBCluster.</p></li>
</ul>
<p>Example: <code>my-cluster1</code></p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_cluster_snapshot_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the DB cluster snapshot.</p></td>
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
