<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_confirm_private_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts ownership of a private virtual interface created by another Amazon Web Services account

### Description

Accepts ownership of a private virtual interface created by another
Amazon Web Services account.

After the virtual interface owner makes this call, the virtual interface
is created and attached to the specified virtual private gateway or
Direct Connect gateway, and is made available to handle traffic.

### Usage

    directconnect_confirm_private_virtual_interface(virtualInterfaceId,
      virtualGatewayId, directConnectGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_confirm_private_virtual_interface_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_confirm_private_virtual_interface_:_virtualGatewayId">virtualGatewayId</code></td>
<td><p>The ID of the virtual private gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_confirm_private_virtual_interface_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>The ID of the Direct Connect gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterfaceState = "confirming"|"verifying"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown"
    )

### Request syntax

    svc$confirm_private_virtual_interface(
      virtualInterfaceId = "string",
      virtualGatewayId = "string",
      directConnectGatewayId = "string"
    )
