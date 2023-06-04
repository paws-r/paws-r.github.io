<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_set_user_mfa_preference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the user's multi-factor authentication (MFA) method preference, including which MFA factors are activated and if any are preferred

### Description

Set the user's multi-factor authentication (MFA) method preference,
including which MFA factors are activated and if any are preferred. Only
one factor can be set as preferred. The preferred MFA factor will be
used to authenticate a user if multiple factors are activated. If
multiple options are activated and no preference is set, a challenge to
choose an MFA option will be returned during sign-in. If an MFA type is
activated for a user, the user will be prompted for MFA during all
sign-in attempts unless device tracking is turned on and the device has
been trusted. If you want MFA to be applied selectively based on the
assessed risk level of sign-in attempts, deactivate MFA for users and
turn on Adaptive Authentication for the user pool.

### Usage

    cognitoidentityprovider_set_user_mfa_preference(SMSMfaSettings,
      SoftwareTokenMfaSettings, AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_user_mfa_preference_:_SMSMfaSettings">SMSMfaSettings</code></td>
<td><p>The SMS text message multi-factor authentication (MFA)
settings.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_user_mfa_preference_:_SoftwareTokenMfaSettings">SoftwareTokenMfaSettings</code></td>
<td><p>The time-based one-time password (TOTP) software token MFA
settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_user_mfa_preference_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose MFA preference you want to set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_user_mfa_preference(
      SMSMfaSettings = list(
        Enabled = TRUE|FALSE,
        PreferredMfa = TRUE|FALSE
      ),
      SoftwareTokenMfaSettings = list(
        Enabled = TRUE|FALSE,
        PreferredMfa = TRUE|FALSE
      ),
      AccessToken = "string"
    )
