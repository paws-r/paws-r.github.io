<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new user in the specified user pool

### Description

Creates a new user in the specified user pool.

If `MessageAction` isn't set, the default is to send a welcome message
via email or phone (SMS).

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

This message is based on a template that you configured in your call to
create or update a user pool. This template includes your custom sign-up
instructions and placeholders for user name and temporary password.

Alternatively, you can call `admin_create_user` with `SUPPRESS` for the
`MessageAction` parameter, and Amazon Cognito won't send any email.

In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state
until they sign in and change their password.

`admin_create_user` requires developer credentials.

### Usage

    cognitoidentityprovider_admin_create_user(UserPoolId, Username,
      UserAttributes, ValidationData, TemporaryPassword, ForceAliasCreation,
      MessageAction, DesiredDeliveryMediums, ClientMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_create_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where the user will
be created.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_create_user_:_Username">Username</code></td>
<td><p>[required] The username for the user. Must be unique within the
user pool. Must be a UTF-8 string between 1 and 128 characters. After
the user is created, the username can't be changed.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_create_user_:_UserAttributes">UserAttributes</code></td>
<td><p>An array of name-value pairs that contain user attributes and
attribute values to be set for the user to be created. You can create a
user without specifying any attributes other than <code>Username</code>.
However, any attributes that you specify as required (when creating a
user pool or in the <strong>Attributes</strong> tab of the console)
either you should supply (in your call to
<code>admin_create_user</code>) or the user should supply (when they
sign up in response to your welcome message).</p>
<p>For custom attributes, you must prepend the <code
style="white-space: pre;">⁠custom:⁠</code> prefix to the attribute
name.</p>
<p>To send a message inviting the user to sign up, you must specify the
user's email address or phone number. You can do this in your call to
AdminCreateUser or in the <strong>Users</strong> tab of the Amazon
Cognito console for managing your user pools.</p>
<p>In your call to <code>admin_create_user</code>, you can set the
<code>email_verified</code> attribute to <code>True</code>, and you can
set the <code>phone_number_verified</code> attribute to
<code>True</code>. You can also do this by calling
<code>admin_update_user_attributes</code>.</p>
<ul>
<li><p><strong>email</strong>: The email address of the user to whom the
message that contains the code and username will be sent. Required if
the <code>email_verified</code> attribute is set to <code>True</code>,
or if <code>"EMAIL"</code> is specified in the
<code>DesiredDeliveryMediums</code> parameter.</p></li>
<li><p><strong>phone_number</strong>: The phone number of the user to
whom the message that contains the code and username will be sent.
Required if the <code>phone_number_verified</code> attribute is set to
<code>True</code>, or if <code>"SMS"</code> is specified in the
<code>DesiredDeliveryMediums</code> parameter.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_create_user_:_ValidationData">ValidationData</code></td>
<td><p>The user's validation data. This is an array of name-value pairs
that contain user attributes and attribute values that you can use for
custom validation, such as restricting the types of user accounts that
can be registered. For example, you might choose to allow or disallow
user sign-up based on the user's domain.</p>
<p>To configure custom validation, you must create a Pre Sign-up Lambda
trigger for the user pool as described in the Amazon Cognito Developer
Guide. The Lambda trigger receives the validation data and uses it in
the validation process.</p>
<p>The user's validation data isn't persisted.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_create_user_:_TemporaryPassword">TemporaryPassword</code></td>
<td><p>The user's temporary password. This password must conform to the
password policy that you specified when you created the user pool.</p>
<p>The temporary password is valid only once. To complete the Admin
Create User flow, the user must enter the temporary password in the
sign-in page, along with a new password to be used in all future
sign-ins.</p>
<p>This parameter isn't required. If you don't specify a value, Amazon
Cognito generates one for you.</p>
<p>The temporary password can only be used until the user account
expiration limit that you specified when you created the user pool. To
reset the account after that time limit, you must call
<code>admin_create_user</code> again, specifying <code>"RESEND"</code>
for the <code>MessageAction</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_create_user_:_ForceAliasCreation">ForceAliasCreation</code></td>
<td><p>This parameter is used only if the
<code>phone_number_verified</code> or <code>email_verified</code>
attribute is set to <code>True</code>. Otherwise, it is ignored.</p>
<p>If this parameter is set to <code>True</code> and the phone number or
email address specified in the UserAttributes parameter already exists
as an alias with a different user, the API call will migrate the alias
from the previous user to the newly created user. The previous user will
no longer be able to log in using that alias.</p>
<p>If this parameter is set to <code>False</code>, the API throws an
<code>AliasExistsException</code> error if the alias already exists. The
default value is <code>False</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_create_user_:_MessageAction">MessageAction</code></td>
<td><p>Set to <code>RESEND</code> to resend the invitation message to a
user that already exists and reset the expiration limit on the user's
account. Set to <code>SUPPRESS</code> to suppress sending the message.
You can specify only one value.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_create_user_:_DesiredDeliveryMediums">DesiredDeliveryMediums</code></td>
<td><p>Specify <code>"EMAIL"</code> if email will be used to send the
welcome message. Specify <code>"SMS"</code> if the phone number will be
used. The default value is <code>"SMS"</code>. You can specify more than
one value.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_create_user_:_ClientMetadata">ClientMetadata</code></td>
<td><p>A map of custom key-value pairs that you can provide as input for
any custom workflows that this action triggers.</p>
<p>You create custom workflows by assigning Lambda functions to user
pool triggers. When you use the AdminCreateUser API action, Amazon
Cognito invokes the function that is assigned to the <em>pre
sign-up</em> trigger. When Amazon Cognito invokes this function, it
passes a JSON payload, which the function receives as input. This
payload contains a <code>clientMetadata</code> attribute, which provides
the data that you assigned to the ClientMetadata parameter in your
AdminCreateUser request. In your function code in Lambda, you can
process the <code>clientMetadata</code> value to enhance your workflow
for your specific needs.</p>
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
      User = list(
        Username = "string",
        Attributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        UserCreateDate = as.POSIXct(
          "2015-01-01"
        ),
        UserLastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        Enabled = TRUE|FALSE,
        UserStatus = "UNCONFIRMED"|"CONFIRMED"|"ARCHIVED"|"COMPROMISED"|"UNKNOWN"|"RESET_REQUIRED"|"FORCE_CHANGE_PASSWORD",
        MFAOptions = list(
          list(
            DeliveryMedium = "SMS"|"EMAIL",
            AttributeName = "string"
          )
        )
      )
    )

### Request syntax

    svc$admin_create_user(
      UserPoolId = "string",
      Username = "string",
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
      TemporaryPassword = "string",
      ForceAliasCreation = TRUE|FALSE,
      MessageAction = "RESEND"|"SUPPRESS",
      DesiredDeliveryMediums = list(
        "SMS"|"EMAIL"
      ),
      ClientMetadata = list(
        "string"
      )
    )
