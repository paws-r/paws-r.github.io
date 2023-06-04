<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sso_get_role_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the STS short-term credentials for a given role name that is assigned to the user

### Description

Returns the STS short-term credentials for a given role name that is
assigned to the user.

### Usage

    sso_get_role_credentials(roleName, accountId, accessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sso_get_role_credentials_:_roleName">roleName</code></td>
<td><p>[required] The friendly name of the role that is assigned to the
user.</p></td>
</tr>
<tr class="even">
<td><code
id="sso_get_role_credentials_:_accountId">accountId</code></td>
<td><p>[required] The identifier for the AWS account that is assigned to
the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="sso_get_role_credentials_:_accessToken">accessToken</code></td>
<td><p>[required] The token issued by the <code>CreateToken</code> API
call. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a>
in the <em>IAM Identity Center OIDC API Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      roleCredentials = list(
        accessKeyId = "string",
        secretAccessKey = "string",
        sessionToken = "string",
        expiration = 123
      )
    )

### Request syntax

    svc$get_role_credentials(
      roleName = "string",
      accountId = "string",
      accessToken = "string"
    )
