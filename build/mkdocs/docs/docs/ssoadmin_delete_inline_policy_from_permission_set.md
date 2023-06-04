<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_delete_inline_policy_from_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the inline policy from a specified permission set

### Description

Deletes the inline policy from a specified permission set.

### Usage

    ssoadmin_delete_inline_policy_from_permission_set(InstanceArn,
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
id="ssoadmin_delete_inline_policy_from_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_delete_inline_policy_from_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set that will be used to
remove access.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_inline_policy_from_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string"
    )
