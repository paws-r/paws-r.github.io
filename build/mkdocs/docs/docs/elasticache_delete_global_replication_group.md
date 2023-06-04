<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_global_replication_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deleting a Global datastore is a two-step process:

### Description

Deleting a Global datastore is a two-step process:

-   First, you must `disassociate_global_replication_group` to remove
    the secondary clusters in the Global datastore.

-   Once the Global datastore contains only the primary cluster, you can
    use the `delete_global_replication_group` API to delete the Global
    datastore while retainining the primary cluster using
    `RetainPrimaryReplicationGroup=true`.

Since the Global Datastore has only a primary cluster, you can delete
the Global Datastore while retaining the primary by setting
`RetainPrimaryReplicationGroup=true`. The primary cluster is never
deleted when deleting a Global Datastore. It can only be deleted when it
no longer is associated with any Global Datastore.

When you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the selected resources; you
cannot cancel or revert this operation.

### Usage

    elasticache_delete_global_replication_group(GlobalReplicationGroupId,
      RetainPrimaryReplicationGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_global_replication_group_:_GlobalReplicationGroupId">GlobalReplicationGroupId</code></td>
<td><p>[required] The name of the Global datastore</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_delete_global_replication_group_:_RetainPrimaryReplicationGroup">RetainPrimaryReplicationGroup</code></td>
<td><p>[required] The primary replication group is retained as a
standalone replication group.</p></td>
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

    svc$delete_global_replication_group(
      GlobalReplicationGroupId = "string",
      RetainPrimaryReplicationGroup = TRUE|FALSE
    )
