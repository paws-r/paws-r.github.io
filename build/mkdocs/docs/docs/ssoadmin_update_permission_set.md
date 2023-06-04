<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin_update_permission_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing permission set

### Description

Updates an existing permission set.

### Usage

    ssoadmin_update_permission_set(InstanceArn, PermissionSetArn,
      Description, SessionDuration, RelayState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssoadmin_update_permission_set_:_InstanceArn">InstanceArn</code></td>
<td><p>[required] The ARN of the IAM Identity Center instance under
which the operation will be executed. For more information about ARNs,
see Amazon Resource Names (ARNs) and AWS Service Namespaces in the
<em>AWS General Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_update_permission_set_:_PermissionSetArn">PermissionSetArn</code></td>
<td><p>[required] The ARN of the permission set.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_update_permission_set_:_Description">Description</code></td>
<td><p>The description of the PermissionSet.</p></td>
</tr>
<tr class="even">
<td><code
id="ssoadmin_update_permission_set_:_SessionDuration">SessionDuration</code></td>
<td><p>The length of time that the application user sessions are valid
for in the ISO-8601 standard.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssoadmin_update_permission_set_:_RelayState">RelayState</code></td>
<td><p>Used to redirect users within the application during the
federation authentication process.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_permission_set(
      InstanceArn = "string",
      PermissionSetArn = "string",
      Description = "string",
      SessionDuration = "string",
      RelayState = "string"
    )
