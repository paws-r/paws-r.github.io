<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_change_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the password for a specified user in a user pool

### Description

Changes the password for a specified user in a user pool.

### Usage

    cognitoidentityprovider_change_password(PreviousPassword,
      ProposedPassword, AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_change_password_:_PreviousPassword">PreviousPassword</code></td>
<td><p>[required] The old password.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_change_password_:_ProposedPassword">ProposedPassword</code></td>
<td><p>[required] The new password.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_change_password_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose password you want to change.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$change_password(
      PreviousPassword = "string",
      ProposedPassword = "string",
      AccessToken = "string"
    )
