<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_iam_policy_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing IAM policy assignment, as specified by the assignment name

### Description

Describes an existing IAM policy assignment, as specified by the
assignment name.

### Usage

    quicksight_describe_iam_policy_assignment(AwsAccountId, AssignmentName,
      Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_iam_policy_assignment_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the assignment that you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_iam_policy_assignment_:_AssignmentName">AssignmentName</code></td>
<td><p>[required] The name of the assignment, also called a
rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_iam_policy_assignment_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that contains the assignment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IAMPolicyAssignment = list(
        AwsAccountId = "string",
        AssignmentId = "string",
        AssignmentName = "string",
        PolicyArn = "string",
        Identities = list(
          list(
            "string"
          )
        ),
        AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_iam_policy_assignment(
      AwsAccountId = "string",
      AssignmentName = "string",
      Namespace = "string"
    )
