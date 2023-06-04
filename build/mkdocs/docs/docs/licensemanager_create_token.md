<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a long-lived token

### Description

Creates a long-lived token.

A refresh token is a JWT token used to get an access token. With an
access token, you can call AssumeRoleWithWebIdentity to get role
credentials that you can use to call License Manager to manage the
specified license.

### Usage

    licensemanager_create_token(LicenseArn, RoleArns, ExpirationInDays,
      TokenProperties, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_token_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license. The ARN is
mapped to the aud claim of the JWT token.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_token_:_RoleArns">RoleArns</code></td>
<td><p>Amazon Resource Name (ARN) of the IAM roles to embed in the
token. License Manager does not check whether the roles are in
use.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_token_:_ExpirationInDays">ExpirationInDays</code></td>
<td><p>Token expiration, in days, counted from token creation. The
default is 365 days.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_token_:_TokenProperties">TokenProperties</code></td>
<td><p>Data specified by the caller to be included in the JWT token. The
data is mapped to the amr claim of the JWT token.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_token_:_ClientToken">ClientToken</code></td>
<td><p>[required] Idempotency token, valid for 10 minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TokenId = "string",
      TokenType = "REFRESH_TOKEN",
      Token = "string"
    )

### Request syntax

    svc$create_token(
      LicenseArn = "string",
      RoleArns = list(
        "string"
      ),
      ExpirationInDays = 123,
      TokenProperties = list(
        "string"
      ),
      ClientToken = "string"
    )
