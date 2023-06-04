<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_iam_policy_assignments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IAM policy assignments in the current Amazon QuickSight account

### Description

Lists the IAM policy assignments in the current Amazon QuickSight
account.

### Usage

    quicksight_list_iam_policy_assignments(AwsAccountId, AssignmentStatus,
      Namespace, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains these IAM policy assignments.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_iam_policy_assignments_:_AssignmentStatus">AssignmentStatus</code></td>
<td><p>The status of the assignments.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace for the assignments.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_iam_policy_assignments_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_iam_policy_assignments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IAMPolicyAssignments = list(
        list(
          AssignmentName = "string",
          AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_iam_policy_assignments(
      AwsAccountId = "string",
      AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
      Namespace = "string",
      NextToken = "string",
      MaxResults = 123
    )
