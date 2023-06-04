<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_disassociate_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a secondary cluster from the Global datastore using the Global datastore name

### Description

Remove a secondary cluster from the Global datastore using the Global
datastore name. The secondary cluster will no longer receive updates
from the primary cluster, but will remain as a standalone cluster in
that Amazon region.

### Usage

    elasticache_disassociate_global_replication_group(
      GlobalReplicationGroupId, ReplicationGroupId, ReplicationGroupRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_disassociate_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_disassociate_global_replication_group_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>[required] The name of the secondary cluster you wish to remove
from the Global datastore</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_disassociate_global_replication_group_:_ReplicationGroupRegion">ReplicationGroupRegion</code></td>
<td><p>[required] The Amazon region of secondary cluster you wish to
remove from the Global datastore</p></td>
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

    svc$disassociate_global_replication_group(
      GlobalReplicationGroupId = "string",
      ReplicationGroupId = "string",
      ReplicationGroupRegion = "string"
    )
