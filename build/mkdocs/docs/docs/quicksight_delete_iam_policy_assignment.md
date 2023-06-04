<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_iam_policy_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing IAM policy assignment

### Description

Deletes an existing IAM policy assignment.

### Usage

    quicksight_delete_iam_policy_assignment(AwsAccountId, AssignmentName,
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
id="quicksight_delete_iam_policy_assignment_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID where you want to
delete the IAM policy assignment.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_iam_policy_assignment_:_AssignmentName">AssignmentName</code></td>
<td><p>[required] The name of the assignment.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_iam_policy_assignment_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that contains the assignment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssignmentName = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_iam_policy_assignment(
      AwsAccountId = "string",
      AssignmentName = "string",
      Namespace = "string"
    )
