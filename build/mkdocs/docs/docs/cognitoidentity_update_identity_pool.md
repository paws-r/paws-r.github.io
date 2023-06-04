<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_update_identity_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an identity pool

### Description

Updates an identity pool.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_update_identity_pool(IdentityPoolId, IdentityPoolName,
      AllowUnauthenticatedIdentities, AllowClassicFlow,
      SupportedLoginProviders, DeveloperProviderName,
      OpenIdConnectProviderARNs, CognitoIdentityProviders, SamlProviderARNs,
      IdentityPoolTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_update_identity_pool_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_update_identity_pool_:_IdentityPoolName">IdentityPoolName</code></td>
<td><p>[required] A string that you provide.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_update_identity_pool_:_AllowUnauthenticatedIdentities">AllowUnauthenticatedIdentities</code></td>
<td><p>[required] TRUE if the identity pool supports unauthenticated
logins.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_update_identity_pool_:_AllowClassicFlow">AllowClassicFlow</code></td>
<td><p>Enables or disables the Basic (Classic) authentication flow. For
more information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity
Pools (Federated Identities) Authentication Flow</a> in the <em>Amazon
Cognito Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_update_identity_pool_:_SupportedLoginProviders">SupportedLoginProviders</code></td>
<td><p>Optional key:value pairs mapping provider names to provider app
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_update_identity_pool_:_DeveloperProviderName">DeveloperProviderName</code></td>
<td><p>The "domain" by which Cognito will refer to your users.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_update_identity_pool_:_OpenIdConnectProviderARNs">OpenIdConnectProviderARNs</code></td>
<td><p>The ARNs of the OpenID Connect providers.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_update_identity_pool_:_CognitoIdentityProviders">CognitoIdentityProviders</code></td>
<td><p>A list representing an Amazon Cognito user pool and its client
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_update_identity_pool_:_SamlProviderARNs">SamlProviderARNs</code></td>
<td><p>An array of Amazon Resource Names (ARNs) of the SAML provider for
your identity pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_update_identity_pool_:_IdentityPoolTags">IdentityPoolTags</code></td>
<td><p>The tags that are assigned to the identity pool. A tag is a label
that you can apply to identity pools to categorize and manage them in
different ways, such as by purpose, owner, environment, or other
criteria.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      IdentityPoolName = "string",
      AllowUnauthenticatedIdentities = TRUE|FALSE,
      AllowClassicFlow = TRUE|FALSE,
      SupportedLoginProviders = list(
        "string"
      ),
      DeveloperProviderName = "string",
      OpenIdConnectProviderARNs = list(
        "string"
      ),
      CognitoIdentityProviders = list(
        list(
          ProviderName = "string",
          ClientId = "string",
          ServerSideTokenCheck = TRUE|FALSE
        )
      ),
      SamlProviderARNs = list(
        "string"
      ),
      IdentityPoolTags = list(
        "string"
      )
    )

### Request syntax

    svc$update_identity_pool(
      IdentityPoolId = "string",
      IdentityPoolName = "string",
      AllowUnauthenticatedIdentities = TRUE|FALSE,
      AllowClassicFlow = TRUE|FALSE,
      SupportedLoginProviders = list(
        "string"
      ),
      DeveloperProviderName = "string",
      OpenIdConnectProviderARNs = list(
        "string"
      ),
      CognitoIdentityProviders = list(
        list(
          ProviderName = "string",
          ClientId = "string",
          ServerSideTokenCheck = TRUE|FALSE
        )
      ),
      SamlProviderARNs = list(
        "string"
      ),
      IdentityPoolTags = list(
        "string"
      )
    )
