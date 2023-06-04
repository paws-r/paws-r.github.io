<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_create_user_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon Cognito user pool and sets the password policy for the pool

### Description

Creates a new Amazon Cognito user pool and sets the password policy for
the pool.

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

    cognitoidentityprovider_create_user_pool(PoolName, Policies,
      DeletionProtection, LambdaConfig, AutoVerifiedAttributes,
      AliasAttributes, UsernameAttributes, SmsVerificationMessage,
      EmailVerificationMessage, EmailVerificationSubject,
      VerificationMessageTemplate, SmsAuthenticationMessage, MfaConfiguration,
      UserAttributeUpdateSettings, DeviceConfiguration, EmailConfiguration,
      SmsConfiguration, UserPoolTags, AdminCreateUserConfig, Schema,
      UserPoolAddOns, UsernameConfiguration, AccountRecoverySetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_PoolName">PoolName</code></td>
<td><p>[required] A string used to name the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_Policies">Policies</code></td>
<td><p>The policies associated with the new user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_DeletionProtection">DeletionProtection</code></td>
<td><p>When active, <code>DeletionProtection</code> prevents accidental
deletion of your user pool. Before you can delete a user pool that you
have protected against deletion, you must deactivate this feature.</p>
<p>When you try to delete a protected user pool in a
<code>delete_user_pool</code> API request, Amazon Cognito returns an
<code>InvalidParameterException</code> error. To delete a protected user
pool, send a new <code>delete_user_pool</code> request after you
deactivate deletion protection in an <code>update_user_pool</code> API
request.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_LambdaConfig">LambdaConfig</code></td>
<td><p>The Lambda trigger configuration information for the new user
pool.</p>
<p>In a push model, event sources (such as Amazon S3 and custom
applications) need permission to invoke a function. So you must make an
extra call to add permission for these event sources to invoke your
Lambda function.</p>
<p>For more information on using the Lambda API to add permission, see
<a
href="https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html">AddPermission</a>
.</p>
<p>For adding permission using the CLI, see <a
href="https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html">add-permission</a>
.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_AutoVerifiedAttributes">AutoVerifiedAttributes</code></td>
<td><p>The attributes to be auto-verified. Possible values:
<strong>email</strong>, <strong>phone_number</strong>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_AliasAttributes">AliasAttributes</code></td>
<td><p>Attributes supported as an alias for this user pool. Possible
values: <strong>phone_number</strong>, <strong>email</strong>, or
<strong>preferred_username</strong>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_UsernameAttributes">UsernameAttributes</code></td>
<td><p>Specifies whether a user can use an email address or phone number
as a username when they sign up.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_SmsVerificationMessage">SmsVerificationMessage</code></td>
<td><p>This parameter is no longer used. See <a
href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html">VerificationMessageTemplateType</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_EmailVerificationMessage">EmailVerificationMessage</code></td>
<td><p>This parameter is no longer used. See <a
href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html">VerificationMessageTemplateType</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_EmailVerificationSubject">EmailVerificationSubject</code></td>
<td><p>This parameter is no longer used. See <a
href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerificationMessageTemplateType.html">VerificationMessageTemplateType</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_VerificationMessageTemplate">VerificationMessageTemplate</code></td>
<td><p>The template for the verification message that the user sees when
the app requests permission to access the user's information.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_SmsAuthenticationMessage">SmsAuthenticationMessage</code></td>
<td><p>A string representing the SMS authentication message.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_MfaConfiguration">MfaConfiguration</code></td>
<td><p>Specifies MFA configuration details.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_UserAttributeUpdateSettings">UserAttributeUpdateSettings</code></td>
<td><p>The settings for updates to user attributes. These settings
include the property
<code>AttributesRequireVerificationBeforeUpdate</code>, a user-pool
setting that tells Amazon Cognito how to handle changes to the value of
your users' email address and phone number attributes. For more
information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">Verifying
updates to email addresses and phone numbers</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_DeviceConfiguration">DeviceConfiguration</code></td>
<td><p>The device-remembering configuration for a user pool. A null
value indicates that you have deactivated device remembering in your
user pool.</p>
<p>When you provide a value for any <code>DeviceConfiguration</code>
field, you activate the Amazon Cognito device-remembering
feature.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_EmailConfiguration">EmailConfiguration</code></td>
<td><p>The email configuration of your user pool. The email
configuration type sets your preferred sending method, Amazon Web
Services Region, and sender for messages from your user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_SmsConfiguration">SmsConfiguration</code></td>
<td><p>The SMS configuration with the settings that your Amazon Cognito
user pool must use to send an SMS message from your Amazon Web Services
account through Amazon Simple Notification Service. To send SMS messages
with Amazon SNS in the Amazon Web Services Region that you want, the
Amazon Cognito user pool uses an Identity and Access Management (IAM)
role in your Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_UserPoolTags">UserPoolTags</code></td>
<td><p>The tag keys and values to assign to the user pool. A tag is a
label that you can use to categorize and manage user pools in different
ways, such as by purpose, owner, environment, or other
criteria.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_AdminCreateUserConfig">AdminCreateUserConfig</code></td>
<td><p>The configuration for <code>admin_create_user</code>
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_Schema">Schema</code></td>
<td><p>An array of schema attributes for the new user pool. These
attributes can be standard or custom attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_UserPoolAddOns">UserPoolAddOns</code></td>
<td><p>Enables advanced security risk detection. Set the key
<code>AdvancedSecurityMode</code> to the value "AUDIT".</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_user_pool_:_UsernameConfiguration">UsernameConfiguration</code></td>
<td><p>Case sensitivity on the username input for the selected sign-in
option. For example, when case sensitivity is set to <code>False</code>,
users can sign in using either "username" or "Username". This
configuration is immutable once it has been set. For more information,
see <a
href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html">UsernameConfigurationType</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_user_pool_:_AccountRecoverySetting">AccountRecoverySetting</code></td>
<td><p>The available verified method a user can use to recover their
password when they call <code>forgot_password</code>. You can use this
setting to define a preferred method when a user has more than one
method available. With this setting, SMS doesn't qualify for a valid
password recovery mechanism if the user also has SMS multi-factor
authentication (MFA) activated. In the absence of this setting, Amazon
Cognito uses the legacy behavior to determine the recovery method where
SMS is preferred through email.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPool = list(
        Id = "string",
        Name = "string",
        Policies = list(
          PasswordPolicy = list(
            MinimumLength = 123,
            RequireUppercase = TRUE|FALSE,
            RequireLowercase = TRUE|FALSE,
            RequireNumbers = TRUE|FALSE,
            RequireSymbols = TRUE|FALSE,
            TemporaryPasswordValidityDays = 123
          )
        ),
        DeletionProtection = "ACTIVE"|"INACTIVE",
        LambdaConfig = list(
          PreSignUp = "string",
          CustomMessage = "string",
          PostConfirmation = "string",
          PreAuthentication = "string",
          PostAuthentication = "string",
          DefineAuthChallenge = "string",
          CreateAuthChallenge = "string",
          VerifyAuthChallengeResponse = "string",
          PreTokenGeneration = "string",
          UserMigration = "string",
          CustomSMSSender = list(
            LambdaVersion = "V1_0",
            LambdaArn = "string"
          ),
          CustomEmailSender = list(
            LambdaVersion = "V1_0",
            LambdaArn = "string"
          ),
          KMSKeyID = "string"
        ),
        Status = "Enabled"|"Disabled",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        SchemaAttributes = list(
          list(
            Name = "string",
            AttributeDataType = "String"|"Number"|"DateTime"|"Boolean",
            DeveloperOnlyAttribute = TRUE|FALSE,
            Mutable = TRUE|FALSE,
            Required = TRUE|FALSE,
            NumberAttributeConstraints = list(
              MinValue = "string",
              MaxValue = "string"
            ),
            StringAttributeConstraints = list(
              MinLength = "string",
              MaxLength = "string"
            )
          )
        ),
        AutoVerifiedAttributes = list(
          "phone_number"|"email"
        ),
        AliasAttributes = list(
          "phone_number"|"email"|"preferred_username"
        ),
        UsernameAttributes = list(
          "phone_number"|"email"
        ),
        SmsVerificationMessage = "string",
        EmailVerificationMessage = "string",
        EmailVerificationSubject = "string",
        VerificationMessageTemplate = list(
          SmsMessage = "string",
          EmailMessage = "string",
          EmailSubject = "string",
          EmailMessageByLink = "string",
          EmailSubjectByLink = "string",
          DefaultEmailOption = "CONFIRM_WITH_LINK"|"CONFIRM_WITH_CODE"
        ),
        SmsAuthenticationMessage = "string",
        UserAttributeUpdateSettings = list(
          AttributesRequireVerificationBeforeUpdate = list(
            "phone_number"|"email"
          )
        ),
        MfaConfiguration = "OFF"|"ON"|"OPTIONAL",
        DeviceConfiguration = list(
          ChallengeRequiredOnNewDevice = TRUE|FALSE,
          DeviceOnlyRememberedOnUserPrompt = TRUE|FALSE
        ),
        EstimatedNumberOfUsers = 123,
        EmailConfiguration = list(
          SourceArn = "string",
          ReplyToEmailAddress = "string",
          EmailSendingAccount = "COGNITO_DEFAULT"|"DEVELOPER",
          From = "string",
          ConfigurationSet = "string"
        ),
        SmsConfiguration = list(
          SnsCallerArn = "string",
          ExternalId = "string",
          SnsRegion = "string"
        ),
        UserPoolTags = list(
          "string"
        ),
        SmsConfigurationFailure = "string",
        EmailConfigurationFailure = "string",
        Domain = "string",
        CustomDomain = "string",
        AdminCreateUserConfig = list(
          AllowAdminCreateUserOnly = TRUE|FALSE,
          UnusedAccountValidityDays = 123,
          InviteMessageTemplate = list(
            SMSMessage = "string",
            EmailMessage = "string",
            EmailSubject = "string"
          )
        ),
        UserPoolAddOns = list(
          AdvancedSecurityMode = "OFF"|"AUDIT"|"ENFORCED"
        ),
        UsernameConfiguration = list(
          CaseSensitive = TRUE|FALSE
        ),
        Arn = "string",
        AccountRecoverySetting = list(
          RecoveryMechanisms = list(
            list(
              Priority = 123,
              Name = "verified_email"|"verified_phone_number"|"admin_only"
            )
          )
        )
      )
    )

### Request syntax

    svc$create_user_pool(
      PoolName = "string",
      Policies = list(
        PasswordPolicy = list(
          MinimumLength = 123,
          RequireUppercase = TRUE|FALSE,
          RequireLowercase = TRUE|FALSE,
          RequireNumbers = TRUE|FALSE,
          RequireSymbols = TRUE|FALSE,
          TemporaryPasswordValidityDays = 123
        )
      ),
      DeletionProtection = "ACTIVE"|"INACTIVE",
      LambdaConfig = list(
        PreSignUp = "string",
        CustomMessage = "string",
        PostConfirmation = "string",
        PreAuthentication = "string",
        PostAuthentication = "string",
        DefineAuthChallenge = "string",
        CreateAuthChallenge = "string",
        VerifyAuthChallengeResponse = "string",
        PreTokenGeneration = "string",
        UserMigration = "string",
        CustomSMSSender = list(
          LambdaVersion = "V1_0",
          LambdaArn = "string"
        ),
        CustomEmailSender = list(
          LambdaVersion = "V1_0",
          LambdaArn = "string"
        ),
        KMSKeyID = "string"
      ),
      AutoVerifiedAttributes = list(
        "phone_number"|"email"
      ),
      AliasAttributes = list(
        "phone_number"|"email"|"preferred_username"
      ),
      UsernameAttributes = list(
        "phone_number"|"email"
      ),
      SmsVerificationMessage = "string",
      EmailVerificationMessage = "string",
      EmailVerificationSubject = "string",
      VerificationMessageTemplate = list(
        SmsMessage = "string",
        EmailMessage = "string",
        EmailSubject = "string",
        EmailMessageByLink = "string",
        EmailSubjectByLink = "string",
        DefaultEmailOption = "CONFIRM_WITH_LINK"|"CONFIRM_WITH_CODE"
      ),
      SmsAuthenticationMessage = "string",
      MfaConfiguration = "OFF"|"ON"|"OPTIONAL",
      UserAttributeUpdateSettings = list(
        AttributesRequireVerificationBeforeUpdate = list(
          "phone_number"|"email"
        )
      ),
      DeviceConfiguration = list(
        ChallengeRequiredOnNewDevice = TRUE|FALSE,
        DeviceOnlyRememberedOnUserPrompt = TRUE|FALSE
      ),
      EmailConfiguration = list(
        SourceArn = "string",
        ReplyToEmailAddress = "string",
        EmailSendingAccount = "COGNITO_DEFAULT"|"DEVELOPER",
        From = "string",
        ConfigurationSet = "string"
      ),
      SmsConfiguration = list(
        SnsCallerArn = "string",
        ExternalId = "string",
        SnsRegion = "string"
      ),
      UserPoolTags = list(
        "string"
      ),
      AdminCreateUserConfig = list(
        AllowAdminCreateUserOnly = TRUE|FALSE,
        UnusedAccountValidityDays = 123,
        InviteMessageTemplate = list(
          SMSMessage = "string",
          EmailMessage = "string",
          EmailSubject = "string"
        )
      ),
      Schema = list(
        list(
          Name = "string",
          AttributeDataType = "String"|"Number"|"DateTime"|"Boolean",
          DeveloperOnlyAttribute = TRUE|FALSE,
          Mutable = TRUE|FALSE,
          Required = TRUE|FALSE,
          NumberAttributeConstraints = list(
            MinValue = "string",
            MaxValue = "string"
          ),
          StringAttributeConstraints = list(
            MinLength = "string",
            MaxLength = "string"
          )
        )
      ),
      UserPoolAddOns = list(
        AdvancedSecurityMode = "OFF"|"AUDIT"|"ENFORCED"
      ),
      UsernameConfiguration = list(
        CaseSensitive = TRUE|FALSE
      ),
      AccountRecoverySetting = list(
        RecoveryMechanisms = list(
          list(
            Priority = 123,
            Name = "verified_email"|"verified_phone_number"|"admin_only"
          )
        )
      )
    )
