<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_user_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the configuration information and metadata of the specified user pool

### Description

Returns the configuration information and metadata of the specified user
pool.

### Usage

    cognitoidentityprovider_describe_user_pool(UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_user_pool_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool you want to
describe.</p></td>
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

    svc$describe_user_pool(
      UserPoolId = "string"
    )
