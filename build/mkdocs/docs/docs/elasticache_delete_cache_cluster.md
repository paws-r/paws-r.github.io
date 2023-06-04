<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_cache_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously provisioned cluster

### Description

Deletes a previously provisioned cluster. `delete_cache_cluster` deletes
all associated cache nodes, node endpoints and the cluster itself. When
you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the cluster; you cannot cancel
or revert this operation.

This operation is not valid for:

-   Redis (cluster mode enabled) clusters

-   Redis (cluster mode disabled) clusters

-   A cluster that is the last read replica of a replication group

-   A cluster that is the primary node of a replication group

-   A node group (shard) that has Multi-AZ mode enabled

-   A cluster from a Redis (cluster mode enabled) replication group

-   A cluster that is not in the `available` state

### Usage

    elasticache_delete_cache_cluster(CacheClusterId,
      FinalSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_cache_cluster_:_CacheClusterId">CacheClusterId</code></td>
<td><p>[required] The cluster identifier for the cluster to be deleted.
This parameter is not case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_delete_cache_cluster_:_FinalSnapshotIdentifier">FinalSnapshotIdentifier</code></td>
<td><p>The user-supplied name of a final cluster snapshot. This is the
unique name that identifies the snapshot. ElastiCache creates the
snapshot, and then deletes the cluster immediately afterward.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheCluster = list(
        CacheClusterId = "string",
        ConfigurationEndpoint = list(
          Address = "string",
          Port = 123
        ),
        ClientDownloadLandingPage = "string",
        CacheNodeType = "string",
        Engine = "string",
        EngineVersion = "string",
        CacheClusterStatus = "string",
        NumCacheNodes = 123,
        PreferredAvailabilityZone = "string",
        PreferredOutpostArn = "string",
        CacheClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        PreferredMaintenanceWindow = "string",
        PendingModifiedValues = list(
          NumCacheNodes = 123,
          CacheNodeIdsToRemove = list(
            "string"
          ),
          EngineVersion = "string",
          CacheNodeType = "string",
          AuthTokenStatus = "SETTING"|"ROTATING",
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
          TransitEncryptionMode = "preferred"|"required"
        ),
        NotificationConfiguration = list(
          TopicArn = "string",
          TopicStatus = "string"
        ),
        CacheSecurityGroups = list(
          list(
            CacheSecurityGroupName = "string",
            Status = "string"
          )
        ),
        CacheParameterGroup = list(
          CacheParameterGroupName = "string",
          ParameterApplyStatus = "string",
          CacheNodeIdsToReboot = list(
            "string"
          )
        ),
        CacheSubnetGroupName = "string",
        CacheNodes = list(
          list(
            CacheNodeId = "string",
            CacheNodeStatus = "string",
            CacheNodeCreateTime = as.POSIXct(
              "2015-01-01"
            ),
            Endpoint = list(
              Address = "string",
              Port = 123
            ),
            ParameterGroupStatus = "string",
            SourceCacheNodeId = "string",
            CustomerAvailabilityZone = "string",
            CustomerOutpostArn = "string"
          )
        ),
        AutoMinorVersionUpgrade = TRUE|FALSE,
        SecurityGroups = list(
          list(
            SecurityGroupId = "string",
            Status = "string"
          )
        ),
        ReplicationGroupId = "string",
        SnapshotRetentionLimit = 123,
        SnapshotWindow = "string",
        AuthTokenEnabled = TRUE|FALSE,
        AuthTokenLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        TransitEncryptionEnabled = TRUE|FALSE,
        AtRestEncryptionEnabled = TRUE|FALSE,
        ARN = "string",
        ReplicationGroupLogDeliveryEnabled = TRUE|FALSE,
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
        NetworkType = "ipv4"|"ipv6"|"dual_stack",
        IpDiscovery = "ipv4"|"ipv6",
        TransitEncryptionMode = "preferred"|"required"
      )
    )

### Request syntax

    svc$delete_cache_cluster(
      CacheClusterId = "string",
      FinalSnapshotIdentifier = "string"
    )
