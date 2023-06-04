<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about cluster or replication group snapshots

### Description

Returns information about cluster or replication group snapshots. By
default, `describe_snapshots` lists all of your snapshots; it can
optionally describe a single snapshot, or just the snapshots associated
with a particular cache cluster.

This operation is valid for Redis only.

### Usage

    elasticache_describe_snapshots(ReplicationGroupId, CacheClusterId,
      SnapshotName, SnapshotSource, Marker, MaxRecords, ShowNodeGroupConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_snapshots_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>A user-supplied replication group identifier. If this parameter
is specified, only snapshots associated with that specific replication
group are described.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_snapshots_:_CacheClusterId">CacheClusterId</code></td>
<td><p>A user-supplied cluster identifier. If this parameter is
specified, only snapshots associated with that specific cluster are
described.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_snapshots_:_SnapshotName">SnapshotName</code></td>
<td><p>A user-supplied name of the snapshot. If this parameter is
specified, only this snapshot are described.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_snapshots_:_SnapshotSource">SnapshotSource</code></td>
<td><p>If set to <code>system</code>, the output shows snapshots that
were automatically created by ElastiCache. If set to <code>user</code>
the output shows snapshots that were manually created. If omitted, the
output shows both automatically and manually created snapshots.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_snapshots_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 50</p>
<p>Constraints: minimum 20; maximum 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_snapshots_:_ShowNodeGroupConfig">ShowNodeGroupConfig</code></td>
<td><p>A Boolean value which if true, the node group (shard)
configuration is included in the snapshot description.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      Snapshots = list(
        list(
          SnapshotName = "string",
          ReplicationGroupId = "string",
          ReplicationGroupDescription = "string",
          CacheClusterId = "string",
          SnapshotStatus = "string",
          SnapshotSource = "string",
          CacheNodeType = "string",
          Engine = "string",
          EngineVersion = "string",
          NumCacheNodes = 123,
          PreferredAvailabilityZone = "string",
          PreferredOutpostArn = "string",
          CacheClusterCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          PreferredMaintenanceWindow = "string",
          TopicArn = "string",
          Port = 123,
          CacheParameterGroupName = "string",
          CacheSubnetGroupName = "string",
          VpcId = "string",
          AutoMinorVersionUpgrade = TRUE|FALSE,
          SnapshotRetentionLimit = 123,
          SnapshotWindow = "string",
          NumNodeGroups = 123,
          AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
          NodeSnapshots = list(
            list(
              CacheClusterId = "string",
              NodeGroupId = "string",
              CacheNodeId = "string",
              NodeGroupConfiguration = list(
                NodeGroupId = "string",
                Slots = "string",
                ReplicaCount = 123,
                PrimaryAvailabilityZone = "string",
                ReplicaAvailabilityZones = list(
                  "string"
                ),
                PrimaryOutpostArn = "string",
                ReplicaOutpostArns = list(
                  "string"
                )
              ),
              CacheSize = "string",
              CacheNodeCreateTime = as.POSIXct(
                "2015-01-01"
              ),
              SnapshotCreateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          KmsKeyId = "string",
          ARN = "string",
          DataTiering = "enabled"|"disabled"
        )
      )
    )

### Request syntax

    svc$describe_snapshots(
      ReplicationGroupId = "string",
      CacheClusterId = "string",
      SnapshotName = "string",
      SnapshotSource = "string",
      Marker = "string",
      MaxRecords = 123,
      ShowNodeGroupConfig = TRUE|FALSE
    )
