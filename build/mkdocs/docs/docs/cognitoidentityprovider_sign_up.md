<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_sign_up</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers the user in the specified user pool and creates a user name, password, and user attributes

### Description

Registers the user in the specified user pool and creates a user name,
password, and user attributes.

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

    cognitoidentityprovider_sign_up(ClientId, SecretHash, Username,
      Password, UserAttributes, ValidationData, AnalyticsMetadata,
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
id="cognitoidentityprovider_sign_up_:_ClientId">ClientId</code></td>
<td><p>[required] The ID of the client associated with the user
pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_sign_up_:_SecretHash">SecretHash</code></td>
<td><p>A keyed-hash message authentication code (HMAC) calculated using
the secret key of a user pool client and username plus the client ID in
the message.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_sign_up_:_Username">Username</code></td>
<td><p>[required] The user name of the user you want to
register.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_sign_up_:_Password">Password</code></td>
<td><p>[required] The password of the user you want to
register.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_sign_up_:_UserAttributes">UserAttributes</code></td>
<td><p>An array of name-value pairs representing user attributes.</p>
<p>For custom attributes, you must prepend the <code
style="white-space: pre;">⁠custom:⁠</code> prefix to the attribute
name.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_sign_up_:_ValidationData">ValidationData</code></td>
<td><p>The validation data in the request to register a user.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_sign_up_:_AnalyticsMetadata">AnalyticsMetadata</code></td>
<td><p>The Amazon Pinpoint analytics metadata that contributes to your
metrics for <code>sign_up</code> calls.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_sign_up_:_UserContextData">UserContextData</code></td>
<td><p>Contextual data about your user session, such as the device
fingerprint, IP address, or location. Amazon Cognito advanced security
evaluates the risk of an authentication event based on the context that
your app generates and passes to Amazon Cognito when it makes API
requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_sign_up_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the SignUp API action, Amazon Cognito
invokes any functions that are assigned to the following triggers:
<em>pre sign-up</em>, <em>custom message</em>, and <em>post
confirmation</em>. When Amazon Cognito invokes any of these functions,
it passes a JSON payload, which the function receives as input. This
payload contains a <code>clientMetadata</code> attribute, which provides
the data that you assigned to the ClientMetadata parameter in your
SignUp request. In your function code in Lambda, you can process the
<code>clientMetadata</code> value to enhance your workflow for your
specific needs.</p>
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
      UserConfirmed = TRUE|FALSE,
      CodeDeliveryDetails = list(
        Destination = "string",
        DeliveryMedium = "SMS"|"EMAIL",
        AttributeName = "string"
      ),
      UserSub = "string"
    )

### Request syntax

    svc$sign_up(
      ClientId = "string",
      SecretHash = "string",
      Username = "string",
      Password = "string",
      UserAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ValidationData = list(
        list(
          Name = "string",
          Value = "string"
        )
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
