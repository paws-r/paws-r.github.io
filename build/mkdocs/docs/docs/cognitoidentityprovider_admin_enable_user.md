<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_enable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified user as an administrator

### Description

Enables the specified user as an administrator. Works on any user.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_enable_user(UserPoolId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_enable_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
enable the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_enable_user_:_Username">Username</code></td>
<td><p>[required] The user name of the user you want to enable.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_enable_user(
      UserPoolId = "string",
      Username = "string"
    )
