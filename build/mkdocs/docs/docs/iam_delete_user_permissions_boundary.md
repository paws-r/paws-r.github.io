<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_user_permissions_boundary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the permissions boundary for the specified IAM user

### Description

Deletes the permissions boundary for the specified IAM user.

Deleting the permissions boundary for a user might increase its
permissions by allowing the user to perform all the actions granted in
its permissions policies.

### Usage

    iam_delete_user_permissions_boundary(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_user_permissions_boundary_:_UserName">UserName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the IAM user from
which you want to remove the permissions boundary.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_permissions_boundary(
      UserName = "string"
    )
