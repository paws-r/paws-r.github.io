<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_decrease_node_groups_in_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Decreases the number of node groups in a Global datastore

### Description

Decreases the number of node groups in a Global datastore

### Usage

    elasticache_decrease_node_groups_in_global_replication_group(
      GlobalReplicationGroupId, NodeGroupCount, GlobalNodeGroupsToRemove,
      GlobalNodeGroupsToRetain, ApplyImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_decrease_node_groups_in_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_decrease_node_groups_in_global_replication_group_:_NodeGroupCount">NodeGroupCount</code></td>
<td><p>[required] The number of node groups (shards) that results from
the modification of the shard configuration</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_decrease_node_groups_in_global_replication_group_:_GlobalNodeGroupsToRemove">GlobalNodeGroupsToRemove</code></td>
<td><p>If the value of NodeGroupCount is less than the current number of
node groups (shards), then either NodeGroupsToRemove or
NodeGroupsToRetain is required. GlobalNodeGroupsToRemove is a list of
NodeGroupIds to remove from the cluster. ElastiCache for Redis will
attempt to remove all node groups listed by GlobalNodeGroupsToRemove
from the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_decrease_node_groups_in_global_replication_group_:_GlobalNodeGroupsToRetain">GlobalNodeGroupsToRetain</code></td>
<td><p>If the value of NodeGroupCount is less than the current number of
node groups (shards), then either NodeGroupsToRemove or
NodeGroupsToRetain is required. GlobalNodeGroupsToRetain is a list of
NodeGroupIds to retain from the cluster. ElastiCache for Redis will
attempt to retain all node groups listed by GlobalNodeGroupsToRetain
from the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_decrease_node_groups_in_global_replication_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>[required] Indicates that the shard reconfiguration process
begins immediately. At present, the only permitted value for this
parameter is true.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalReplicationGroup = list(
        GlobalReplicationGroupId = "string",
        GlobalReplicationGroupDescription = "string",
        Status = "string",
        CacheNodeType = "string",
        Engine = "string",
        EngineVersion = "string",
        Members = list(
          list(
            ReplicationGroupId = "string",
            ReplicationGroupRegion = "string",
            Role = "string",
            AutomaticFailover = "enabled"|"disabled"|"enabling"|"disabling",
            Status = "string"
          )
        ),
        ClusterEnabled = TRUE|FALSE,
        GlobalNodeGroups = list(
          list(
            GlobalNodeGroupId = "string",
            Slots = "string"
          )
        ),
        AuthTokenEnabled = TRUE|FALSE,
        TransitEncryptionEnabled = TRUE|FALSE,
        AtRestEncryptionEnabled = TRUE|FALSE,
        ARN = "string"
      )
    )

### Request syntax

    svc$decrease_node_groups_in_global_replication_group(
      GlobalReplicationGroupId = "string",
      NodeGroupCount = 123,
      GlobalNodeGroupsToRemove = list(
        "string"
      ),
      GlobalNodeGroupsToRetain = list(
        "string"
      ),
      ApplyImmediately = TRUE|FALSE
    )
