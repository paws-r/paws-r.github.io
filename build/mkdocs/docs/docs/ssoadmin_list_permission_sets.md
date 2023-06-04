<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_list_permission_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the PermissionSets in an IAM Identity Center instance

### Description

Lists the PermissionSets in an IAM Identity Center instance.

### Usage

    ssoadmin_list_permission_sets(InstanceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_list_permission_sets_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_list_permission_sets_:_NextToken">NextToken</code></td>
<td><p>The pagination token for the list API. Initially the value is
null. Use the output of previous API calls to make subsequent
calls.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_list_permission_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to display for the
assignment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PermissionSets = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_permission_sets(
      InstanceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
