<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_auth_event_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the feedback for an authentication event, whether it was from a valid user or not

### Description

Provides the feedback for an authentication event, whether it was from a
valid user or not. This feedback is used for improving the risk
evaluation decision for the user pool as part of Amazon Cognito advanced
security.

### Usage

    cognitoidentityprovider_update_auth_event_feedback(UserPoolId, Username,
      EventId, FeedbackToken, FeedbackValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_auth_event_feedback_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_auth_event_feedback_:_Username">Username</code></td>
<td><p>[required] The user pool username.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_auth_event_feedback_:_EventId">EventId</code></td>
<td><p>[required] The event ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_auth_event_feedback_:_FeedbackToken">FeedbackToken</code></td>
<td><p>[required] The feedback token.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_auth_event_feedback_:_FeedbackValue">FeedbackValue</code></td>
<td><p>[required] The authentication event feedback value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_auth_event_feedback(
      UserPoolId = "string",
      Username = "string",
      EventId = "string",
      FeedbackToken = "string",
      FeedbackValue = "Valid"|"Invalid"
    )
