<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_reset_user_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the password for a specified user ID and generates a temporary one

### Description

Resets the password for a specified user ID and generates a temporary
one. Only a superuser can reset password for other users. Resetting the
password immediately invalidates the previous password associated with
the user.

### Usage

    finspacedata_reset_user_password(userId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_reset_user_password_:_userId">userId</code></td>
<td><p>[required] The unique identifier of the user that a temporary
password is requested for.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_reset_user_password_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userId = "string",
      temporaryPassword = "string"
    )

### Request syntax

    svc$reset_user_password(
      userId = "string",
      clientToken = "string"
    )
