<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_accept_direct_connect_gateway_association_proposal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway

### Description

Accepts a proposal request to attach a virtual private gateway or
transit gateway to a Direct Connect gateway.

### Usage

    directconnect_accept_direct_connect_gateway_association_proposal(
      directConnectGatewayId, proposalId, associatedGatewayOwnerAccount,
      overrideAllowedPrefixesToDirectConnectGateway)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_accept_direct_connect_gateway_association_proposal_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>[required] The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_accept_direct_connect_gateway_association_proposal_:_proposalId">proposalId</code></td>
<td><p>[required] The ID of the request proposal.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_accept_direct_connect_gateway_association_proposal_:_associatedGatewayOwnerAccount">associatedGatewayOwnerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account that owns
the virtual private gateway or transit gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_accept_direct_connect_gateway_association_proposal_:_overrideAllowedPrefixesToDirectConnectGateway">overrideAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>Overrides the Amazon VPC prefixes advertised to the Direct
Connect gateway.</p>
<p>For information about how to set the prefixes, see <a
href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed
Prefixes</a> in the <em>Direct Connect User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGatewayAssociation = list(
        directConnectGatewayId = "string",
        directConnectGatewayOwnerAccount = "string",
        associationState = "associating"|"associated"|"disassociating"|"disassociated"|"updating",
        stateChangeError = "string",
        associatedGateway = list(
          id = "string",
          type = "virtualPrivateGateway"|"transitGateway",
          ownerAccount = "string",
          region = "string"
        ),
        associationId = "string",
        allowedPrefixesToDirectConnectGateway = list(
          list(
            cidr = "string"
          )
        ),
        virtualGatewayId = "string",
        virtualGatewayRegion = "string",
        virtualGatewayOwnerAccount = "string"
      )
    )

### Request syntax

    svc$accept_direct_connect_gateway_association_proposal(
      directConnectGatewayId = "string",
      proposalId = "string",
      associatedGatewayOwnerAccount = "string",
      overrideAllowedPrefixesToDirectConnectGateway = list(
        list(
          cidr = "string"
        )
      )
    )
