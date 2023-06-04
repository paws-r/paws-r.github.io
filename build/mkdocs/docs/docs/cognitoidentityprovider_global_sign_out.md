<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_global_sign_out</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Signs out users from all devices

### Description

Signs out users from all devices. It also invalidates all refresh tokens
that Amazon Cognito has issued to a user. A user can still use a hosted
UI cookie to retrieve new tokens for the duration of the 1-hour cookie
validity period.

### Usage

    cognitoidentityprovider_global_sign_out(AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_global_sign_out_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user who you want to sign out.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$global_sign_out(
      AccessToken = "string"
    )
