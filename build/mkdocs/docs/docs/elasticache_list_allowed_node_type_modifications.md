<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_list_allowed_node_type_modifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available node types that you can scale your Redis cluster's or replication group's current node type

### Description

Lists all available node types that you can scale your Redis cluster's
or replication group's current node type.

When you use the `modify_cache_cluster` or `modify_replication_group`
operations to scale your cluster or replication group, the value of the
`CacheNodeType` parameter must be one of the node types returned by this
operation.

### Usage

    elasticache_list_allowed_node_type_modifications(CacheClusterId,
      ReplicationGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_list_allowed_node_type_modifications_:_CacheClusterId">CacheClusterId</code></td>
<td><p>The name of the cluster you want to scale up to a larger node
instanced type. ElastiCache uses the cluster id to identify the current
node type of this cluster and from that to create a list of node types
you can scale up to.</p>
<p>You must provide a value for either the <code>CacheClusterId</code>
or the <code>ReplicationGroupId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_list_allowed_node_type_modifications_:_ReplicationGroupId">ReplicationGroupId</code></td>
<td><p>The name of the replication group want to scale up to a larger
node type. ElastiCache uses the replication group id to identify the
current node type being used by this replication group, and from that to
create a list of node types you can scale up to.</p>
<p>You must provide a value for either the <code>CacheClusterId</code>
or the <code>ReplicationGroupId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScaleUpModifications = list(
        "string"
      ),
      ScaleDownModifications = list(
        "string"
      )
    )

### Request syntax

    svc$list_allowed_node_type_modifications(
      CacheClusterId = "string",
      ReplicationGroupId = "string"
    )
