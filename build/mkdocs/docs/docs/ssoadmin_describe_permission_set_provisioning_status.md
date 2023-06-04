<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_describe_permission_set_provisioning_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status for the given permission set provisioning request

### Description

Describes the status for the given permission set provisioning request.

### Usage

    ssoadmin_describe_permission_set_provisioning_status(InstanceArn,
      ProvisionPermissionSetRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_describe_permission_set_provisioning_status_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_describe_permission_set_provisioning_status_:_ProvisionPermissionSetRequestId">ProvisionPermissionSetRequestId</code></td>
<td><p>[required] The identifier that is provided by the
<code>provision_permission_set</code> call to retrieve the current
status of the provisioning workflow.</p></td>
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

    svc$describe_permission_set_provisioning_status(
      InstanceArn = "string",
      ProvisionPermissionSetRequestId = "string"
    )
