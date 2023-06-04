<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user who can be used in WorkMail by calling the RegisterToWorkMail operation

### Description

Creates a user who can be used in WorkMail by calling the
`register_to_work_mail` operation.

### Usage

    workmail_create_user(OrganizationId, Name, DisplayName, Password)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_user_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization for which the user
is created.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_user_:_Name">Name</code></td>
<td><p>[required] The name for the new user. WorkMail directory user
names have a maximum length of 64. All others have a maximum length of
20.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_user_:_DisplayName">DisplayName</code></td>
<td><p>[required] The display name for the new user.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_user_:_Password">Password</code></td>
<td><p>[required] The password for the new user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string"
    )

### Request syntax

    svc$create_user(
      OrganizationId = "string",
      Name = "string",
      DisplayName = "string",
      Password = "string"
    )
