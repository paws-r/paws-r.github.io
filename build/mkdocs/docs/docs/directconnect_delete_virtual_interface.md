<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_virtual_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a virtual interface

### Description

Deletes a virtual interface.

### Usage

    directconnect_delete_virtual_interface(virtualInterfaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_virtual_interface_:_virtualInterfaceId">virtualInterfaceId</code></td>
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

    svc$delete_virtual_interface(
      virtualInterfaceId = "string"
    )
