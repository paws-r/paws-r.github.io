<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_credentials_for_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns credentials for the provided identity ID

### Description

Returns credentials for the provided identity ID. Any provided logins
will be validated against supported login providers. If the token is for
cognito-identity.amazonaws.com, it will be passed through to AWS
Security Token Service with the appropriate role for the token.

This is a public API. You do not need any credentials to call this API.

### Usage

    cognitoidentity_get_credentials_for_identity(IdentityId, Logins,
      CustomRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_get_credentials_for_identity_:_IdentityId">IdentityId</code></td>
<td><p>[required] A unique identifier in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_credentials_for_identity_:_Logins">Logins</code></td>
<td><p>A set of optional name-value pairs that map provider names to
provider tokens. The name-value pair will follow the syntax
"provider_name": "provider_user_identifier".</p>
<p>Logins should not be specified when trying to get credentials for an
unauthenticated identity.</p>
<p>The Logins parameter is required when using identities associated
with external identity providers such as Facebook. For examples of
<code>Logins</code> maps, see the code examples in the <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html">External
Identity Providers</a> section of the Amazon Cognito Developer
Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_get_credentials_for_identity_:_CustomRoleArn">CustomRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the role to be assumed when
multiple roles were received in the token from the identity provider.
For example, a SAML-based identity provider. This parameter is optional
for identity providers that do not support role customization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string",
      Credentials = list(
        AccessKeyId = "string",
        SecretKey = "string",
        SessionToken = "string",
        Expiration = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_credentials_for_identity(
      IdentityId = "string",
      Logins = list(
        "string"
      ),
      CustomRoleArn = "string"
    )
