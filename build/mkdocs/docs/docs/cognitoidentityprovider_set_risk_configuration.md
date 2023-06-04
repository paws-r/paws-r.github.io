<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_set_risk_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures actions on detected risks

### Description

Configures actions on detected risks. To delete the risk configuration
for `UserPoolId` or `ClientId`, pass null values for all four
configuration types.

To activate Amazon Cognito advanced security features, update the user
pool to include the `UserPoolAddOns` key`AdvancedSecurityMode`.

### Usage

    cognitoidentityprovider_set_risk_configuration(UserPoolId, ClientId,
      CompromisedCredentialsRiskConfiguration,
      AccountTakeoverRiskConfiguration, RiskExceptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_risk_configuration_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_risk_configuration_:_ClientId">ClientId</code></td>
<td><p>The app client ID. If <code>ClientId</code> is null, then the
risk configuration is mapped to <code>userPoolId</code>. When the client
ID is null, the same risk configuration is applied to all the clients in
the userPool.</p>
<p>Otherwise, <code>ClientId</code> is mapped to the client. When the
client ID isn't null, the user pool configuration is overridden and the
risk configuration for the client is used instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_risk_configuration_:_CompromisedCredentialsRiskConfiguration">CompromisedCredentialsRiskConfiguration</code></td>
<td><p>The compromised credentials risk configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_risk_configuration_:_AccountTakeoverRiskConfiguration">AccountTakeoverRiskConfiguration</code></td>
<td><p>The account takeover risk configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_risk_configuration_:_RiskExceptionConfiguration">RiskExceptionConfiguration</code></td>
<td><p>The configuration to override the risk decision.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RiskConfiguration = list(
        UserPoolId = "string",
        ClientId = "string",
        CompromisedCredentialsRiskConfiguration = list(
          EventFilter = list(
            "SIGN_IN"|"PASSWORD_CHANGE"|"SIGN_UP"
          ),
          Actions = list(
            EventAction = "BLOCK"|"NO_ACTION"
          )
        ),
        AccountTakeoverRiskConfiguration = list(
          NotifyConfiguration = list(
            From = "string",
            ReplyTo = "string",
            SourceArn = "string",
            BlockEmail = list(
              Subject = "string",
              HtmlBody = "string",
              TextBody = "string"
            ),
            NoActionEmail = list(
              Subject = "string",
              HtmlBody = "string",
              TextBody = "string"
            ),
            MfaEmail = list(
              Subject = "string",
              HtmlBody = "string",
              TextBody = "string"
            )
          ),
          Actions = list(
            LowAction = list(
              Notify = TRUE|FALSE,
              EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
            ),
            MediumAction = list(
              Notify = TRUE|FALSE,
              EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
            ),
            HighAction = list(
              Notify = TRUE|FALSE,
              EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
            )
          )
        ),
        RiskExceptionConfiguration = list(
          BlockedIPRangeList = list(
            "string"
          ),
          SkippedIPRangeList = list(
            "string"
          )
        ),
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$set_risk_configuration(
      UserPoolId = "string",
      ClientId = "string",
      CompromisedCredentialsRiskConfiguration = list(
        EventFilter = list(
          "SIGN_IN"|"PASSWORD_CHANGE"|"SIGN_UP"
        ),
        Actions = list(
          EventAction = "BLOCK"|"NO_ACTION"
        )
      ),
      AccountTakeoverRiskConfiguration = list(
        NotifyConfiguration = list(
          From = "string",
          ReplyTo = "string",
          SourceArn = "string",
          BlockEmail = list(
            Subject = "string",
            HtmlBody = "string",
            TextBody = "string"
          ),
          NoActionEmail = list(
            Subject = "string",
            HtmlBody = "string",
            TextBody = "string"
          ),
          MfaEmail = list(
            Subject = "string",
            HtmlBody = "string",
            TextBody = "string"
          )
        ),
        Actions = list(
          LowAction = list(
            Notify = TRUE|FALSE,
            EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
          ),
          MediumAction = list(
            Notify = TRUE|FALSE,
            EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
          ),
          HighAction = list(
            Notify = TRUE|FALSE,
            EventAction = "BLOCK"|"MFA_IF_CONFIGURED"|"MFA_REQUIRED"|"NO_ACTION"
          )
        )
      ),
      RiskExceptionConfiguration = list(
        BlockedIPRangeList = list(
          "string"
        ),
        SkippedIPRangeList = list(
          "string"
        )
      )
    )
