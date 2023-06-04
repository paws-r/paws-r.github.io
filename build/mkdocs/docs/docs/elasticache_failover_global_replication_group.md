<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_failover_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to failover the primary region to a secondary region

### Description

Used to failover the primary region to a secondary region. The secondary
region will become primary, and all other clusters will become
secondary.

### Usage

    elasticache_failover_global_replication_group(GlobalReplicationGroupId,
      PrimaryRegion, PrimaryReplicationGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_failover_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_failover_global_replication_group_:_PrimaryRegion">PrimaryRegion</code></td>
<td><p>[required] The Amazon region of the primary cluster of the Global
datastore</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_failover_global_replication_group_:_PrimaryReplicationGroupId">PrimaryReplicationGroupId</code></td>
<td><p>[required] The name of the primary replication group</p></td>
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

    svc$failover_global_replication_group(
      GlobalReplicationGroupId = "string",
      PrimaryRegion = "string",
      PrimaryReplicationGroupId = "string"
    )
