<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_set_user_pool_mfa_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the user pool multi-factor authentication (MFA) configuration

### Description

Sets the user pool multi-factor authentication (MFA) configuration.

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

    cognitoidentityprovider_set_user_pool_mfa_config(UserPoolId,
      SmsMfaConfiguration, SoftwareTokenMfaConfiguration, MfaConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_user_pool_mfa_config_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_user_pool_mfa_config_:_SmsMfaConfiguration">SmsMfaConfiguration</code></td>
<td><p>The SMS text message MFA configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_user_pool_mfa_config_:_SoftwareTokenMfaConfiguration">SoftwareTokenMfaConfiguration</code></td>
<td><p>The software token MFA configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_user_pool_mfa_config_:_MfaConfiguration">MfaConfiguration</code></td>
<td><p>The MFA configuration. If you set the MfaConfiguration value to
‘ON’, only users who have set up an MFA factor can sign in. To learn
more, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html">Adding
Multi-Factor Authentication (MFA) to a user pool</a>. Valid values
include:</p>
<ul>
<li><p><code>OFF</code> MFA won't be used for any users.</p></li>
<li><p><code>ON</code> MFA is required for all users to sign
in.</p></li>
<li><p><code>OPTIONAL</code> MFA will be required only for individual
users who have an MFA factor activated.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SmsMfaConfiguration = list(
        SmsAuthenticationMessage = "string",
        SmsConfiguration = list(
          SnsCallerArn = "string",
          ExternalId = "string",
          SnsRegion = "string"
        )
      ),
      SoftwareTokenMfaConfiguration = list(
        Enabled = TRUE|FALSE
      ),
      MfaConfiguration = "OFF"|"ON"|"OPTIONAL"
    )

### Request syntax

    svc$set_user_pool_mfa_config(
      UserPoolId = "string",
      SmsMfaConfiguration = list(
        SmsAuthenticationMessage = "string",
        SmsConfiguration = list(
          SnsCallerArn = "string",
          ExternalId = "string",
          SnsRegion = "string"
        )
      ),
      SoftwareTokenMfaConfiguration = list(
        Enabled = TRUE|FALSE
      ),
      MfaConfiguration = "OFF"|"ON"|"OPTIONAL"
    )
