<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_set_user_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the specified user's password in a user pool as an administrator

### Description

Sets the specified user's password in a user pool as an administrator.
Works on any user.

The password can be temporary or permanent. If it is temporary, the user
status enters the `FORCE_CHANGE_PASSWORD` state. When the user next
tries to sign in, the InitiateAuth/AdminInitiateAuth response will
contain the `NEW_PASSWORD_REQUIRED` challenge. If the user doesn't sign
in before it expires, the user won't be able to sign in, and an
administrator must reset their password.

Once the user has set a new password, or the password is permanent, the
user status is set to `Confirmed`.

### Usage

    cognitoidentityprovider_admin_set_user_password(UserPoolId, Username,
      Password, Permanent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_password_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
set the user's password.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_set_user_password_:_Username">Username</code></td>
<td><p>[required] The user name of the user whose password you want to
set.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_password_:_Password">Password</code></td>
<td><p>[required] The password for the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_set_user_password_:_Permanent">Permanent</code></td>
<td><p><code>True</code> if the password is permanent,
<code>False</code> if it is temporary.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_set_user_password(
      UserPoolId = "string",
      Username = "string",
      Password = "string",
      Permanent = TRUE|FALSE
    )
