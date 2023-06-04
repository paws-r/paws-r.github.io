<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_replication_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a particular replication group

### Description

Returns information about a particular replication group. If no
identifier is specified, `describe_replication_groups` returns
information about all replication groups.

This operation is valid for Redis only.

### Usage

    elasticache_describe_replication_groups(ReplicationGroupId, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_replication_groups_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>The identifier for the replication group to be described. This
parameter is not case sensitive.</p>
<p>If you do not specify this parameter, information about all
replication groups is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_replication_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_replication_groups_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReplicationGroups = list(
        list(
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
    )

### Request syntax

    svc$describe_replication_groups(
      ReplicationGroupId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
