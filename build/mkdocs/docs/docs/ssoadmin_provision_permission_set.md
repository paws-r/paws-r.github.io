<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_provision_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The process by which a specified permission set is provisioned to the specified target

### Description

The process by which a specified permission set is provisioned to the
specified target.

### Usage

    ssoadmin_provision_permission_set(InstanceArn, PermissionSetArn,
      TargetId, TargetType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_provision_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_provision_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_provision_permission_set_:_TargetId">TargetId</code></td>
<td><p>TargetID is an AWS account identifier, typically a 10-12 digit
string (For example, 123456789012).</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_provision_permission_set_:_TargetType">TargetType</code></td>
<td><p>[required] The entity type for which the assignment will be
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PermissionSetProvisioningStatus = list(
        Status = "IN_PROGRESS"|"FAILED"|"SUCCEEDED",
        RequestId = "string",
        AccountId = "string",
        PermissionSetArn = "string",
        FailureReason = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$provision_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      TargetId = "string",
      TargetType = "AWS_ACCOUNT"|"ALL_PROVISIONED_ACCOUNTS"
    )
