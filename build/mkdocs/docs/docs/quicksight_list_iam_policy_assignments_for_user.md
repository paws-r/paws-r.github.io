<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_iam_policy_assignments_for_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the IAM policy assignments, including the Amazon Resource Names (ARNs), for the IAM policies assigned to the specified user and group, or groups that the user belongs to

### Description

Lists all of the IAM policy assignments, including the Amazon Resource
Names (ARNs), for the IAM policies assigned to the specified user and
group, or groups that the user belongs to.

### Usage

    quicksight_list_iam_policy_assignments_for_user(AwsAccountId, UserName,
      NextToken, MaxResults, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_for_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the assignments.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_iam_policy_assignments_for_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_for_user_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_iam_policy_assignments_for_user_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_for_user_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the assignment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActiveAssignments = list(
        list(
          AssignmentName = "string",
          PolicyArn = "string"
        )
      ),
      RequestId = "string",
      NextToken = "string",
      Status = 123
    )

### Request syntax

    svc$list_iam_policy_assignments_for_user(
      AwsAccountId = "string",
      UserName = "string",
      NextToken = "string",
      MaxResults = 123,
      Namespace = "string"
    )
