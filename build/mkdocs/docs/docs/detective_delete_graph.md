<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_delete_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the specified behavior graph and queues it to be deleted

### Description

Disables the specified behavior graph and queues it to be deleted. This
operation removes the behavior graph from each member account's list of
behavior graphs.

`delete_graph` can only be called by the administrator account for a
behavior graph.

### Usage

    detective_delete_graph(GraphArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_delete_graph_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph to disable.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_graph(
      GraphArn = "string"
    )
