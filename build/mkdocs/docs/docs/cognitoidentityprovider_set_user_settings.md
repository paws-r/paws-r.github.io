<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_set_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is no longer supported

### Description

*This action is no longer supported.* You can use it to configure only
SMS MFA. You can't use it to configure time-based one-time password
(TOTP) software token MFA. To configure either type of MFA, use
`set_user_mfa_preference` instead.

### Usage

    cognitoidentityprovider_set_user_settings(AccessToken, MFAOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_set_user_settings_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose user settings you want to configure.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_set_user_settings_:_MFAOptions">MFAOptions</code></td>
<td><p>[required] You can use this parameter only to set an SMS
configuration that uses SMS for delivery.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_user_settings(
      AccessToken = "string",
      MFAOptions = list(
        list(
          DeliveryMedium = "SMS"|"EMAIL",
          AttributeName = "string"
        )
      )
    )
