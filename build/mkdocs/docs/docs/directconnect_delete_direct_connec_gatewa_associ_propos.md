<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_direct_connect_gateway_association_proposal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway

### Description

Deletes the association proposal request between the specified Direct
Connect gateway and virtual private gateway or transit gateway.

### Usage

    directconnect_delete_direct_connect_gateway_association_proposal(
      proposalId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_direct_connect_gateway_association_proposal_:_proposalId">proposalId</code></td>
<td><p>[required] The ID of the proposal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGatewayAssociationProposal = list(
        proposalId = "string",
        directConnectGatewayId = "string",
        directConnectGatewayOwnerAccount = "string",
        proposalState = "requested"|"accepted"|"deleted",
        associatedGateway = list(
          id = "string",
          type = "virtualPrivateGateway"|"transitGateway",
          ownerAccount = "string",
          region = "string"
        ),
        existingAllowedPrefixesToDirectConnectGateway = list(
          list(
            cidr = "string"
          )
        ),
        requestedAllowedPrefixesToDirectConnectGateway = list(
          list(
            cidr = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_direct_connect_gateway_association_proposal(
      proposalId = "string"
    )
