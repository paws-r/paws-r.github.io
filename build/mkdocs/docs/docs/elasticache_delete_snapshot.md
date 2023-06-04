<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing snapshot

### Description

Deletes an existing snapshot. When you receive a successful response
from this operation, ElastiCache immediately begins deleting the
snapshot; you cannot cancel or revert this operation.

This operation is valid for Redis only.

### Usage

    elasticache_delete_snapshot(SnapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] The name of the snapshot to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Snapshot = list(
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

### Request syntax

    svc$delete_snapshot(
      SnapshotName = "string"
    )
