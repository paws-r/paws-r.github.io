<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_respond_to_auth_challenge</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Responds to the authentication challenge

### Description

Responds to the authentication challenge.

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

### Usage

    cognitoidentityprovider_respond_to_auth_challenge(ClientId,
      ChallengeName, Session, ChallengeResponses, AnalyticsMetadata,
      UserContextData, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_ClientId">ClientId</code></td>
<td><p>[required] The app client ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_ChallengeName">ChallengeName</code></td>
<td><p>[required] The challenge name. For more information, see
<code>initiate_auth</code>.</p>
<p><code>ADMIN_NO_SRP_AUTH</code> isn't a valid value.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_Session">Session</code></td>
<td><p>The session that should be passed both ways in challenge-response
calls to the service. If <code>initiate_auth</code> or
<code>respond_to_auth_challenge</code> API call determines that the
caller must pass another challenge, they return a session with other
challenge parameters. This session should be passed as it is to the next
<code>respond_to_auth_challenge</code> API call.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_ChallengeResponses">ChallengeResponses</code></td>
<td><p>The challenge responses. These are inputs corresponding to the
value of <code>ChallengeName</code>, for example:</p>
<p><code>SECRET_HASH</code> (if app client is configured with client
secret) applies to all of the inputs that follow (including
<code>SOFTWARE_TOKEN_MFA</code>).</p>
<ul>
<li><p><code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>,
<code>USERNAME</code>.</p></li>
<li><p><code>PASSWORD_VERIFIER</code>:
<code>PASSWORD_CLAIM_SIGNATURE</code>,
<code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
<code>USERNAME</code>.</p>
<p><code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when
you sign in with a remembered device.</p></li>
<li><p><code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
<code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is
configured with client secret). To set any required attributes that
Amazon Cognito returned as <code>requiredAttributes</code> in the
<code>initiate_auth</code> response, add a
<code>userAttributes.attributename </code> parameter. This parameter can
also set values for writable attributes that aren't required by your
user pool.</p>
<p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't
modify a required attribute that already has a value. In
<code>respond_to_auth_challenge</code>, set a value for any keys that
Amazon Cognito returned in the <code>requiredAttributes</code>
parameter, then use the <code>update_user_attributes</code> API
operation to modify the value of any additional attributes.</p></li>
<li><p><code>SOFTWARE_TOKEN_MFA</code>: <code>USERNAME</code> and
<code>SOFTWARE_TOKEN_MFA_CODE</code> are required attributes.</p></li>
<li><p><code>DEVICE_SRP_AUTH</code> requires <code>USERNAME</code>,
<code>DEVICE_KEY</code>, <code>SRP_A</code> (and
<code>SECRET_HASH</code>).</p></li>
<li><p><code>DEVICE_PASSWORD_VERIFIER</code> requires everything that
<code>PASSWORD_VERIFIER</code> requires, plus
<code>DEVICE_KEY</code>.</p></li>
<li><p><code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you
must use the session value returned by
<code>verify_software_token</code> in the <code>Session</code>
parameter.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_AnalyticsMetadata">AnalyticsMetadata</code></td>
<td><p>The Amazon Pinpoint analytics metadata that contributes to your
metrics for <code>respond_to_auth_challenge</code> calls.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_UserContextData">UserContextData</code></td>
<td><p>Contextual data about your user session, such as the device
fingerprint, IP address, or location. Amazon Cognito advanced security
evaluates the risk of an authentication event based on the context that
your app generates and passes to Amazon Cognito when it makes API
requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_respond_to_auth_challenge_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the RespondToAuthChallenge API action,
Amazon Cognito invokes any functions that are assigned to the following
triggers: <em>post authentication</em>, <em>pre token generation</em>,
<em>define auth challenge</em>, <em>create auth challenge</em>, and
<em>verify auth challenge</em>. When Amazon Cognito invokes any of these
functions, it passes a JSON payload, which the function receives as
input. This payload contains a <code>clientMetadata</code> attribute,
which provides the data that you assigned to the ClientMetadata
parameter in your RespondToAuthChallenge request. In your function code
in Lambda, you can process the <code>clientMetadata</code> value to
enhance your workflow for your specific needs.</p>
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

    svc$respond_to_auth_challenge(
      ClientId = "string",
      ChallengeName = "SMS_MFA"|"SOFTWARE_TOKEN_MFA"|"SELECT_MFA_TYPE"|"MFA_SETUP"|"PASSWORD_VERIFIER"|"CUSTOM_CHALLENGE"|"DEVICE_SRP_AUTH"|"DEVICE_PASSWORD_VERIFIER"|"ADMIN_NO_SRP_AUTH"|"NEW_PASSWORD_REQUIRED",
      Session = "string",
      ChallengeResponses = list(
        "string"
      ),
      AnalyticsMetadata = list(
        AnalyticsEndpointId = "string"
      ),
      UserContextData = list(
        IpAddress = "string",
        EncodedData = "string"
      ),
      ClientMetadata = list(
        "string"
      )
    )
