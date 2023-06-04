<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_user_attribute_verification_code</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a user attribute verification code for the specified attribute name

### Description

Generates a user attribute verification code for the specified attribute
name. Sends a message to a user with a code that they must return in a
VerifyUserAttribute request.

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

    cognitoidentityprovider_get_user_attribute_verification_code(
      AccessToken, AttributeName, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_user_attribute_verification_code_:_AccessToken">AccessToken</code></td>
<td><p>[required] A non-expired access token for the user whose
attribute verification code you want to generate.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_get_user_attribute_verification_code_:_AttributeName">AttributeName</code></td>
<td><p>[required] The attribute name returned by the server response to
get the user attribute verification code.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_user_attribute_verification_code_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the GetUserAttributeVerificationCode API
action, Amazon Cognito invokes the function that is assigned to the
<em>custom message</em> trigger. When Amazon Cognito invokes this
function, it passes a JSON payload, which the function receives as
input. This payload contains a <code>clientMetadata</code> attribute,
which provides the data that you assigned to the ClientMetadata
parameter in your GetUserAttributeVerificationCode request. In your
function code in Lambda, you can process the <code>clientMetadata</code>
value to enhance your workflow for your specific needs.</p>
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
      CodeDeliveryDetails = list(
        Destination = "string",
        DeliveryMedium = "SMS"|"EMAIL",
        AttributeName = "string"
      )
    )

### Request syntax

    svc$get_user_attribute_verification_code(
      AccessToken = "string",
      AttributeName = "string",
      ClientMetadata = list(
        "string"
      )
    )
