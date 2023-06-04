<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing replication group

### Description

Deletes an existing replication group. By default, this operation
deletes the entire replication group, including the primary/primaries
and all of the read replicas. If the replication group has only one
primary, you can optionally delete only the read replicas, while
retaining the primary by setting `RetainPrimaryCluster=true`.

When you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the selected resources; you
cannot cancel or revert this operation.

This operation is valid for Redis only.

### Usage

    elasticache_delete_replication_group(ReplicationGroupId,
      RetainPrimaryCluster, FinalSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_replication_group_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The identifier for the cluster to be deleted. This
parameter is not case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_delete_replication_group_:_RetainPrimaryCluster">RetainPrimaryCluster</code></td>
<td><p>If set to <code>true</code>, all of the read replicas are
deleted, but the primary node is retained.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_delete_replication_group_:_FinalSnapshotIdentifier">FinalSnapshotIdentifier</code></td>
<td><p>The name of a final node group (shard) snapshot. ElastiCache
creates the snapshot from the primary node in the cluster, rather than
one of the replicas; this is to ensure that it captures the freshest
data. After the final snapshot is taken, the replication group is
immediately deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplicationGroup = list(
        ReplicationGroupId = "string",
        Description = "string",
        GlobalReplicationGroupInfo = list(
          GlobalReplicationGroupId = "string",
          GlobalReplicationGroupMemberRole = "string"
        ),
        Status = "string",
        PendingModifiedValues = list(
          PrimaryClusterId = "string",
          AutomaticFailoverStatus = "enabled"|"disabled",
          Resharding = list(
            SlotMigration = list(
              ProgressPercentage = 123.0
            )
          ),
          AuthTokenStatus = "SETTING"|"ROTATING",
          UserGroups = list(
            UserGroupIdsToAdd = list(
              "string"
            ),
            UserGroupIdsToRemove = list(
              "string"
            )
          ),
          LogDeliveryConfigurations = list(
            list(
              LogType = "slow-log"|"engine-log",
              DestinationType = "cloudwatch-logs"|"kinesis-firehose",
              DestinationDetails = list(
                CloudWatchLogsDetails = list(
                  LogGroup = "string"
                ),
                KinesisFirehoseDetails = list(
                  DeliveryStream = "string"
                )
              ),
              LogFormat = "text"|"json"
            )
          ),
          TransitEncryptionEnabled = TRUE|FALSE,
          TransitEncryptionMode = "preferred"|"required",
          ClusterMode = "enabled"|"disabled"|"compatible"
        ),
        MemberClusters = list(
          "string"
        ),
        NodeGroups = list(
          list(
            NodeGroupId = "string",
            Status = "string",
            PrimaryEndpoint = list(
              Address = "string",
              Port = 123
            ),
            ReaderEndpoint = list(
              Address = "string",
              Port = 123
            ),
            Slots = "string",
            NodeGroupMembers = list(
              list(
                CacheClusterId = "string",
                CacheNodeId = "string",
                ReadEndpoint = list(
                  Address = "string",
                  Port = 123
                ),
                PreferredAvailabilityZone = "string",
                PreferredOutpostArn = "string",
                CurrentRole = "string"
              )
            )
          )
        ),
        SnapshottingClusterId = "string",
        AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
        MultiAZ = "enabled"|"disabled",
        ConfigurationEndpoint = list(
          Address = "string",
          Port = 123
        ),
        SnapshotRetentionLimit = 123,
        SnapshotWindow = "string",
        ClusterEnabled = TRUE|FALSE,
        CacheNodeType = "string",
        AuthTokenEnabled = TRUE|FALSE,
        AuthTokenLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        TransitEncryptionEnabled = TRUE|FALSE,
        AtRestEncryptionEnabled = TRUE|FALSE,
        MemberClustersOutpostArns = list(
          "string"
        ),
        KmsKeyId = "string",
        ARN = "string",
        UserGroupIds = list(
          "string"
        ),
        LogDeliveryConfigurations = list(
          list(
            LogType = "slow-log"|"engine-log",
            DestinationType = "cloudwatch-logs"|"kinesis-firehose",
            DestinationDetails = list(
              CloudWatchLogsDetails = list(
                LogGroup = "string"
              ),
              KinesisFirehoseDetails = list(
                DeliveryStream = "string"
              )
            ),
            LogFormat = "text"|"json",
            Status = "active"|"enabling"|"modifying"|"disabling"|"error",
            Message = "string"
          )
        ),
        ReplicationGroupCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        DataTiering = "enabled"|"disabled",
        AutoMinorVersionUpgrade = TRUE|FALSE,
        NetworkType = "ipv4"|"ipv6"|"dual_stack",
        IpDiscovery = "ipv4"|"ipv6",
        TransitEncryptionMode = "preferred"|"required",
        ClusterMode = "enabled"|"disabled"|"compatible"
      )
    )

### Request syntax

    svc$delete_replication_group(
      ReplicationGroupId = "string",
      RetainPrimaryCluster = TRUE|FALSE,
      FinalSnapshotIdentifier = "string"
    )
