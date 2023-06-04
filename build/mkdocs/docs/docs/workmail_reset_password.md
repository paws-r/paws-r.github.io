<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_reset_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the administrator to reset the password for a user

### Description

Allows the administrator to reset the password for a user.

### Usage

    workmail_reset_password(OrganizationId, UserId, Password)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_reset_password_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization that contains the
user for which the password is reset.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_reset_password_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user for whom the password is
reset.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_reset_password_:_Password">Password</code></td>
<td><p>[required] The new password for the user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_password(
      OrganizationId = "string",
      UserId = "string",
      Password = "string"
    )
