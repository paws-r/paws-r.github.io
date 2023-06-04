<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_failover_db_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Forces a failover for a cluster

### Description

Forces a failover for a cluster.

A failover for a cluster promotes one of the Amazon DocumentDB replicas
(read-only instances) in the cluster to be the primary instance (the
cluster writer).

If the primary instance fails, Amazon DocumentDB automatically fails
over to an Amazon DocumentDB replica, if one exists. You can force a
failover when you want to simulate a failure of a primary instance for
testing.

### Usage

    docdb_failover_db_cluster(DBClusterIdentifier,
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
id="docdb_failover_db_cluster_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>A cluster identifier to force a failover for. This parameter is
not case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBCluster</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_failover_db_cluster_:_TargetDBInstanceIdentifier">TargetDBInstanceIdentifier</code></td>
<td><p>The name of the instance to promote to the primary instance.</p>
<p>You must specify the instance identifier for an Amazon DocumentDB
replica in the cluster. For example,
<code>mydbcluster-replica1</code>.</p></td>
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

    svc$failover_db_cluster(
      DBClusterIdentifier = "string",
      TargetDBInstanceIdentifier = "string"
    )
