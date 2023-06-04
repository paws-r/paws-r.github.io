<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_get_permissions_boundary_for_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains the permissions boundary for a specified PermissionSet

### Description

Obtains the permissions boundary for a specified PermissionSet.

### Usage

    ssoadmin_get_permissions_boundary_for_permission_set(InstanceArn,
      PermissionSetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_get_permissions_boundary_for_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_get_permissions_boundary_for_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the <code>PermissionSet</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PermissionsBoundary = list(
        CustomerManagedPolicyReference = list(
          Name = "string",
          Path = "string"
        ),
        ManagedPolicyArn = "string"
      )
    )

### Request syntax

    svc$get_permissions_boundary_for_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string"
    )
