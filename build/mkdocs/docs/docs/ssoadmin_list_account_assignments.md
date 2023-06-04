<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_account_assignments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the assignee of the specified AWS account with the specified permission set

### Description

Lists the assignee of the specified AWS account with the specified
permission set.

### Usage

    ssoadmin_list_account_assignments(InstanceArn, AccountId,
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
id="ssoadmin_list_account_assignments_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_account_assignments_:_AccountId">AccountId</code></td>
<td><p>[required] The identifier of the AWS account from which to list
the assignments.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_account_assignments_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set from which to list
assignments.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_account_assignments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the
assignment.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_account_assignments_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAssignments = list(
        list(
          AccountId = "string",
          PermissionSetArn = "string",
          PrincipalType = "USER"|"GROUP",
          PrincipalId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_account_assignments(
      InstanceArn = "string",
      AccountId = "string",
      PermissionSetArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
