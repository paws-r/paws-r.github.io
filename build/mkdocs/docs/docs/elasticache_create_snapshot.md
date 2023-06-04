<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a copy of an entire cluster or replication group at a specific moment in time

### Description

Creates a copy of an entire cluster or replication group at a specific
moment in time.

This operation is valid for Redis only.

### Usage

    elasticache_create_snapshot(ReplicationGroupId, CacheClusterId,
      SnapshotName, KmsKeyId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_snapshot_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>The identifier of an existing replication group. The snapshot is
created from this replication group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_snapshot_:_CacheClusterId">CacheClusterId</code></td>
<td><p>The identifier of an existing cluster. The snapshot is created
from this cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] A name for the snapshot being created.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The ID of the KMS key used to encrypt the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_create_snapshot_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_snapshot(
      ReplicationGroupId = "string",
      CacheClusterId = "string",
      SnapshotName = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
