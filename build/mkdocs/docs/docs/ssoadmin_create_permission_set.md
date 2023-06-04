<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_create_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a permission set within a specified IAM Identity Center instance

### Description

Creates a permission set within a specified IAM Identity Center
instance.

To grant users and groups access to AWS account resources, use
`create_account_assignment`.

### Usage

    ssoadmin_create_permission_set(Name, Description, InstanceArn,
      SessionDuration, RelayState, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssoadmin_create_permission_set_:_Name">Name</code></td>
<td><p>[required] The name of the PermissionSet.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_permission_set_:_Description">Description</code></td>
<td><p>The description of the PermissionSet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_create_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_create_permission_set_:_SessionDuration">SessionDuration</code></td>
<td><p>The length of time that the application user sessions are valid
in the ISO-8601 standard.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_create_permission_set_:_RelayState">RelayState</code></td>
<td><p>Used to redirect users within the application during the
federation authentication process.</p></td>
</tr>
<tr class="even">
<td><code id="ssoadmin_create_permission_set_:_Tags">Tags</code></td>
<td><p>The tags to attach to the new PermissionSet.</p></td>
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

    svc$create_permission_set(
      Name = "string",
      Description = "string",
      InstanceArn = "string",
      SessionDuration = "string",
      RelayState = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
