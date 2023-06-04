<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_managed_policies_in_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the AWS managed policy that is attached to a specified permission set

### Description

Lists the AWS managed policy that is attached to a specified permission
set.

### Usage

    ssoadmin_list_managed_policies_in_permission_set(InstanceArn,
      PermissionSetArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_managed_policies_in_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_managed_policies_in_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the PermissionSet whose managed policies
will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_managed_policies_in_permission_set_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the
PermissionSet.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_managed_policies_in_permission_set_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachedManagedPolicies = list(
        list(
          Name = "string",
          Arn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_managed_policies_in_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
