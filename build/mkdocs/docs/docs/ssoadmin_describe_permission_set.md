<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_describe_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the details of the permission set

### Description

Gets the details of the permission set.

### Usage

    ssoadmin_describe_permission_set(InstanceArn, PermissionSetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_describe_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_describe_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PermissionSet = list(
        Name = "string",
        PermissionSetArn = "string",
        Description = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        ),
        SessionDuration = "string",
        RelayState = "string"
      )
    )

### Request syntax

    svc$describe_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string"
    )
