<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_detach_customer_managed_policy_reference_from_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches the specified customer managed policy from the specified PermissionSet

### Description

Detaches the specified customer managed policy from the specified
PermissionSet.

### Usage

    ssoadmin_detach_customer_managed_policy_reference_from_permission_set(
      InstanceArn, PermissionSetArn, CustomerManagedPolicyReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_detach_customer_managed_policy_reference_from_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_detach_customer_managed_policy_reference_from_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the <code>PermissionSet</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_detach_customer_managed_policy_reference_from_permission_set_:_CustomerManagedPolicyReference">CustomerManagedPolicyReference</code></td>
<td><p>[required] Specifies the name and path of a customer managed
policy. You must have an IAM policy that matches the name and path in
each AWS account where you want to deploy your permission set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_customer_managed_policy_reference_from_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      CustomerManagedPolicyReference = list(
        Name = "string",
        Path = "string"
      )
    )
