<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_direct_connect_gateway_association_proposal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway

### Description

Creates a proposal to associate the specified virtual private gateway or
transit gateway with the specified Direct Connect gateway.

You can associate a Direct Connect gateway and virtual private gateway
or transit gateway that is owned by any Amazon Web Services account.

### Usage

    directconnect_create_direct_connect_gateway_association_proposal(
      directConnectGatewayId, directConnectGatewayOwnerAccount, gatewayId,
      addAllowedPrefixesToDirectConnectGateway,
      removeAllowedPrefixesToDirectConnectGateway)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_association_proposal_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>[required] The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_direct_connect_gateway_association_proposal_:_directConnectGatewayOwnerAccount">directConnectGatewayOwnerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account that owns
the Direct Connect gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_association_proposal_:_gatewayId">gatewayId</code></td>
<td><p>[required] The ID of the virtual private gateway or transit
gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_direct_connect_gateway_association_proposal_:_addAllowedPrefixesToDirectConnectGateway">addAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>The Amazon VPC prefixes to advertise to the Direct Connect
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_association_proposal_:_removeAllowedPrefixesToDirectConnectGateway">removeAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>The Amazon VPC prefixes to no longer advertise to the Direct
Connect gateway.</p></td>
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

    svc$create_direct_connect_gateway_association_proposal(
      directConnectGatewayId = "string",
      directConnectGatewayOwnerAccount = "string",
      gatewayId = "string",
      addAllowedPrefixesToDirectConnectGateway = list(
        list(
          cidr = "string"
        )
      ),
      removeAllowedPrefixesToDirectConnectGateway = list(
        list(
          cidr = "string"
        )
      )
    )
