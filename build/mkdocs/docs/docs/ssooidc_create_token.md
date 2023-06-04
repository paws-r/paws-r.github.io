<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssooidc_create_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and returns an access token for the authorized client

### Description

Creates and returns an access token for the authorized client. The
access token issued will be used to fetch short-term credentials for the
assigned roles in the AWS account.

### Usage

    ssooidc_create_token(clientId, clientSecret, grantType, deviceCode,
      code, refreshToken, scope, redirectUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssooidc_create_token_:_clientId">clientId</code></td>
<td><p>[required] The unique identifier string for each client. This
value should come from the persisted result of the
<code>register_client</code> API.</p></td>
</tr>
<tr class="even">
<td><code
id="ssooidc_create_token_:_clientSecret">clientSecret</code></td>
<td><p>[required] A secret string generated for the client. This value
should come from the persisted result of the
<code>register_client</code> API.</p></td>
</tr>
<tr class="odd">
<td><code id="ssooidc_create_token_:_grantType">grantType</code></td>
<td><p>[required] Supports grant types for the authorization code,
refresh token, and device code request. For device code requests,
specify the following value:</p>
<p><code>urn:ietf:params:oauth:grant-type:device_code </code></p>
<p>For information about how to obtain the device code, see the
<code>start_device_authorization</code> topic.</p></td>
</tr>
<tr class="even">
<td><code id="ssooidc_create_token_:_deviceCode">deviceCode</code></td>
<td><p>Used only when calling this API for the device code grant type.
This short-term code is used to identify this authentication attempt.
This should come from an in-memory reference to the result of the
<code>start_device_authorization</code> API.</p></td>
</tr>
<tr class="odd">
<td><code id="ssooidc_create_token_:_code">code</code></td>
<td><p>The authorization code received from the authorization service.
This parameter is required to perform an authorization grant request to
get access to a token.</p></td>
</tr>
<tr class="even">
<td><code
id="ssooidc_create_token_:_refreshToken">refreshToken</code></td>
<td><p>Currently, <code>refreshToken</code> is not yet implemented and
is not supported. For more information about the features and
limitations of the current IAM Identity Center OIDC implementation, see
<em>Considerations for Using this Guide</em> in the <a
href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM
Identity Center OIDC API Reference</a>.</p>
<p>The token used to obtain an access token in the event that the access
token is invalid or expired.</p></td>
</tr>
<tr class="odd">
<td><code id="ssooidc_create_token_:_scope">scope</code></td>
<td><p>The list of scopes that is defined by the client. Upon
authorization, this list is used to restrict permissions when granting
an access token.</p></td>
</tr>
<tr class="even">
<td><code
id="ssooidc_create_token_:_redirectUri">redirectUri</code></td>
<td><p>The location of the application that will receive the
authorization code. Users authorize the service to send the request to
this location.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accessToken = "string",
      tokenType = "string",
      expiresIn = 123,
      refreshToken = "string",
      idToken = "string"
    )

### Request syntax

    svc$create_token(
      clientId = "string",
      clientSecret = "string",
      grantType = "string",
      deviceCode = "string",
      code = "string",
      refreshToken = "string",
      scope = list(
        "string"
      ),
      redirectUri = "string"
    )
