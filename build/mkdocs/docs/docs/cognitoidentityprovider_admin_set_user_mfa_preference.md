<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_set_user_mfa_preference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The user's multi-factor authentication (MFA) preference, including which MFA options are activated, and if any are preferred

### Description

The user's multi-factor authentication (MFA) preference, including which
MFA options are activated, and if any are preferred. Only one factor can
be set as preferred. The preferred MFA factor will be used to
authenticate a user if multiple factors are activated. If multiple
options are activated and no preference is set, a challenge to choose an
MFA option will be returned during sign-in.

### Usage

    cognitoidentityprovider_admin_set_user_mfa_preference(SMSMfaSettings,
      SoftwareTokenMfaSettings, Username, UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_mfa_preference_:_SMSMfaSettings">SMSMfaSettings</code></td>
<td><p>The SMS text message MFA settings.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_set_user_mfa_preference_:_SoftwareTokenMfaSettings">SoftwareTokenMfaSettings</code></td>
<td><p>The time-based one-time password software token MFA
settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_mfa_preference_:_Username">Username</code></td>
<td><p>[required] The user pool username or alias.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_set_user_mfa_preference_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_set_user_mfa_preference(
      SMSMfaSettings = list(
        Enabled = TRUE|FALSE,
        PreferredMfa = TRUE|FALSE
      ),
      SoftwareTokenMfaSettings = list(
        Enabled = TRUE|FALSE,
        PreferredMfa = TRUE|FALSE
      ),
      Username = "string",
      UserPoolId = "string"
    )
