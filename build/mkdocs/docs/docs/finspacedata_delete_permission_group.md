<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_delete_permission_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a permission group

### Description

Deletes a permission group. This action is irreversible.

### Usage

    finspacedata_delete_permission_group(permissionGroupId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_delete_permission_group_:_permissionGroupId">permissionGroupId</code></td>
<td><p>[required] The unique identifier for the permission group that
you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_delete_permission_group_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permissionGroupId = "string"
    )

### Request syntax

    svc$delete_permission_group(
      permissionGroupId = "string",
      clientToken = "string"
    )
