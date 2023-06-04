<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_failover_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Forces a failover for a DB cluster

### Description

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Read Replicas (read-only
instances) in the DB cluster to be the primary instance (the cluster
writer).

Amazon Neptune will automatically fail over to a Read Replica, if one
exists, when the primary instance fails. You can force a failover when
you want to simulate a failure of a primary instance for testing.
Because each instance in a DB cluster has its own endpoint address, you
will need to clean up and re-establish any existing connections that use
those endpoint addresses when the failover is complete.

### Usage

    neptune_failover_db_cluster(DBClusterIdentifier,
      TargetDBInstanceIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_failover_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>A DB cluster identifier to force a failover for. This parameter
is not case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBCluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_failover_db_cluster_:_TargetDBInstanceIdentifier">TargetDBInstanceIdentifier</code></td>
<td><p>The name of the instance to promote to the primary instance.</p>
<p>You must specify the instance identifier for an Read Replica in the
DB cluster. For example, <code>mydbcluster-replica1</code>.</p></td>
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

    svc$failover_db_cluster(
      DBClusterIdentifier = "string",
      TargetDBInstanceIdentifier = "string"
    )
