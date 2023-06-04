<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_iam_policy_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing IAM policy assignment

### Description

Updates an existing IAM policy assignment. This operation updates only
the optional parameter or parameters that are specified in the request.
This overwrites all of the users included in `Identities`.

### Usage

    quicksight_update_iam_policy_assignment(AwsAccountId, AssignmentName,
      Namespace, AssignmentStatus, PolicyArn, Identities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_iam_policy_assignment_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the IAM policy assignment.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_iam_policy_assignment_:_AssignmentName">AssignmentName</code></td>
<td><p>[required] The name of the assignment, also called a rule. The
name must be unique within the Amazon Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_iam_policy_assignment_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the assignment.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_iam_policy_assignment_:_AssignmentStatus">AssignmentStatus</code></td>
<td><p>The status of the assignment. Possible values are as follows:</p>
<ul>
<li><p><code>ENABLED</code> - Anything specified in this assignment is
used when creating the data source.</p></li>
<li><p><code>DISABLED</code> - This assignment isn't used when creating
the data source.</p></li>
<li><p><code>DRAFT</code> - This assignment is an unfinished draft and
isn't used when creating the data source.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_iam_policy_assignment_:_PolicyArn">PolicyArn</code></td>
<td><p>The ARN for the IAM policy to apply to the Amazon QuickSight
users and groups specified in this assignment.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_iam_policy_assignment_:_Identities">Identities</code></td>
<td><p>The Amazon QuickSight users, groups, or both that you want to
assign the policy to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssignmentName = "string",
      AssignmentId = "string",
      PolicyArn = "string",
      Identities = list(
        list(
          "string"
        )
      ),
      AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_iam_policy_assignment(
      AwsAccountId = "string",
      AssignmentName = "string",
      Namespace = "string",
      AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
      PolicyArn = "string",
      Identities = list(
        list(
          "string"
        )
      )
    )
