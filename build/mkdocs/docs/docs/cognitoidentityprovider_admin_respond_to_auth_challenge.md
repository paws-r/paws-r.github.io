<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_respond_to_auth_challenge</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Responds to an authentication challenge, as an administrator

### Description

Responds to an authentication challenge, as an administrator.

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

    cognitoidentityprovider_admin_respond_to_auth_challenge(UserPoolId,
      ClientId, ChallengeName, ChallengeResponses, Session, AnalyticsMetadata,
      ContextData, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The ID of the Amazon Cognito user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_ClientId">ClientId</code></td>
<td><p>[required] The app client ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_ChallengeName">ChallengeName</code></td>
<td><p>[required] The challenge name. For more information, see
<code>admin_initiate_auth</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_ChallengeResponses">ChallengeResponses</code></td>
<td><p>The challenge responses. These are inputs corresponding to the
value of <code>ChallengeName</code>, for example:</p>
<ul>
<li><p><code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>,
<code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is
configured with client secret).</p></li>
<li><p><code>PASSWORD_VERIFIER</code>:
<code>PASSWORD_CLAIM_SIGNATURE</code>,
<code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
<code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is
configured with client secret).</p>
<p><code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when
signing in with a remembered device.</p></li>
<li><p><code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>,
<code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is
configured with client secret).</p></li>
<li><p><code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
<code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is
configured with client secret). To set any required attributes that
Amazon Cognito returned as <code>requiredAttributes</code> in the
<code>admin_initiate_auth</code> response, add a
<code>userAttributes.attributename </code> parameter. This parameter can
also set values for writable attributes that aren't required by your
user pool.</p>
<p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't
modify a required attribute that already has a value. In
<code>admin_respond_to_auth_challenge</code>, set a value for any keys
that Amazon Cognito returned in the <code>requiredAttributes</code>
parameter, then use the <code>admin_update_user_attributes</code> API
operation to modify the value of any additional attributes.</p></li>
<li><p><code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you
must use the session value returned by
<code>verify_software_token</code> in the <code>Session</code>
parameter.</p></li>
</ul>
<p>The value of the <code>USERNAME</code> attribute must be the user's
actual username, not an alias (such as an email address or phone
number). To make this simpler, the <code>admin_initiate_auth</code>
response includes the actual username value in the
<code>USERNAMEUSER_ID_FOR_SRP</code> attribute. This happens even if you
specified an alias in your call to
<code>admin_initiate_auth</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_Session">Session</code></td>
<td><p>The session that should be passed both ways in challenge-response
calls to the service. If an <code>initiate_auth</code> or
<code>respond_to_auth_challenge</code> API call determines that the
caller must pass another challenge, it returns a session with other
challenge parameters. This session should be passed as it is to the next
<code>respond_to_auth_challenge</code> API call.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_AnalyticsMetadata">AnalyticsMetadata</code></td>
<td><p>The analytics metadata for collecting Amazon Pinpoint metrics for
<code>admin_respond_to_auth_challenge</code> calls.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_ContextData">ContextData</code></td>
<td><p>Contextual data about your user session, such as the device
fingerprint, IP address, or location. Amazon Cognito advanced security
evaluates the risk of an authentication event based on the context that
your app generates and passes to Amazon Cognito when it makes API
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_respond_to_auth_challenge_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the AdminRespondToAuthChallenge API action,
Amazon Cognito invokes any functions that you have assigned to the
following triggers:</p>
<ul>
<li><p>pre sign-up</p></li>
<li><p>custom message</p></li>
<li><p>post authentication</p></li>
<li><p>user migration</p></li>
<li><p>pre token generation</p></li>
<li><p>define auth challenge</p></li>
<li><p>create auth challenge</p></li>
<li><p>verify auth challenge response</p></li>
</ul>
<p>When Amazon Cognito invokes any of these functions, it passes a JSON
payload, which the function receives as input. This payload contains a
<code>clientMetadata</code> attribute that provides the data that you
assigned to the ClientMetadata parameter in your
AdminRespondToAuthChallenge request. In your function code in Lambda,
you can process the <code>clientMetadata</code> value to enhance your
workflow for your specific needs.</p>
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

    svc$admin_respond_to_auth_challenge(
      UserPoolId = "string",
      ClientId = "string",
      ChallengeName = "SMS_MFA"|"SOFTWARE_TOKEN_MFA"|"SELECT_MFA_TYPE"|"MFA_SETUP"|"PASSWORD_VERIFIER"|"CUSTOM_CHALLENGE"|"DEVICE_SRP_AUTH"|"DEVICE_PASSWORD_VERIFIER"|"ADMIN_NO_SRP_AUTH"|"NEW_PASSWORD_REQUIRED",
      ChallengeResponses = list(
        "string"
      ),
      Session = "string",
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
      ),
      ClientMetadata = list(
        "string"
      )
    )
