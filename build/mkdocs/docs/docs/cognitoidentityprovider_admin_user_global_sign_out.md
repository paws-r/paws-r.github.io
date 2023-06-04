<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_user_global_sign_out</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Signs out a user from all devices

### Description

Signs out a user from all devices. You must sign
`admin_user_global_sign_out` requests with Amazon Web Services
credentials. It also invalidates all refresh tokens that Amazon Cognito
has issued to a user. The user's current access and ID tokens remain
valid until they expire. By default, access and ID tokens expire one
hour after they're issued. A user can still use a hosted UI cookie to
retrieve new tokens for the duration of the cookie validity period of 1
hour.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_user_global_sign_out(UserPoolId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_user_global_sign_out_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_user_global_sign_out_:_Username">Username</code></td>
<td><p>[required] The user name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_user_global_sign_out(
      UserPoolId = "string",
      Username = "string"
    )
