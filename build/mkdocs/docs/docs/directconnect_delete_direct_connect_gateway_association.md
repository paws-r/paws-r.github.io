<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_direct_connect_gateway_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the association between the specified Direct Connect gateway and virtual private gateway

### Description

Deletes the association between the specified Direct Connect gateway and
virtual private gateway.

We recommend that you specify the `associationID` to delete the
association. Alternatively, if you own virtual gateway and a Direct
Connect gateway association, you can specify the `virtualGatewayId` and
`directConnectGatewayId` to delete an association.

### Usage

    directconnect_delete_direct_connect_gateway_association(associationId,
      directConnectGatewayId, virtualGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_direct_connect_gateway_association_:_associationId">associationId</code></td>
<td><p>The ID of the Direct Connect gateway association.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_delete_direct_connect_gateway_association_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_delete_direct_connect_gateway_association_:_virtualGatewayId">virtualGatewayId</code></td>
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

    svc$delete_direct_connect_gateway_association(
      associationId = "string",
      directConnectGatewayId = "string",
      virtualGatewayId = "string"
    )
