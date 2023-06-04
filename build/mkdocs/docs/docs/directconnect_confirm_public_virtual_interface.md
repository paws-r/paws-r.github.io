<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_confirm_public_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts ownership of a public virtual interface created by another Amazon Web Services account

### Description

Accepts ownership of a public virtual interface created by another
Amazon Web Services account.

After the virtual interface owner makes this call, the specified virtual
interface is created and made available to handle traffic.

### Usage

    directconnect_confirm_public_virtual_interface(virtualInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_confirm_public_virtual_interface_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualInterfaceState = "confirming"|"verifying"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown"
    )

### Request syntax

    svc$confirm_public_virtual_interface(
      virtualInterfaceId = "string"
    )
