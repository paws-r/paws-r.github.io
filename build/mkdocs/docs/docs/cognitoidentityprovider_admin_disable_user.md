<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_disable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates a user and revokes all access tokens for the user

### Description

Deactivates a user and revokes all access tokens for the user. A
deactivated user can't sign in, but still appears in the responses to
`get_user` and `list_users` API requests.

You must make this API request with Amazon Web Services credentials that
have `cognito-idp:AdminDisableUser` permissions.

### Usage

    cognitoidentityprovider_admin_disable_user(UserPoolId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_disable_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
disable the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_disable_user_:_Username">Username</code></td>
<td><p>[required] The user name of the user you want to
disable.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_disable_user(
      UserPoolId = "string",
      Username = "string"
    )
