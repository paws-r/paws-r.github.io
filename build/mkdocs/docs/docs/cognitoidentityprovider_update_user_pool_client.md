<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_user_pool_client</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified user pool app client with the specified attributes

### Description

Updates the specified user pool app client with the specified
attributes. You can get a list of the current user pool app client
settings using `describe_user_pool_client`.

If you don't provide a value for an attribute, it will be set to the
default value.

You can also use this operation to enable token revocation for user pool
clients. For more information about revoking tokens, see `revoke_token`.

### Usage

    cognitoidentityprovider_update_user_pool_client(UserPoolId, ClientId,
      ClientName, RefreshTokenValidity, AccessTokenValidity, IdTokenValidity,
      TokenValidityUnits, ReadAttributes, WriteAttributes, ExplicitAuthFlows,
      SupportedIdentityProviders, CallbackURLs, LogoutURLs,
      DefaultRedirectURI, AllowedOAuthFlows, AllowedOAuthScopes,
      AllowedOAuthFlowsUserPoolClient, AnalyticsConfiguration,
      PreventUserExistenceErrors, EnableTokenRevocation,
      EnablePropagateAdditionalUserContextData, AuthSessionValidity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
update the user pool client.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_ClientId">ClientId</code></td>
<td><p>[required] The ID of the client associated with the user
pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_ClientName">ClientName</code></td>
<td><p>The client name from the update user pool client
request.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_RefreshTokenValidity">RefreshTokenValidity</code></td>
<td><p>The refresh token time limit. After this limit expires, your user
can't use their refresh token. To specify the time unit for
<code>RefreshTokenValidity</code> as <code>seconds</code>,
<code>minutes</code>, <code>hours</code>, or <code>days</code>, set a
<code>TokenValidityUnits</code> value in your API request.</p>
<p>For example, when you set <code>RefreshTokenValidity</code> as
<code>10</code> and <code>TokenValidityUnits</code> as
<code>days</code>, your user can refresh their session and retrieve new
access and ID tokens for 10 days.</p>
<p>The default time unit for <code>RefreshTokenValidity</code> in an API
request is days. You can't set <code>RefreshTokenValidity</code> to 0.
If you do, Amazon Cognito overrides the value with the default value of
30 days. <em>Valid range</em> is displayed below in seconds.</p>
<p>If you don't specify otherwise in the configuration of your app
client, your refresh tokens are valid for 30 days.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AccessTokenValidity">AccessTokenValidity</code></td>
<td><p>The access token time limit. After this limit expires, your user
can't use their access token. To specify the time unit for
<code>AccessTokenValidity</code> as <code>seconds</code>,
<code>minutes</code>, <code>hours</code>, or <code>days</code>, set a
<code>TokenValidityUnits</code> value in your API request.</p>
<p>For example, when you set <code>AccessTokenValidity</code> to
<code>10</code> and <code>TokenValidityUnits</code> to
<code>hours</code>, your user can authorize access with their access
token for 10 hours.</p>
<p>The default time unit for <code>AccessTokenValidity</code> in an API
request is hours. <em>Valid range</em> is displayed below in
seconds.</p>
<p>If you don't specify otherwise in the configuration of your app
client, your access tokens are valid for one hour.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_IdTokenValidity">IdTokenValidity</code></td>
<td><p>The ID token time limit. After this limit expires, your user
can't use their ID token. To specify the time unit for
<code>IdTokenValidity</code> as <code>seconds</code>,
<code>minutes</code>, <code>hours</code>, or <code>days</code>, set a
<code>TokenValidityUnits</code> value in your API request.</p>
<p>For example, when you set <code>IdTokenValidity</code> as
<code>10</code> and <code>TokenValidityUnits</code> as
<code>hours</code>, your user can authenticate their session with their
ID token for 10 hours.</p>
<p>The default time unit for <code>AccessTokenValidity</code> in an API
request is hours. <em>Valid range</em> is displayed below in
seconds.</p>
<p>If you don't specify otherwise in the configuration of your app
client, your ID tokens are valid for one hour.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_TokenValidityUnits">TokenValidityUnits</code></td>
<td><p>The units in which the validity times are represented. The
default unit for RefreshToken is days, and the default for ID and access
tokens is hours.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_ReadAttributes">ReadAttributes</code></td>
<td><p>The read-only attributes of the user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_WriteAttributes">WriteAttributes</code></td>
<td><p>The writeable attributes of the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_ExplicitAuthFlows">ExplicitAuthFlows</code></td>
<td><p>The authentication flows that you want your user pool client to
support. For each app client in your user pool, you can sign in your
users with any combination of one or more flows, including with a user
name and Secure Remote Password (SRP), a user name and password, or a
custom authentication process that you define with Lambda functions.</p>
<p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your
user client supports <code>ALLOW_REFRESH_TOKEN_AUTH</code>,
<code>ALLOW_USER_SRP_AUTH</code>, and
<code>ALLOW_CUSTOM_AUTH</code>.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based
user password authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>.
This setting replaces the <code>ADMIN_NO_SRP_AUTH</code> setting. With
this authentication flow, your app passes a user name and password to
Amazon Cognito in the request, instead of using the Secure Remote
Password (SRP) protocol to securely transmit the password.</p></li>
<li><p><code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
authentication.</p></li>
<li><p><code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
authentication. In this flow, Amazon Cognito receives the password in
the request instead of using the SRP protocol to verify
passwords.</p></li>
<li><p><code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based
authentication.</p></li>
<li><p><code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
tokens.</p></li>
</ul>
<p>In some environments, you will see the values
<code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or
<code>USER_PASSWORD_AUTH</code>. You can't assign these legacy
<code>ExplicitAuthFlows</code> values to user pool clients at the same
time as values that begin with <code>ALLOW_</code>, like
<code>ALLOW_USER_SRP_AUTH</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_SupportedIdentityProviders">SupportedIdentityProviders</code></td>
<td><p>A list of provider names for the IdPs that this client supports.
The following are supported: <code>COGNITO</code>,
<code>Facebook</code>, <code>Google</code>,
<code>SignInWithApple</code>, <code>LoginWithAmazon</code>, and the
names of your own SAML and OIDC providers.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_CallbackURLs">CallbackURLs</code></td>
<td><p>A list of allowed redirect (callback) URLs for the IdPs.</p>
<p>A redirect URI must:</p>
<ul>
<li><p>Be an absolute URI.</p></li>
<li><p>Be registered with the authorization server.</p></li>
<li><p>Not include a fragment component.</p></li>
</ul>
<p>See <a
href="https://datatracker.ietf.org/doc/html/rfc6749#section-3.1.2">OAuth
2.0 - Redirection Endpoint</a>.</p>
<p>Amazon Cognito requires HTTPS over HTTP except for http://localhost
for testing purposes only.</p>
<p>App callback URLs such as <code
style="white-space: pre;">⁠myapp://example⁠</code> are also
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_LogoutURLs">LogoutURLs</code></td>
<td><p>A list of allowed logout URLs for the IdPs.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_DefaultRedirectURI">DefaultRedirectURI</code></td>
<td><p>The default redirect URI. Must be in the
<code>CallbackURLs</code> list.</p>
<p>A redirect URI must:</p>
<ul>
<li><p>Be an absolute URI.</p></li>
<li><p>Be registered with the authorization server.</p></li>
<li><p>Not include a fragment component.</p></li>
</ul>
<p>See <a
href="https://datatracker.ietf.org/doc/html/rfc6749#section-3.1.2">OAuth
2.0 - Redirection Endpoint</a>.</p>
<p>Amazon Cognito requires HTTPS over HTTP except for <code
style="white-space: pre;">⁠http://localhost⁠</code> for testing purposes
only.</p>
<p>App callback URLs such as <code
style="white-space: pre;">⁠myapp://example⁠</code> are also
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AllowedOAuthFlows">AllowedOAuthFlows</code></td>
<td><p>The allowed OAuth flows.</p>
<p><strong>code</strong></p>
<p>Use a code grant flow, which provides an authorization code as the
response. This code can be exchanged for access tokens with the <code
style="white-space: pre;">⁠/oauth2/token⁠</code> endpoint.</p>
<p><strong>implicit</strong></p>
<p>Issue the access token (and, optionally, ID token, based on scopes)
directly to your user.</p>
<p><strong>client_credentials</strong></p>
<p>Issue the access token from the <code
style="white-space: pre;">⁠/oauth2/token⁠</code> endpoint directly to a
non-person user using a combination of the client ID and client
secret.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AllowedOAuthScopes">AllowedOAuthScopes</code></td>
<td><p>The allowed OAuth scopes. Possible values provided by OAuth are
<code>phone</code>, <code>email</code>, <code>openid</code>, and
<code>profile</code>. Possible values provided by Amazon Web Services
are <code>aws.cognito.signin.user.admin</code>. Custom scopes created in
Resource Servers are also supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AllowedOAuthFlowsUserPoolClient">AllowedOAuthFlowsUserPoolClient</code></td>
<td><p>Set to true if the client is allowed to follow the OAuth protocol
when interacting with Amazon Cognito user pools.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AnalyticsConfiguration">AnalyticsConfiguration</code></td>
<td><p>The Amazon Pinpoint analytics configuration necessary to collect
metrics for this user pool.</p>
<p>In Amazon Web Services Regions where Amazon Pinpoint isn't available,
user pools only support sending events to Amazon Pinpoint projects in
us-east-1. In Regions where Amazon Pinpoint is available, user pools
support sending events to Amazon Pinpoint projects within that same
Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_PreventUserExistenceErrors">PreventUserExistenceErrors</code></td>
<td><p>Errors and responses that you want Amazon Cognito APIs to return
during authentication, account confirmation, and password recovery when
the user doesn't exist in the user pool. When set to
<code>ENABLED</code> and the user doesn't exist, authentication returns
an error indicating either the username or password was incorrect.
Account confirmation and password recovery return a response indicating
a code was sent to a simulated destination. When set to
<code>LEGACY</code>, those APIs return a
<code>UserNotFoundException</code> exception if the user doesn't exist
in the user pool.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>ENABLED</code> - This prevents user existence-related
errors.</p></li>
<li><p><code>LEGACY</code> - This represents the early behavior of
Amazon Cognito where user existence related errors aren't
prevented.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_EnableTokenRevocation">EnableTokenRevocation</code></td>
<td><p>Activates or deactivates token revocation. For more information
about revoking tokens, see <code>revoke_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_EnablePropagateAdditionalUserContextData">EnablePropagateAdditionalUserContextData</code></td>
<td><p>Activates the propagation of additional user context data. For
more information about propagation of user context data, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding
advanced security to a user pool</a>. If you don’t include this
parameter, you can't send device fingerprint information, including
source IP address, to Amazon Cognito advanced security. You can only
activate <code>EnablePropagateAdditionalUserContextData</code> in an app
client that has a client secret.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_client_:_AuthSessionValidity">AuthSessionValidity</code></td>
<td><p>Amazon Cognito creates a session token for each API request in an
authentication flow. <code>AuthSessionValidity</code> is the duration,
in minutes, of that session token. Your user pool native user must
respond to each authentication challenge before the session
expires.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPoolClient = list(
        UserPoolId = "string",
        ClientName = "string",
        ClientId = "string",
        ClientSecret = "string",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        RefreshTokenValidity = 123,
        AccessTokenValidity = 123,
        IdTokenValidity = 123,
        TokenValidityUnits = list(
          AccessToken = "seconds"|"minutes"|"hours"|"days",
          IdToken = "seconds"|"minutes"|"hours"|"days",
          RefreshToken = "seconds"|"minutes"|"hours"|"days"
        ),
        ReadAttributes = list(
          "string"
        ),
        WriteAttributes = list(
          "string"
        ),
        ExplicitAuthFlows = list(
          "ADMIN_NO_SRP_AUTH"|"CUSTOM_AUTH_FLOW_ONLY"|"USER_PASSWORD_AUTH"|"ALLOW_ADMIN_USER_PASSWORD_AUTH"|"ALLOW_CUSTOM_AUTH"|"ALLOW_USER_PASSWORD_AUTH"|"ALLOW_USER_SRP_AUTH"|"ALLOW_REFRESH_TOKEN_AUTH"
        ),
        SupportedIdentityProviders = list(
          "string"
        ),
        CallbackURLs = list(
          "string"
        ),
        LogoutURLs = list(
          "string"
        ),
        DefaultRedirectURI = "string",
        AllowedOAuthFlows = list(
          "code"|"implicit"|"client_credentials"
        ),
        AllowedOAuthScopes = list(
          "string"
        ),
        AllowedOAuthFlowsUserPoolClient = TRUE|FALSE,
        AnalyticsConfiguration = list(
          ApplicationId = "string",
          ApplicationArn = "string",
          RoleArn = "string",
          ExternalId = "string",
          UserDataShared = TRUE|FALSE
        ),
        PreventUserExistenceErrors = "LEGACY"|"ENABLED",
        EnableTokenRevocation = TRUE|FALSE,
        EnablePropagateAdditionalUserContextData = TRUE|FALSE,
        AuthSessionValidity = 123
      )
    )

### Request syntax

    svc$update_user_pool_client(
      UserPoolId = "string",
      ClientId = "string",
      ClientName = "string",
      RefreshTokenValidity = 123,
      AccessTokenValidity = 123,
      IdTokenValidity = 123,
      TokenValidityUnits = list(
        AccessToken = "seconds"|"minutes"|"hours"|"days",
        IdToken = "seconds"|"minutes"|"hours"|"days",
        RefreshToken = "seconds"|"minutes"|"hours"|"days"
      ),
      ReadAttributes = list(
        "string"
      ),
      WriteAttributes = list(
        "string"
      ),
      ExplicitAuthFlows = list(
        "ADMIN_NO_SRP_AUTH"|"CUSTOM_AUTH_FLOW_ONLY"|"USER_PASSWORD_AUTH"|"ALLOW_ADMIN_USER_PASSWORD_AUTH"|"ALLOW_CUSTOM_AUTH"|"ALLOW_USER_PASSWORD_AUTH"|"ALLOW_USER_SRP_AUTH"|"ALLOW_REFRESH_TOKEN_AUTH"
      ),
      SupportedIdentityProviders = list(
        "string"
      ),
      CallbackURLs = list(
        "string"
      ),
      LogoutURLs = list(
        "string"
      ),
      DefaultRedirectURI = "string",
      AllowedOAuthFlows = list(
        "code"|"implicit"|"client_credentials"
      ),
      AllowedOAuthScopes = list(
        "string"
      ),
      AllowedOAuthFlowsUserPoolClient = TRUE|FALSE,
      AnalyticsConfiguration = list(
        ApplicationId = "string",
        ApplicationArn = "string",
        RoleArn = "string",
        ExternalId = "string",
        UserDataShared = TRUE|FALSE
      ),
      PreventUserExistenceErrors = "LEGACY"|"ENABLED",
      EnableTokenRevocation = TRUE|FALSE,
      EnablePropagateAdditionalUserContextData = TRUE|FALSE,
      AuthSessionValidity = 123
    )
