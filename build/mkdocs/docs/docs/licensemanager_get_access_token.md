<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_access_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a temporary access token to use with AssumeRoleWithWebIdentity

### Description

Gets a temporary access token to use with AssumeRoleWithWebIdentity.
Access tokens are valid for one hour.

### Usage

    licensemanager_get_access_token(Token, TokenProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="licensemanager_get_access_token_:_Token">Token</code></td>
<td><p>[required] Refresh token, encoded as a JWT token.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_get_access_token_:_TokenProperties">TokenProperties</code></td>
<td><p>Token properties to validate against those present in the JWT
token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessToken = "string"
    )

### Request syntax

    svc$get_access_token(
      Token = "string",
      TokenProperties = list(
        "string"
      )
    )
