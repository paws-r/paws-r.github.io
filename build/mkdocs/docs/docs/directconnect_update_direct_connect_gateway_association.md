<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_update_direct_connect_gateway_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attributes of the Direct Connect gateway association

### Description

Updates the specified attributes of the Direct Connect gateway
association.

Add or remove prefixes from the association.

### Usage

    directconnect_update_direct_connect_gateway_association(associationId,
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
id="directconnect_update_direct_connect_gateway_association_:_associationId">associationId</code></td>
<td><p>The ID of the Direct Connect gateway association.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_direct_connect_gateway_association_:_addAllowedPrefixesToDirectConnectGateway">addAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>The Amazon VPC prefixes to advertise to the Direct Connect
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_update_direct_connect_gateway_association_:_removeAllowedPrefixesToDirectConnectGateway">removeAllowedPrefixesToDirectConnectGateway</code></td>
<td><p>The Amazon VPC prefixes to no longer advertise to the Direct
Connect gateway.</p></td>
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

    svc$update_direct_connect_gateway_association(
      associationId = "string",
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
