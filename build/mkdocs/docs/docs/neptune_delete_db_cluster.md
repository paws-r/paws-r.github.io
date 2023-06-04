<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_delete_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteDBCluster action deletes a previously provisioned DB cluster

### Description

The DeleteDBCluster action deletes a previously provisioned DB cluster.
When you delete a DB cluster, all automated backups for that DB cluster
are deleted and can't be recovered. Manual DB cluster snapshots of the
specified DB cluster are not deleted.

Note that the DB Cluster cannot be deleted if deletion protection is
enabled. To delete it, you must first set its `DeletionProtection` field
to `False`.

### Usage

    neptune_delete_db_cluster(DBClusterIdentifier, SkipFinalSnapshot,
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
id="neptune_delete_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier for the DB cluster to be
deleted. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match an existing DBClusterIdentifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_delete_db_cluster_:_SkipFinalSnapshot">SkipFinalSnapshot</code></td>
<td><p>Determines whether a final DB cluster snapshot is created before
the DB cluster is deleted. If <code>true</code> is specified, no DB
cluster snapshot is created. If <code>false</code> is specified, a DB
cluster snapshot is created before the DB cluster is deleted.</p>
<p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter
if <code>SkipFinalSnapshot</code> is <code>false</code>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_delete_db_cluster_:_FinalDBSnapshotIdentifier">FinalDBSnapshotIdentifier</code></td>
<td><p>The DB cluster snapshot identifier of the new DB cluster snapshot
created when <code>SkipFinalSnapshot</code> is set to
<code>false</code>.</p>
<p>Specifying this parameter and also setting the
<code>SkipFinalShapshot</code> parameter to true results in an
error.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBCluster = list(
        AllocatedStorage = 123,
        AvailabilityZones = list(
          "string"
        ),
        BackupRetentionPeriod = 123,
        CharacterSetName = "string",
        DatabaseName = "string",
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
        DBClusterOptionGroupMemberships = list(
          list(
            DBClusterOptionGroupName = "string",
            Status = "string"
          )
        ),
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
            Status = "string",
            FeatureName = "string"
          )
        ),
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
        CloneGroupId = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        CopyTagsToSnapshot = TRUE|FALSE,
        EnabledCloudwatchLogsExports = list(
          "string"
        ),
        PendingModifiedValues = list(
          PendingCloudwatchLogsExports = list(
            LogTypesToEnable = list(
              "string"
            ),
            LogTypesToDisable = list(
              "string"
            )
          ),
          DBClusterIdentifier = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          EngineVersion = "string",
          BackupRetentionPeriod = 123,
          AllocatedStorage = 123,
          Iops = 123
        ),
        DeletionProtection = TRUE|FALSE,
        CrossAccountClone = TRUE|FALSE,
        AutomaticRestartTime = as.POSIXct(
          "2015-01-01"
        ),
        ServerlessV2ScalingConfiguration = list(
          MinCapacity = 123.0,
          MaxCapacity = 123.0
        ),
        GlobalClusterIdentifier = "string"
      )
    )

### Request syntax

    svc$delete_db_cluster(
      DBClusterIdentifier = "string",
      SkipFinalSnapshot = TRUE|FALSE,
      FinalDBSnapshotIdentifier = "string"
    )
