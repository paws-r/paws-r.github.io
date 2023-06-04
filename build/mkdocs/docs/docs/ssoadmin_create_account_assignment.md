<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_create_account_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns access to a principal for a specified AWS account using a specified permission set

### Description

Assigns access to a principal for a specified AWS account using a
specified permission set.

The term *principal* here refers to a user or group that is defined in
IAM Identity Center.

As part of a successful `create_account_assignment` call, the specified
permission set will automatically be provisioned to the account in the
form of an IAM policy. That policy is attached to the IAM role created
in IAM Identity Center. If the permission set is subsequently updated,
the corresponding IAM policies attached to roles in your accounts will
not be updated automatically. In this case, you must call
`provision_permission_set` to make these updates.

After a successful response, call
`describe_account_assignment_creation_status` to describe the status of
an assignment creation request.

### Usage

    ssoadmin_create_account_assignment(InstanceArn, TargetId, TargetType,
      PermissionSetArn, PrincipalType, PrincipalId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_create_account_assignment_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_account_assignment_:_TargetId">TargetId</code></td>
<td><p>[required] TargetID is an AWS account identifier, typically a
10-12 digit string (For example, 123456789012).</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_create_account_assignment_:_TargetType">TargetType</code></td>
<td><p>[required] The entity type for which the assignment will be
created.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_account_assignment_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set that the admin wants to
grant the principal access to.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_create_account_assignment_:_PrincipalType">PrincipalType</code></td>
<td><p>[required] The entity type for which the assignment will be
created.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_account_assignment_:_PrincipalId">PrincipalId</code></td>
<td><p>[required] An identifier for an object in IAM Identity Center,
such as a user or group. PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in IAM Identity Center, see the IAM Identity Center
Identity Store API Reference.</p></td>
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

    svc$create_account_assignment(
      InstanceArn = "string",
      TargetId = "string",
      TargetType = "AWS_ACCOUNT",
      PermissionSetArn = "string",
      PrincipalType = "USER"|"GROUP",
      PrincipalId = "string"
    )
