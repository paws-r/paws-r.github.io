<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_verify_software_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this API to register a user's entered time-based one-time password (TOTP) code and mark the user's software token MFA status as "verified" if successful

### Description

Use this API to register a user's entered time-based one-time password
(TOTP) code and mark the user's software token MFA status as "verified"
if successful. The request takes an access token or a session string,
but not both.

### Usage

    cognitoidentityprovider_verify_software_token(AccessToken, Session,
      UserCode, FriendlyDeviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_verify_software_token_:_AccessToken">AccessToken</code></td>
<td><p>A valid access token that Amazon Cognito issued to the user whose
software token you want to verify.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_verify_software_token_:_Session">Session</code></td>
<td><p>The session that should be passed both ways in challenge-response
calls to the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_verify_software_token_:_UserCode">UserCode</code></td>
<td><p>[required] The one- time password computed using the secret code
returned by <code>associate_software_token</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_verify_software_token_:_FriendlyDeviceName">FriendlyDeviceName</code></td>
<td><p>The friendly device name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "SUCCESS"|"ERROR",
      Session = "string"
    )

### Request syntax

    svc$verify_software_token(
      AccessToken = "string",
      Session = "string",
      UserCode = "string",
      FriendlyDeviceName = "string"
    )
