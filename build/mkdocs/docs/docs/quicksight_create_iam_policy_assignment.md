<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_iam_policy_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN)

### Description

Creates an assignment with one specified IAM policy, identified by its
Amazon Resource Name (ARN). This policy assignment is attached to the
specified groups or users of Amazon QuickSight. Assignment names are
unique per Amazon Web Services account. To avoid overwriting rules in
other namespaces, use assignment names that are unique.

### Usage

    quicksight_create_iam_policy_assignment(AwsAccountId, AssignmentName,
      AssignmentStatus, PolicyArn, Identities, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_iam_policy_assignment_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account where you
want to assign an IAM policy to Amazon QuickSight users or
groups.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_iam_policy_assignment_:_AssignmentName">AssignmentName</code></td>
<td><p>[required] The name of the assignment, also called a rule. The
name must be unique within the Amazon Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_iam_policy_assignment_:_AssignmentStatus">AssignmentStatus</code></td>
<td><p>[required] The status of the assignment. Possible values are as
follows:</p>
<ul>
<li><p><code>ENABLED</code> - Anything specified in this assignment is
used when creating the data source.</p></li>
<li><p><code>DISABLED</code> - This assignment isn't used when creating
the data source.</p></li>
<li><p><code>DRAFT</code> - This assignment is an unfinished draft and
isn't used when creating the data source.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_iam_policy_assignment_:_PolicyArn">PolicyArn</code></td>
<td><p>The ARN for the IAM policy to apply to the Amazon QuickSight
users and groups specified in this assignment.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_iam_policy_assignment_:_Identities">Identities</code></td>
<td><p>The Amazon QuickSight users, groups, or both that you want to
assign the policy to.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_iam_policy_assignment_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that contains the assignment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssignmentName = "string",
      AssignmentId = "string",
      AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
      PolicyArn = "string",
      Identities = list(
        list(
          "string"
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_iam_policy_assignment(
      AwsAccountId = "string",
      AssignmentName = "string",
      AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
      PolicyArn = "string",
      Identities = list(
        list(
          "string"
        )
      ),
      Namespace = "string"
    )
