<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_describe_node_association_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of an existing association or disassociation request

### Description

Returns the current status of an existing association or disassociation
request.

A `ResourceNotFoundException` is thrown when no recent association or
disassociation request with the specified token is found, or when the
server does not exist. A `ValidationException` is raised when parameters
of the request are not valid.

### Usage

    opsworkscm_describe_node_association_status(NodeAssociationStatusToken,
      ServerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_describe_node_association_status_:_NodeAssociationStatusToken">NodeAssociationStatusToken</code></td>
<td><p>[required] The token returned in either the AssociateNodeResponse
or the DisassociateNodeResponse.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_describe_node_association_status_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server from which to disassociate the
node.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NodeAssociationStatus = "SUCCESS"|"FAILED"|"IN_PROGRESS",
      EngineAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_node_association_status(
      NodeAssociationStatusToken = "string",
      ServerName = "string"
    )
