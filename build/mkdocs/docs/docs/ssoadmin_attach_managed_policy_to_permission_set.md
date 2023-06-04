<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_attach_managed_policy_to_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an AWS managed policy ARN to a permission set

### Description

Attaches an AWS managed policy ARN to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call `provision_permission_set` after this
operation. Calling `provision_permission_set` applies the corresponding
IAM policy updates to all assigned accounts.

### Usage

    ssoadmin_attach_managed_policy_to_permission_set(InstanceArn,
      PermissionSetArn, ManagedPolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_attach_managed_policy_to_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_attach_managed_policy_to_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the PermissionSet that the managed policy
should be attached to.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_attach_managed_policy_to_permission_set_:_ManagedPolicyArn">ManagedPolicyArn</code></td>
<td><p>[required] The AWS managed policy ARN to be attached to a
permission set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_managed_policy_to_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      ManagedPolicyArn = "string"
    )
