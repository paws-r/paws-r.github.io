<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_risk_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the risk configuration

### Description

Describes the risk configuration.

### Usage

    cognitoidentityprovider_describe_risk_configuration(UserPoolId,
      ClientId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_risk_configuration_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_describe_risk_configuration_:_ClientId">ClientId</code></td>
<td><p>The app client ID.</p></td>
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

    svc$describe_risk_configuration(
      UserPoolId = "string",
      ClientId = "string"
    )
