<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_delete_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously provisioned cluster

### Description

Deletes a previously provisioned cluster. When you delete a cluster, all
automated backups for that cluster are deleted and can't be recovered.
Manual DB cluster snapshots of the specified cluster are not deleted.

### Usage

    docdb_delete_db_cluster(DBClusterIdentifier, SkipFinalSnapshot,
      FinalDBSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_delete_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The cluster identifier for the cluster to be deleted.
This parameter isn't case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match an existing <code>DBClusterIdentifier</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_delete_db_cluster_:_SkipFinalSnapshot">SkipFinalSnapshot</code></td>
<td><p>Determines whether a final cluster snapshot is created before the
cluster is deleted. If <code>true</code> is specified, no cluster
snapshot is created. If <code>false</code> is specified, a cluster
snapshot is created before the DB cluster is deleted.</p>
<p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must
specify a <code>FinalDBSnapshotIdentifier</code> parameter.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_delete_db_cluster_:_FinalDBSnapshotIdentifier">FinalDBSnapshotIdentifier</code></td>
<td><p>The cluster snapshot identifier of the new cluster snapshot
created when <code>SkipFinalSnapshot</code> is set to
<code>false</code>.</p>
<p>Specifying this parameter and also setting the
<code>SkipFinalShapshot</code> parameter to <code>true</code> results in
an error.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be from 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBCluster = list(
        AvailabilityZones = list(
          "string"
        ),
        BackupRetentionPeriod = 123,
        DBClusterIdentifier = "string",
        DBClusterParameterGroup = "string",
        DBSubnetGroup = "string",
        Status = "string",
        PercentProgress = "string",
        EarliestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Endpoint = "string",
        ReaderEndpoint = "string",
        MultiAZ = TRUE|FALSE,
        Engine = "string",
        EngineVersion = "string",
        LatestRestorableTime = as.POSIXct(
          "2015-01-01"
        ),
        Port = 123,
        MasterUsername = "string",
        PreferredBackupWindow = "string",
        PreferredMaintenanceWindow = "string",
        ReplicationSourceIdentifier = "string",
        ReadReplicaIdentifiers = list(
          "string"
        ),
        DBClusterMembers = list(
          list(
            DBInstanceIdentifier = "string",
            IsClusterWriter = TRUE|FALSE,
            DBClusterParameterGroupStatus = "string",
            PromotionTier = 123
          )
        ),
        VpcSecurityGroups = list(
          list(
            VpcSecurityGroupId = "string",
            Status = "string"
          )
        ),
        HostedZoneId = "string",
        StorageEncrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DbClusterResourceId = "string",
        DBClusterArn = "string",
        AssociatedRoles = list(
          list(
            RoleArn = "string",
            Status = "string"
          )
        ),
        CloneGroupId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        DeletionProtection = TRUE|FALSE
      )
    )

### Request syntax

    svc$delete_db_cluster(
      DBClusterIdentifier = "string",
      SkipFinalSnapshot = TRUE|FALSE,
      FinalDBSnapshotIdentifier = "string"
    )
