<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_direct_connect_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Direct Connect gateway

### Description

Deletes the specified Direct Connect gateway. You must first delete all
virtual interfaces that are attached to the Direct Connect gateway and
disassociate all virtual private gateways associated with the Direct
Connect gateway.

### Usage

    directconnect_delete_direct_connect_gateway(directConnectGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_direct_connect_gateway_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>[required] The ID of the Direct Connect gateway.</p></td>
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

    svc$delete_direct_connect_gateway(
      directConnectGatewayId = "string"
    )
