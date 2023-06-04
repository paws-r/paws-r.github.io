<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_associate_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a new node with the server

### Description

Associates a new node with the server. For more information about how to
disassociate a node, see `disassociate_node`.

On a Chef server: This command is an alternative to `⁠knife bootstrap⁠`.

Example (Chef):
`⁠aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=CHEF_ORGANIZATION,Value=default" "Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem"⁠`

On a Puppet server, this command is an alternative to the
`⁠puppet cert sign⁠` command that signs a Puppet node CSR.

Example (Puppet):
`⁠aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=PUPPET_NODE_CSR,Value=csr-pem"⁠`

A node can can only be associated with servers that are in a `HEALTHY`
state. Otherwise, an `InvalidStateException` is thrown. A
`ResourceNotFoundException` is thrown when the server does not exist. A
`ValidationException` is raised when parameters of the request are not
valid. The AssociateNode API call can be integrated into Auto Scaling
configurations, AWS Cloudformation templates, or the user data of a
server's instance.

### Usage

    opsworkscm_associate_node(ServerName, NodeName, EngineAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_associate_node_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server with which to associate the
node.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_associate_node_:_NodeName">NodeName</code></td>
<td><p>[required] The name of the node.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_associate_node_:_EngineAttributes">EngineAttributes</code></td>
<td><p>[required] Engine attributes used for associating the node.</p>
<p><strong>Attributes accepted in a AssociateNode request for
Chef</strong></p>
<ul>
<li><p><code>CHEF_ORGANIZATION</code>: The Chef organization with which
the node is associated. By default only one organization named
<code>default</code> can exist.</p></li>
<li><p><code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key.
This key is required for the <code>chef-client</code> agent to access
the Chef API.</p></li>
</ul>
<p><strong>Attributes accepted in a AssociateNode request for
Puppet</strong></p>
<ul>
<li><p><code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing
request (CSR) that is created by the node.</p></li>
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

    svc$associate_node(
      ServerName = "string",
      NodeName = "string",
      EngineAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
