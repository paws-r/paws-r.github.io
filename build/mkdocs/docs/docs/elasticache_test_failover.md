<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_test_failover</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents the input of a TestFailover operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console)

### Description

Represents the input of a `test_failover` operation which test automatic
failover on a specified node group (called shard in the console) in a
replication group (called cluster in the console).

This API is designed for testing the behavior of your application in
case of ElastiCache failover. It is not designed to be an operational
tool for initiating a failover to overcome a problem you may have with
the cluster. Moreover, in certain conditions such as large-scale
operational events, Amazon may block this API.

**Note the following**

-   A customer can use this operation to test automatic failover on up
    to 5 shards (called node groups in the ElastiCache API and
    Amazon CLI) in any rolling 24-hour period.

-   If calling this operation on shards in different clusters (called
    replication groups in the API and CLI), the calls can be made
    concurrently.

-   If calling this operation multiple times on different shards in the
    same Redis (cluster mode enabled) replication group, the first node
    replacement must complete before a subsequent call can be made.

-   To determine whether the node replacement is complete you can check
    Events using the Amazon ElastiCache console, the Amazon CLI, or the
    ElastiCache API. Look for the following automatic failover related
    events, listed here in order of occurrance:

    1.  Replication group message:
        `⁠Test Failover API called for node group <node-group-id>⁠`

    2.  Cache cluster message:
        `⁠Failover from primary node <primary-node-id> to replica node <node-id> completed⁠`

    3.  Replication group message:
        `⁠Failover from primary node <primary-node-id> to replica node <node-id> completed⁠`

    4.  Cache cluster message: `⁠Recovering cache nodes <node-id>⁠`

    5.  Cache cluster message:
        `⁠Finished recovery for cache nodes <node-id>⁠`

    For more information see:

    -   [Viewing ElastiCache
        Events](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html)
        in the *ElastiCache User Guide*

    -   `describe_events` in the ElastiCache API Reference

Also see, [Testing
Multi-AZ](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test)
in the *ElastiCache User Guide*.

### Usage

    elasticache_test_failover(ReplicationGroupId, NodeGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_test_failover_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The name of the replication group (console: cluster)
whose automatic failover is being tested by this operation.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_test_failover_:_NodeGroupId">NodeGroupId</code></td>
<td><p>[required] The name of the node group (called shard in the
console) in this replication group on which automatic failover is to be
tested. You may test automatic failover on up to 5 node groups in any
rolling 24-hour period.</p></td>
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

    svc$test_failover(
      ReplicationGroupId = "string",
      NodeGroupId = "string"
    )
