<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_permission_sets_provisioned_to_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the permission sets that are provisioned to a specified AWS account

### Description

Lists all the permission sets that are provisioned to a specified AWS
account.

### Usage

    ssoadmin_list_permission_sets_provisioned_to_account(InstanceArn,
      AccountId, ProvisioningStatus, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_permission_sets_provisioned_to_account_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_permission_sets_provisioned_to_account_:_AccountId">AccountId</code></td>
<td><p>[required] The identifier of the AWS account from which to list
the assignments.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_permission_sets_provisioned_to_account_:_ProvisioningStatus">ProvisioningStatus</code></td>
<td><p>The status object for the permission set provisioning
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_permission_sets_provisioned_to_account_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the
assignment.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_permission_sets_provisioned_to_account_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PermissionSets = list(
        "string"
      )
    )

### Request syntax

    svc$list_permission_sets_provisioned_to_account(
      InstanceArn = "string",
      AccountId = "string",
      ProvisioningStatus = "LATEST_PERMISSION_SET_PROVISIONED"|"LATEST_PERMISSION_SET_NOT_PROVISIONED",
      MaxResults = 123,
      NextToken = "string"
    )
