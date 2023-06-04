<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_initiate_auth</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates the authentication flow, as an administrator

### Description

Initiates the authentication flow, as an administrator.

This action might generate an SMS text message. Starting June 1, 2021,
US telecom carriers require you to register an origination phone number
before you can send SMS messages to US phone numbers. If you use SMS
text messages in Amazon Cognito, you must register a phone number with
Amazon Pinpoint. Amazon Cognito uses the registered number
automatically. Otherwise, Amazon Cognito users who must receive SMS
messages might not be able to sign up, activate their accounts, or sign
in.

If you have never used SMS text messages with Amazon Cognito or any
other Amazon Web Service, Amazon Simple Notification Service might place
your account in the SMS sandbox. In
*<span href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
mode</span>* , you can send messages only to verified phone numbers.
After you test your app while in the sandbox environment, you can move
out of the sandbox and into production. For more information, see [SMS
message settings for Amazon Cognito user
pools](https://docs.aws.amazon.com/cognito/latest/developerguide/) in
the *Amazon Cognito Developer Guide*.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_initiate_auth(UserPoolId, ClientId,
      AuthFlow, AuthParameters, ClientMetadata, AnalyticsMetadata,
      ContextData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The ID of the Amazon Cognito user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_ClientId">ClientId</code></td>
<td><p>[required] The app client ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_AuthFlow">AuthFlow</code></td>
<td><p>[required] The authentication flow for this call to run. The API
action will depend on this value. For example:</p>
<ul>
<li><p><code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh
token and return new tokens.</p></li>
<li><p><code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and
<code>SRP_A</code> and return the Secure Remote Password (SRP) protocol
variables to be used for next challenge execution.</p></li>
<li><p><code>ADMIN_USER_PASSWORD_AUTH</code> will take in
<code>USERNAME</code> and <code>PASSWORD</code> and return the next
challenge or tokens.</p></li>
</ul>
<p>Valid values include:</p>
<ul>
<li><p><code>USER_SRP_AUTH</code>: Authentication flow for the Secure
Remote Password (SRP) protocol.</p></li>
<li><p><code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>:
Authentication flow for refreshing the access token and ID token by
supplying a valid refresh token.</p></li>
<li><p><code>CUSTOM_AUTH</code>: Custom authentication flow.</p></li>
<li><p><code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you
can pass in the USERNAME and PASSWORD directly if the flow is enabled
for calling the app client.</p></li>
<li><p><code>ADMIN_USER_PASSWORD_AUTH</code>: Admin-based user password
authentication. This replaces the <code>ADMIN_NO_SRP_AUTH</code>
authentication flow. In this flow, Amazon Cognito receives the password
in the request instead of using the SRP process to verify
passwords.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_AuthParameters">AuthParameters</code></td>
<td><p>The authentication parameters. These are inputs corresponding to
the <code>AuthFlow</code> that you're invoking. The required values
depend on the value of <code>AuthFlow</code>:</p>
<ul>
<li><p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required),
<code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the
app client is configured with a client secret),
<code>DEVICE_KEY</code>.</p></li>
<li><p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>:
<code>REFRESH_TOKEN</code> (required), <code>SECRET_HASH</code>
(required if the app client is configured with a client secret),
<code>DEVICE_KEY</code>.</p></li>
<li><p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code>
(required), <code>SECRET_HASH</code> (if app client is configured with
client secret), <code>PASSWORD</code> (required),
<code>DEVICE_KEY</code>.</p></li>
<li><p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required),
<code>SECRET_HASH</code> (if app client is configured with client
secret), <code>DEVICE_KEY</code>. To start the authentication flow with
password verification, include <code>ChallengeName: SRP_A</code> and
<code
style="white-space: pre;">⁠SRP_A: (The SRP_A Value)⁠</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
certain custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the AdminInitiateAuth API action, Amazon
Cognito invokes the Lambda functions that are specified for various
triggers. The ClientMetadata value is passed as input to the functions
for only the following triggers:</p>
<ul>
<li><p>Pre signup</p></li>
<li><p>Pre authentication</p></li>
<li><p>User migration</p></li>
</ul>
<p>When Amazon Cognito invokes the functions for these triggers, it
passes a JSON payload, which the function receives as input. This
payload contains a <code>validationData</code> attribute, which provides
the data that you assigned to the ClientMetadata parameter in your
AdminInitiateAuth request. In your function code in Lambda, you can
process the <code>validationData</code> value to enhance your workflow
for your specific needs.</p>
<p>When you use the AdminInitiateAuth API action, Amazon Cognito also
invokes the functions for the following triggers, but it doesn't provide
the ClientMetadata value as input:</p>
<ul>
<li><p>Post authentication</p></li>
<li><p>Custom message</p></li>
<li><p>Pre token generation</p></li>
<li><p>Create auth challenge</p></li>
<li><p>Define auth challenge</p></li>
<li><p>Verify auth challenge</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">Customizing
user pool Workflows with Lambda Triggers</a> in the <em>Amazon Cognito
Developer Guide</em>.</p>
<p>When you use the ClientMetadata parameter, remember that Amazon
Cognito won't do the following:</p>
<ul>
<li><p>Store the ClientMetadata value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers, the
ClientMetadata parameter serves no purpose.</p></li>
<li><p>Validate the ClientMetadata value.</p></li>
<li><p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to
provide sensitive information.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_AnalyticsMetadata">AnalyticsMetadata</code></td>
<td><p>The analytics metadata for collecting Amazon Pinpoint metrics for
<code>admin_initiate_auth</code> calls.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_initiate_auth_:_ContextData">ContextData</code></td>
<td><p>Contextual data about your user session, such as the device
fingerprint, IP address, or location. Amazon Cognito advanced security
evaluates the risk of an authentication event based on the context that
your app generates and passes to Amazon Cognito when it makes API
requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChallengeName = "SMS_MFA"|"SOFTWARE_TOKEN_MFA"|"SELECT_MFA_TYPE"|"MFA_SETUP"|"PASSWORD_VERIFIER"|"CUSTOM_CHALLENGE"|"DEVICE_SRP_AUTH"|"DEVICE_PASSWORD_VERIFIER"|"ADMIN_NO_SRP_AUTH"|"NEW_PASSWORD_REQUIRED",
      Session = "string",
      ChallengeParameters = list(
        "string"
      ),
      AuthenticationResult = list(
        AccessToken = "string",
        ExpiresIn = 123,
        TokenType = "string",
        RefreshToken = "string",
        IdToken = "string",
        NewDeviceMetadata = list(
          DeviceKey = "string",
          DeviceGroupKey = "string"
        )
      )
    )

### Request syntax

    svc$admin_initiate_auth(
      UserPoolId = "string",
      ClientId = "string",
      AuthFlow = "USER_SRP_AUTH"|"REFRESH_TOKEN_AUTH"|"REFRESH_TOKEN"|"CUSTOM_AUTH"|"ADMIN_NO_SRP_AUTH"|"USER_PASSWORD_AUTH"|"ADMIN_USER_PASSWORD_AUTH",
      AuthParameters = list(
        "string"
      ),
      ClientMetadata = list(
        "string"
      ),
      AnalyticsMetadata = list(
        AnalyticsEndpointId = "string"
      ),
      ContextData = list(
        IpAddress = "string",
        ServerName = "string",
        ServerPath = "string",
        HttpHeaders = list(
          list(
            headerName = "string",
            headerValue = "string"
          )
        ),
        EncodedData = "string"
      )
    )
