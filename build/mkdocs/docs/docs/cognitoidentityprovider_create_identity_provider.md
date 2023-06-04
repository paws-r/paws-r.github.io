<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_create_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IdP for a user pool

### Description

Creates an IdP for a user pool.

### Usage

    cognitoidentityprovider_create_identity_provider(UserPoolId,
      ProviderName, ProviderType, ProviderDetails, AttributeMapping,
      IdpIdentifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_ProviderName">ProviderName</code></td>
<td><p>[required] The IdP name.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_ProviderType">ProviderType</code></td>
<td><p>[required] The IdP type.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_ProviderDetails">ProviderDetails</code></td>
<td><p>[required] The IdP details. The following list describes the
provider detail keys for each IdP type.</p>
<ul>
<li><p>For Google and Login with Amazon:</p>
<ul>
<li><p>client_id</p></li>
<li><p>client_secret</p></li>
<li><p>authorize_scopes</p></li>
</ul></li>
<li><p>For Facebook:</p>
<ul>
<li><p>client_id</p></li>
<li><p>client_secret</p></li>
<li><p>authorize_scopes</p></li>
<li><p>api_version</p></li>
</ul></li>
<li><p>For Sign in with Apple:</p>
<ul>
<li><p>client_id</p></li>
<li><p>team_id</p></li>
<li><p>key_id</p></li>
<li><p>private_key</p></li>
<li><p>authorize_scopes</p></li>
</ul></li>
<li><p>For OpenID Connect (OIDC) providers:</p>
<ul>
<li><p>client_id</p></li>
<li><p>client_secret</p></li>
<li><p>attributes_request_method</p></li>
<li><p>oidc_issuer</p></li>
<li><p>authorize_scopes</p></li>
<li><p>The following keys are only present if Amazon Cognito didn't
discover them at the <code>oidc_issuer</code> URL.</p>
<ul>
<li><p>authorize_url</p></li>
<li><p>token_url</p></li>
<li><p>attributes_url</p></li>
<li><p>jwks_uri</p></li>
</ul></li>
<li><p>Amazon Cognito sets the value of the following keys
automatically. They are read-only.</p>
<ul>
<li><p>attributes_url_add_attributes</p></li>
</ul></li>
</ul></li>
<li><p>For SAML providers:</p>
<ul>
<li><p>MetadataFile or MetadataURL</p></li>
<li><p>IDPSignout <em>optional</em></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_AttributeMapping">AttributeMapping</code></td>
<td><p>A mapping of IdP attributes to standard and custom user pool
attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_identity_provider_:_IdpIdentifiers">IdpIdentifiers</code></td>
<td><p>A list of IdP identifiers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityProvider = list(
        UserPoolId = "string",
        ProviderName = "string",
        ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
        ProviderDetails = list(
          "string"
        ),
        AttributeMapping = list(
          "string"
        ),
        IdpIdentifiers = list(
          "string"
        ),
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_identity_provider(
      UserPoolId = "string",
      ProviderName = "string",
      ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
      ProviderDetails = list(
        "string"
      ),
      AttributeMapping = list(
        "string"
      ),
      IdpIdentifiers = list(
        "string"
      )
    )
