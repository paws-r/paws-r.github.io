<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_rebalance_slots_in_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Redistribute slots to ensure uniform distribution across existing shards in the cluster

### Description

Redistribute slots to ensure uniform distribution across existing shards
in the cluster.

### Usage

    elasticache_rebalance_slots_in_global_replication_group(
      GlobalReplicationGroupId, ApplyImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_rebalance_slots_in_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_rebalance_slots_in_global_replication_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>[required] If <code>True</code>, redistribution is applied
immediately.</p></td>
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

    svc$rebalance_slots_in_global_replication_group(
      GlobalReplicationGroupId = "string",
      ApplyImmediately = TRUE|FALSE
    )
