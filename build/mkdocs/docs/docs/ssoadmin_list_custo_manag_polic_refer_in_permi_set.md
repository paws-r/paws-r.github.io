<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_customer_managed_policy_references_in_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all customer managed policies attached to a specified PermissionSet

### Description

Lists all customer managed policies attached to a specified
PermissionSet.

### Usage

    ssoadmin_list_customer_managed_policy_references_in_permission_set(
      InstanceArn, PermissionSetArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_customer_managed_policy_references_in_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_customer_managed_policy_references_in_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the <code>PermissionSet</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_customer_managed_policy_references_in_permission_set_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the list
call.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_customer_managed_policy_references_in_permission_set_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomerManagedPolicyReferences = list(
        list(
          Name = "string",
          Path = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_customer_managed_policy_references_in_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
