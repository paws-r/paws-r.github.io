<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_disassociate_user_from_permission_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a user account from a permission group

### Description

Removes a user account from a permission group.

### Usage

    finspacedata_disassociate_user_from_permission_group(permissionGroupId,
      userId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_disassociate_user_from_permission_group_:_permissionGroupId">permissionGroupId</code></td>
<td><p>[required] The unique identifier for the permission
group.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_disassociate_user_from_permission_group_:_userId">userId</code></td>
<td><p>[required] The unique identifier for the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_disassociate_user_from_permission_group_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      statusCode = 123
    )

### Request syntax

    svc$disassociate_user_from_permission_group(
      permissionGroupId = "string",
      userId = "string",
      clientToken = "string"
    )
