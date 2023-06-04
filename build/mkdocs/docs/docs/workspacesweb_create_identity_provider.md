<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an identity provider resource that is then associated with a web portal

### Description

Creates an identity provider resource that is then associated with a web
portal.

### Usage

    workspacesweb_create_identity_provider(clientToken,
      identityProviderDetails, identityProviderName, identityProviderType,
      portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_identity_provider_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
returns the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_identity_provider_:_identityProviderDetails">identityProviderDetails</code></td>
<td><p>[required] The identity provider details. The following list
describes the provider detail keys for each identity provider type.</p>
<ul>
<li><p>For Google and Login with Amazon:</p>
<ul>
<li><p><code>client_id</code></p></li>
<li><p><code>client_secret</code></p></li>
<li><p><code>authorize_scopes</code></p></li>
</ul></li>
<li><p>For Facebook:</p>
<ul>
<li><p><code>client_id</code></p></li>
<li><p><code>client_secret</code></p></li>
<li><p><code>authorize_scopes</code></p></li>
<li><p><code>api_version</code></p></li>
</ul></li>
<li><p>For Sign in with Apple:</p>
<ul>
<li><p><code>client_id</code></p></li>
<li><p><code>team_id</code></p></li>
<li><p><code>key_id</code></p></li>
<li><p><code>private_key</code></p></li>
<li><p><code>authorize_scopes</code></p></li>
</ul></li>
<li><p>For OIDC providers:</p>
<ul>
<li><p><code>client_id</code></p></li>
<li><p><code>client_secret</code></p></li>
<li><p><code>attributes_request_method</code></p></li>
<li><p><code>oidc_issuer</code></p></li>
<li><p><code>authorize_scopes</code></p></li>
<li><p><code>authorize_url</code> <em>if not available from discovery
URL specified by oidc_issuer key</em></p></li>
<li><p><code>token_url</code> <em>if not available from discovery URL
specified by oidc_issuer key</em></p></li>
<li><p><code>attributes_url</code> <em>if not available from discovery
URL specified by oidc_issuer key</em></p></li>
<li><p><code>jwks_uri</code> <em>if not available from discovery URL
specified by oidc_issuer key</em></p></li>
</ul></li>
<li><p>For SAML providers:</p>
<ul>
<li><p><code>MetadataFile</code> OR <code>MetadataURL</code></p></li>
<li><p><code>IDPSignout</code> (boolean) <em>optional</em></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_identity_provider_:_identityProviderName">identityProviderName</code></td>
<td><p>[required] The identity provider name.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_identity_provider_:_identityProviderType">identityProviderType</code></td>
<td><p>[required] The identity provider type.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_identity_provider_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      identityProviderArn = "string"
    )

### Request syntax

    svc$create_identity_provider(
      clientToken = "string",
      identityProviderDetails = list(
        "string"
      ),
      identityProviderName = "string",
      identityProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"SignInWithApple"|"OIDC",
      portalArn = "string"
    )
