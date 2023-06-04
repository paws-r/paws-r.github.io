<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_direct_connect_gateway_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between a Direct Connect gateway and a virtual private gateway

### Description

Creates an association between a Direct Connect gateway and a virtual
private gateway. The virtual private gateway must be attached to a VPC
and must not be associated with another Direct Connect gateway.

### Usage

    directconnect_create_direct_connect_gateway_association(
      directConnectGatewayId, gatewayId,
      addAllowedPrefixesToDirectConnectGateway, virtualGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_association_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>[required] The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_direct_connect_gateway_association_:_gatewayId">gatewayId</code></td>
<td><p>The ID of the virtual private gateway or transit
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_direct_connect_gateway_association_:_addAllowedPrefixesToDirectConnectGateway">addAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>The Amazon VPC prefixes to advertise to the Direct Connect
gateway</p>
<p>This parameter is required when you create an association to a
transit gateway.</p>
<p>For information about how to set the prefixes, see <a
href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed
Prefixes</a> in the <em>Direct Connect User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_direct_connect_gateway_association_:_virtualGatewayId">virtualGatewayId</code></td>
<td><p>The ID of the virtual private gateway.</p></td>
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

    svc$create_direct_connect_gateway_association(
      directConnectGatewayId = "string",
      gatewayId = "string",
      addAllowedPrefixesToDirectConnectGateway = list(
        list(
          cidr = "string"
        )
      ),
      virtualGatewayId = "string"
    )
