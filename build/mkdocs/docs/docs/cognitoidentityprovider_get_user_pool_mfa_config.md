<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_user_pool_mfa_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the user pool multi-factor authentication (MFA) configuration

### Description

Gets the user pool multi-factor authentication (MFA) configuration.

### Usage

    cognitoidentityprovider_get_user_pool_mfa_config(UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_user_pool_mfa_config_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
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

    svc$get_user_pool_mfa_config(
      UserPoolId = "string"
    )
