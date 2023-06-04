<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_associate_software_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Begins setup of time-based one-time password (TOTP) multi-factor authentication (MFA) for a user, with a unique private key that Amazon Cognito generates and returns in the API response

### Description

Begins setup of time-based one-time password (TOTP) multi-factor
authentication (MFA) for a user, with a unique private key that Amazon
Cognito generates and returns in the API response. You can authorize an
`associate_software_token` request with either the user's access token,
or a session string from a challenge response that you received from
Amazon Cognito.

Amazon Cognito disassociates an existing software token when you verify
the new token in a
[VerifySoftwareToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html)
API request. If you don't verify the software token and your user pool
doesn't require MFA, the user can then authenticate with user name and
password credentials alone. If your user pool requires TOTP MFA, Amazon
Cognito generates an `MFA_SETUP` or `SOFTWARE_TOKEN_SETUP` challenge
each time your user signs. Complete setup with
`associate_software_token` and `verify_software_token`.

After you set up software token MFA for your user, Amazon Cognito
generates a `SOFTWARE_TOKEN_MFA` challenge when they authenticate.
Respond to this challenge with your user's TOTP.

### Usage

    cognitoidentityprovider_associate_software_token(AccessToken, Session)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_associate_software_token_:_AccessToken">AccessToken</code></td>
<td><p>A valid access token that Amazon Cognito issued to the user whose
software token you want to generate.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_associate_software_token_:_Session">Session</code></td>
<td><p>The session that should be passed both ways in challenge-response
calls to the service. This allows authentication of the user as part of
the MFA setup process.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecretCode = "string",
      Session = "string"
    )

### Request syntax

    svc$associate_software_token(
      AccessToken = "string",
      Session = "string"
    )
