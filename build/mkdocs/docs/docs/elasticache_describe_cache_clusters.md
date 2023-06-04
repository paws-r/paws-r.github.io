<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied

### Description

Returns information about all provisioned clusters if no cluster
identifier is specified, or about a specific cache cluster if a cluster
identifier is supplied.

By default, abbreviated information about the clusters is returned. You
can use the optional *ShowCacheNodeInfo* flag to retrieve detailed
information about the cache nodes associated with the clusters. These
details include the DNS address and port for the cache node endpoint.

If the cluster is in the *creating* state, only cluster-level
information is displayed until all of the nodes are successfully
provisioned.

If the cluster is in the *deleting* state, only cluster-level
information is displayed.

If cache nodes are currently being added to the cluster, node endpoint
information and creation time for the additional nodes are not displayed
until they are completely provisioned. When the cluster state is
*available*, the cluster is ready for use.

If cache nodes are currently being removed from the cluster, no endpoint
information for the removed nodes is displayed.

### Usage

    elasticache_describe_cache_clusters(CacheClusterId, MaxRecords, Marker,
      ShowCacheNodeInfo, ShowCacheClustersNotInReplicationGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_cache_clusters_:_CacheClusterId">CacheClusterId</code></td>
<td><p>The user-supplied cluster identifier. If this parameter is
specified, only information about that specific cluster is returned.
This parameter isn't case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_clusters_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_clusters_:_ShowCacheNodeInfo">ShowCacheNodeInfo</code></td>
<td><p>An optional flag that can be included in the
<code>DescribeCacheCluster</code> request to retrieve information about
the individual cache nodes.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_clusters_:_ShowCacheClustersNotInReplicationGroups">ShowCacheClustersNotInReplicationGroups</code></td>
<td><p>An optional flag that can be included in the
<code>DescribeCacheCluster</code> request to show only nodes (API/CLI:
clusters) that are not members of a replication group. In practice, this
mean Memcached and single node Redis clusters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      CacheClusters = list(
        list(
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
    )

### Request syntax

    svc$describe_cache_clusters(
      CacheClusterId = "string",
      MaxRecords = 123,
      Marker = "string",
      ShowCacheNodeInfo = TRUE|FALSE,
      ShowCacheClustersNotInReplicationGroups = TRUE|FALSE
    )
