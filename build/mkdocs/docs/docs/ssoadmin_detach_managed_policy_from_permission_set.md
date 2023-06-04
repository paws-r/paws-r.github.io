<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_detach_managed_policy_from_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches the attached AWS managed policy ARN from the specified permission set

### Description

Detaches the attached AWS managed policy ARN from the specified
permission set.

### Usage

    ssoadmin_detach_managed_policy_from_permission_set(InstanceArn,
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
id="ssoadmin_detach_managed_policy_from_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_detach_managed_policy_from_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the PermissionSet from which the policy
should be detached.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_detach_managed_policy_from_permission_set_:_ManagedPolicyArn">ManagedPolicyArn</code></td>
<td><p>[required] The AWS managed policy ARN to be detached from a
permission set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_managed_policy_from_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      ManagedPolicyArn = "string"
    )
