<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_create_identity_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new identity pool

### Description

Creates a new identity pool. The identity pool is a store of user
identity information that is specific to your AWS account. The keys for
`SupportedLoginProviders` are as follows:

-   Facebook: `graph.facebook.com`

-   Google: `accounts.google.com`

-   Amazon: `www.amazon.com`

-   Twitter: `api.twitter.com`

-   Digits: `www.digits.com`

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_create_identity_pool(IdentityPoolName,
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
id="cognitoidentity_create_identity_pool_:_IdentityPoolName">IdentityPoolName</code></td>
<td><p>[required] A string that you provide.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_create_identity_pool_:_AllowUnauthenticatedIdentities">AllowUnauthenticatedIdentities</code></td>
<td><p>[required] TRUE if the identity pool supports unauthenticated
logins.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_create_identity_pool_:_AllowClassicFlow">AllowClassicFlow</code></td>
<td><p>Enables or disables the Basic (Classic) authentication flow. For
more information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity
Pools (Federated Identities) Authentication Flow</a> in the <em>Amazon
Cognito Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_create_identity_pool_:_SupportedLoginProviders">SupportedLoginProviders</code></td>
<td><p>Optional key:value pairs mapping provider names to provider app
IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_create_identity_pool_:_DeveloperProviderName">DeveloperProviderName</code></td>
<td><p>The "domain" by which Cognito will refer to your users. This name
acts as a placeholder that allows your backend and the Cognito service
to communicate about the developer provider. For the
<code>DeveloperProviderName</code>, you can use letters as well as
period (<code>.</code>), underscore (<code
style="white-space: pre;">⁠_⁠</code>), and dash (<code>-</code>).</p>
<p>Once you have set a developer provider name, you cannot change it.
Please take care in setting this parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_create_identity_pool_:_OpenIdConnectProviderARNs">OpenIdConnectProviderARNs</code></td>
<td><p>The Amazon Resource Names (ARN) of the OpenID Connect
providers.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_create_identity_pool_:_CognitoIdentityProviders">CognitoIdentityProviders</code></td>
<td><p>An array of Amazon Cognito user pools and their client
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_create_identity_pool_:_SamlProviderARNs">SamlProviderARNs</code></td>
<td><p>An array of Amazon Resource Names (ARNs) of the SAML provider for
your identity pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentity_create_identity_pool_:_IdentityPoolTags">IdentityPoolTags</code></td>
<td><p>Tags to assign to the identity pool. A tag is a label that you
can apply to identity pools to categorize and manage them in different
ways, such as by purpose, owner, environment, or other
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

    svc$create_identity_pool(
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
