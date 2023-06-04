<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_put_permissions_boundary_to_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an AWS managed or customer managed policy to the specified PermissionSet as a permissions boundary

### Description

Attaches an AWS managed or customer managed policy to the specified
PermissionSet as a permissions boundary.

### Usage

    ssoadmin_put_permissions_boundary_to_permission_set(InstanceArn,
      PermissionSetArn, PermissionsBoundary)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_put_permissions_boundary_to_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_put_permissions_boundary_to_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the <code>PermissionSet</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_put_permissions_boundary_to_permission_set_:_PermissionsBoundary">PermissionsBoundary</code></td>
<td><p>[required] The permissions boundary that you want to attach to a
<code>PermissionSet</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_permissions_boundary_to_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      PermissionsBoundary = list(
        CustomerManagedPolicyReference = list(
          Name = "string",
          Path = "string"
        ),
        ManagedPolicyArn = "string"
      )
    )
