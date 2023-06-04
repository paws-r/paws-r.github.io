<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_update_user_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified user's attributes, including developer attributes, as an administrator

### Description

Updates the specified user's attributes, including developer attributes,
as an administrator. Works on any user.

For custom attributes, you must prepend the `⁠custom:⁠` prefix to the
attribute name.

In addition to updating user attributes, this API can also be used to
mark phone and email as verified.

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

    cognitoidentityprovider_admin_update_user_attributes(UserPoolId,
      Username, UserAttributes, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_update_user_attributes_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
update user attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_update_user_attributes_:_Username">Username</code></td>
<td><p>[required] The user name of the user for whom you want to update
user attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_update_user_attributes_:_UserAttributes">UserAttributes</code></td>
<td><p>[required] An array of name-value pairs representing user
attributes.</p>
<p>For custom attributes, you must prepend the <code
style="white-space: pre;">⁠custom:⁠</code> prefix to the attribute
name.</p>
<p>If your user pool requires verification before Amazon Cognito updates
an attribute value that you specify in this request, Amazon Cognito
doesn’t immediately update the value of that attribute. After your user
receives and responds to a verification message to verify the new value,
Amazon Cognito updates the attribute value. Your user can sign in and
receive messages with the original attribute value until they verify the
new value.</p>
<p>To update the value of an attribute that requires verification in the
same API request, include the <code>email_verified</code> or
<code>phone_number_verified</code> attribute, with a value of
<code>true</code>. If you set the <code>email_verified</code> or
<code>phone_number_verified</code> value for an <code>email</code> or
<code>phone_number</code> attribute that requires verification to
<code>true</code>, Amazon Cognito doesn’t send a verification message to
your user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_update_user_attributes_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the AdminUpdateUserAttributes API action,
Amazon Cognito invokes the function that is assigned to the <em>custom
message</em> trigger. When Amazon Cognito invokes this function, it
passes a JSON payload, which the function receives as input. This
payload contains a <code>clientMetadata</code> attribute, which provides
the data that you assigned to the ClientMetadata parameter in your
AdminUpdateUserAttributes request. In your function code in Lambda, you
can process the <code>clientMetadata</code> value to enhance your
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

An empty list.

### Request syntax

    svc$admin_update_user_attributes(
      UserPoolId = "string",
      Username = "string",
      UserAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ClientMetadata = list(
        "string"
      )
    )
