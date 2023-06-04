<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user as an administrator

### Description

Deletes a user as an administrator. Works on any user.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_delete_user(UserPoolId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_delete_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
delete the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_delete_user_:_Username">Username</code></td>
<td><p>[required] The user name of the user you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_delete_user(
      UserPoolId = "string",
      Username = "string"
    )
