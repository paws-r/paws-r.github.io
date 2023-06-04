<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_list_allowed_node_type_updates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available node types that you can scale to from your cluster's current node type

### Description

Lists all available node types that you can scale to from your cluster's
current node type. When you use the UpdateCluster operation to scale
your cluster, the value of the NodeType parameter must be one of the
node types returned by this operation.

### Usage

    memorydb_list_allowed_node_type_updates(ClusterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_list_allowed_node_type_updates_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster you want to scale. MemoryDB
uses the cluster name to identify the current node type being used by
this cluster, and from that to create a list of node types you can scale
up to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScaleUpNodeTypes = list(
        "string"
      ),
      ScaleDownNodeTypes = list(
        "string"
      )
    )

### Request syntax

    svc$list_allowed_node_type_updates(
      ClusterName = "string"
    )
