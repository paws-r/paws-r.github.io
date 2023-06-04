<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_role_permissions_boundary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the permissions boundary for the specified IAM role

### Description

Deletes the permissions boundary for the specified IAM role.

You cannot set the boundary for a service-linked role.

Deleting the permissions boundary for a role might increase its
permissions. For example, it might allow anyone who assumes the role to
perform all the actions granted in its permissions policies.

### Usage

    iam_delete_role_permissions_boundary(RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_role_permissions_boundary_:_RoleName">RoleName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the IAM role from
which you want to remove the permissions boundary.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_role_permissions_boundary(
      RoleName = "string"
    )
