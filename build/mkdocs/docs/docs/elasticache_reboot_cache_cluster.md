<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_reboot_cache_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots some, or all, of the cache nodes within a provisioned cluster

### Description

Reboots some, or all, of the cache nodes within a provisioned cluster.
This operation applies any modified cache parameter groups to the
cluster. The reboot operation takes place as soon as possible, and
results in a momentary outage to the cluster. During the reboot, the
cluster status is set to REBOOTING.

The reboot causes the contents of the cache (for each cache node being
rebooted) to be lost.

When the reboot is complete, a cluster event is created.

Rebooting a cluster is currently supported on Memcached and Redis
(cluster mode disabled) clusters. Rebooting is not supported on Redis
(cluster mode enabled) clusters.

If you make changes to parameters that require a Redis (cluster mode
enabled) cluster reboot for the changes to be applied, see [Rebooting a
Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes.rebooting.html)
for an alternate process.

### Usage

    elasticache_reboot_cache_cluster(CacheClusterId, CacheNodeIdsToReboot)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_reboot_cache_cluster_:_CacheClusterId">CacheClusterId</code></td>
<td><p>[required] The cluster identifier. This parameter is stored as a
lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_reboot_cache_cluster_:_CacheNodeIdsToReboot">CacheNodeIdsToReboot</code></td>
<td><p>[required] A list of cache node IDs to reboot. A node ID is a
numeric identifier (0001, 0002, etc.). To reboot an entire cluster,
specify all of the cache node IDs.</p></td>
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

    svc$reboot_cache_cluster(
      CacheClusterId = "string",
      CacheNodeIdsToReboot = list(
        "string"
      )
    )
