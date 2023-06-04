<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_increase_node_groups_in_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Increase the number of node groups in the Global datastore

### Description

Increase the number of node groups in the Global datastore

### Usage

    elasticache_increase_node_groups_in_global_replication_group(
      GlobalReplicationGroupId, NodeGroupCount, RegionalConfigurations,
      ApplyImmediately)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_increase_node_groups_in_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_increase_node_groups_in_global_replication_group_:_NodeGroupCount">NodeGroupCount</code></td>
<td><p>[required] The number of node groups you wish to add</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_increase_node_groups_in_global_replication_group_:_RegionalConfigurations">RegionalConfigurations</code></td>
<td><p>Describes the replication group IDs, the Amazon regions where
they are stored and the shard configuration for each that comprise the
Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_increase_node_groups_in_global_replication_group_:_ApplyImmediately">ApplyImmediately</code></td>
<td><p>[required] Indicates that the process begins immediately. At
present, the only permitted value for this parameter is true.</p></td>
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

    svc$increase_node_groups_in_global_replication_group(
      GlobalReplicationGroupId = "string",
      NodeGroupCount = 123,
      RegionalConfigurations = list(
        list(
          ReplicationGroupId = "string",
          ReplicationGroupRegion = "string",
          ReshardingConfiguration = list(
            list(
              NodeGroupId = "string",
              PreferredAvailabilityZones = list(
                "string"
              )
            )
          )
        )
      ),
      ApplyImmediately = TRUE|FALSE
    )
