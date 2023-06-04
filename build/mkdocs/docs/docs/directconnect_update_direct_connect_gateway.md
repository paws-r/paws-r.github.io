<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_update_direct_connect_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name of a current Direct Connect gateway

### Description

Updates the name of a current Direct Connect gateway.

### Usage

    directconnect_update_direct_connect_gateway(directConnectGatewayId,
      newDirectConnectGatewayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_update_direct_connect_gateway_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>[required] The ID of the Direct Connect gateway to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_direct_connect_gateway_:_newDirectConnectGatewayName">newDirectConnectGatewayName</code></td>
<td><p>[required] The new name for the Direct Connect gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGateway = list(
        directConnectGatewayId = "string",
        directConnectGatewayName = "string",
        amazonSideAsn = 123,
        ownerAccount = "string",
        directConnectGatewayState = "pending"|"available"|"deleting"|"deleted",
        stateChangeError = "string"
      )
    )

### Request syntax

    svc$update_direct_connect_gateway(
      directConnectGatewayId = "string",
      newDirectConnectGatewayName = "string"
    )
