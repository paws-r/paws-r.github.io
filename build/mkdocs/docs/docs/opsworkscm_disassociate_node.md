<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_disassociate_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes

### Description

Disassociates a node from an AWS OpsWorks CM server, and removes the
node from the server's managed nodes. After a node is disassociated, the
node key pair is no longer valid for accessing the configuration
manager's API. For more information about how to associate a node, see
`associate_node`.

A node can can only be disassociated from a server that is in a
`HEALTHY` state. Otherwise, an `InvalidStateException` is thrown. A
`ResourceNotFoundException` is thrown when the server does not exist. A
`ValidationException` is raised when parameters of the request are not
valid.

### Usage

    opsworkscm_disassociate_node(ServerName, NodeName, EngineAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_disassociate_node_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server from which to disassociate the
node.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_disassociate_node_:_NodeName">NodeName</code></td>
<td><p>[required] The name of the client node.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_disassociate_node_:_EngineAttributes">EngineAttributes</code></td>
<td><p>Engine attributes that are used for disassociating the node. No
attributes are required for Puppet.</p>
<p><strong>Attributes required in a DisassociateNode request for
Chef</strong></p>
<ul>
<li><p><code>CHEF_ORGANIZATION</code>: The Chef organization with which
the node was associated. By default only one organization named
<code>default</code> can exist.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NodeAssociationStatusToken = "string"
    )

### Request syntax

    svc$disassociate_node(
      ServerName = "string",
      NodeName = "string",
      EngineAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
