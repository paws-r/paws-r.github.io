<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_set_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is no longer supported

### Description

*This action is no longer supported.* You can use it to configure only
SMS MFA. You can't use it to configure time-based one-time password
(TOTP) software token MFA. To configure either type of MFA, use
`admin_set_user_mfa_preference` instead.

### Usage

    cognitoidentityprovider_admin_set_user_settings(UserPoolId, Username,
      MFAOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_settings_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The ID of the user pool that contains the user whose
options you're setting.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_set_user_settings_:_Username">Username</code></td>
<td><p>[required] The user name of the user whose options you're
setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_set_user_settings_:_MFAOptions">MFAOptions</code></td>
<td><p>[required] You can use this parameter only to set an SMS
configuration that uses SMS for delivery.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_set_user_settings(
      UserPoolId = "string",
      Username = "string",
      MFAOptions = list(
        list(
          DeliveryMedium = "SMS"|"EMAIL",
          AttributeName = "string"
        )
      )
    )
