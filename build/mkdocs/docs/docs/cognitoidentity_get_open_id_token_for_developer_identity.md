<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_open_id_token_for_developer_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process

### Description

Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect
token for a user authenticated by your backend authentication process.
Supplying multiple logins will create an implicit linked account. You
can only specify one developer provider as part of the `Logins` map,
which is linked to the identity pool. The developer provider is the
"domain" by which Cognito will refer to your users.

You can use `get_open_id_token_for_developer_identity` to create a new
identity and to link new logins (that is, user credentials issued by a
public provider or developer provider) to an existing identity. When you
want to create a new identity, the `IdentityId` should be null. When you
want to associate a new login with an existing
authenticated/unauthenticated identity, you can do so by providing the
existing `IdentityId`. This API will create the identity in the
specified `IdentityPoolId`.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_get_open_id_token_for_developer_identity(IdentityPoolId,
      IdentityId, Logins, PrincipalTags, TokenDuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_get_open_id_token_for_developer_identity_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_open_id_token_for_developer_identity_:_IdentityId">IdentityId</code></td>
<td><p>A unique identifier in the format REGION:GUID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_get_open_id_token_for_developer_identity_:_Logins">Logins</code></td>
<td><p>[required] A set of optional name-value pairs that map provider
names to provider tokens. Each name-value pair represents a user from a
public provider or developer provider. If the user is from a developer
provider, the name-value pair will follow the syntax
<code>"developer_provider_name": "developer_user_identifier"</code>. The
developer provider is the "domain" by which Cognito will refer to your
users; you provided this domain while creating/updating the identity
pool. The developer user identifier is an identifier from your backend
that uniquely identifies a user. When you create an identity pool, you
can specify the supported logins.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_open_id_token_for_developer_identity_:_PrincipalTags">PrincipalTags</code></td>
<td><p>Use this operation to configure attribute mappings for custom
providers.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_get_open_id_token_for_developer_identity_:_TokenDuration">TokenDuration</code></td>
<td><p>The expiration time of the token, in seconds. You can specify a
custom expiration time for the token so that you can cache it. If you
don't provide an expiration time, the token is valid for 15 minutes. You
can exchange the token with Amazon STS for temporary AWS credentials,
which are valid for a maximum of one hour. The maximum token duration
you can set is 24 hours. You should take care in setting the expiration
time for a token, as there are significant security implications: an
attacker could use a leaked token to access your AWS resources for the
token's duration.</p>
<p>Please provide for a small grace period, usually no more than 5
minutes, to account for clock skew.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string",
      Token = "string"
    )

### Request syntax

    svc$get_open_id_token_for_developer_identity(
      IdentityPoolId = "string",
      IdentityId = "string",
      Logins = list(
        "string"
      ),
      PrincipalTags = list(
        "string"
      ),
      TokenDuration = 123
    )
