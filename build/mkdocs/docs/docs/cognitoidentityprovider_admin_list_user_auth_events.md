<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_list_user_auth_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A history of user activity and any risks detected as part of Amazon Cognito advanced security

### Description

A history of user activity and any risks detected as part of Amazon
Cognito advanced security.

### Usage

    cognitoidentityprovider_admin_list_user_auth_events(UserPoolId,
      Username, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_list_user_auth_events_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_user_auth_events_:_Username">Username</code></td>
<td><p>[required] The user pool username or an alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_list_user_auth_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of authentication events to return. Returns 60
events if you set <code>MaxResults</code> to 0, or if you don't include
a <code>MaxResults</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_user_auth_events_:_NextToken">NextToken</code></td>
<td><p>A pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthEvents = list(
        list(
          EventId = "string",
          EventType = "SignIn"|"SignUp"|"ForgotPassword"|"PasswordChange"|"ResendCode",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          EventResponse = "Pass"|"Fail"|"InProgress",
          EventRisk = list(
            RiskDecision = "NoRisk"|"AccountTakeover"|"Block",
            RiskLevel = "Low"|"Medium"|"High",
            CompromisedCredentialsDetected = TRUE|FALSE
          ),
          ChallengeResponses = list(
            list(
              ChallengeName = "Password"|"Mfa",
              ChallengeResponse = "Success"|"Failure"
            )
          ),
          EventContextData = list(
            IpAddress = "string",
            DeviceName = "string",
            Timezone = "string",
            City = "string",
            Country = "string"
          ),
          EventFeedback = list(
            FeedbackValue = "Valid"|"Invalid",
            Provider = "string",
            FeedbackDate = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$admin_list_user_auth_events(
      UserPoolId = "string",
      Username = "string",
      MaxResults = 123,
      NextToken = "string"
    )
