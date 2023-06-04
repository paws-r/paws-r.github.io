<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_replication_group_shard_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among existing shards

### Description

Modifies a replication group's shards (node groups) by allowing you to
add shards, remove shards, or rebalance the keyspaces among existing
shards.

### Usage

    elasticache_modify_replication_group_shard_configuration(
      ReplicationGroupId, NodeGroupCount, ApplyImmediately,
      ReshardingConfiguration, NodeGroupsToRemove, NodeGroupsToRetain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The name of the Redis (cluster mode enabled) cluster
(replication group) on which the shards are to be configured.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_NodeGroupCount">NodeGroupCount</code></td>
<td><p>[required] The number of node groups (shards) that results from
the modification of the shard configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>[required] Indicates that the shard reconfiguration process
begins immediately. At present, the only permitted value for this
parameter is <code>true</code>.</p>
<p>Value: true</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_ReshardingConfiguration">ReshardingConfiguration</code></td>
<td><p>Specifies the preferred availability zones for each node group in
the cluster. If the value of <code>NodeGroupCount</code> is greater than
the current number of node groups (shards), you can use this parameter
to specify the preferred availability zones of the cluster's shards. If
you omit this parameter ElastiCache selects availability zones for
you.</p>
<p>You can specify this parameter only if the value of
<code>NodeGroupCount</code> is greater than the current number of node
groups (shards).</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_NodeGroupsToRemove">NodeGroupsToRemove</code></td>
<td><p>If the value of <code>NodeGroupCount</code> is less than the
current number of node groups (shards), then either
<code>NodeGroupsToRemove</code> or <code>NodeGroupsToRetain</code> is
required. <code>NodeGroupsToRemove</code> is a list of
<code>NodeGroupId</code>s to remove from the cluster.</p>
<p>ElastiCache for Redis will attempt to remove all node groups listed
by <code>NodeGroupsToRemove</code> from the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_replication_group_shard_configuration_:_NodeGroupsToRetain">NodeGroupsToRetain</code></td>
<td><p>If the value of <code>NodeGroupCount</code> is less than the
current number of node groups (shards), then either
<code>NodeGroupsToRemove</code> or <code>NodeGroupsToRetain</code> is
required. <code>NodeGroupsToRetain</code> is a list of
<code>NodeGroupId</code>s to retain in the cluster.</p>
<p>ElastiCache for Redis will attempt to remove all node groups except
those listed by <code>NodeGroupsToRetain</code> from the
cluster.</p></td>
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

    svc$modify_replication_group_shard_configuration(
      ReplicationGroupId = "string",
      NodeGroupCount = 123,
      ApplyImmediately = TRUE|FALSE,
      ReshardingConfiguration = list(
        list(
          NodeGroupId = "string",
          PreferredAvailabilityZones = list(
            "string"
          )
        )
      ),
      NodeGroupsToRemove = list(
        "string"
      ),
      NodeGroupsToRetain = list(
        "string"
      )
    )
