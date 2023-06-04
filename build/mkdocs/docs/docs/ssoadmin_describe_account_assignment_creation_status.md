<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_describe_account_assignment_creation_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of the assignment creation request

### Description

Describes the status of the assignment creation request.

### Usage

    ssoadmin_describe_account_assignment_creation_status(InstanceArn,
      AccountAssignmentCreationRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_describe_account_assignment_creation_status_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_describe_account_assignment_creation_status_:_AccountAssignmentCreationRequestId">AccountAssignmentCreationRequestId</code></td>
<td><p>[required] The identifier that is used to track the request
operation progress.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAssignmentCreationStatus = list(
        Status = "IN_PROGRESS"|"FAILED"|"SUCCEEDED",
        RequestId = "string",
        FailureReason = "string",
        TargetId = "string",
        TargetType = "AWS_ACCOUNT",
        PermissionSetArn = "string",
        PrincipalType = "USER"|"GROUP",
        PrincipalId = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_account_assignment_creation_status(
      InstanceArn = "string",
      AccountAssignmentCreationRequestId = "string"
    )
