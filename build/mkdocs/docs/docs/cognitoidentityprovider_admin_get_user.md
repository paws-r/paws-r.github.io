<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_get_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified user by user name in a user pool as an administrator

### Description

Gets the specified user by user name in a user pool as an administrator.
Works on any user.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_get_user(UserPoolId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_get_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
get information about the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_get_user_:_Username">Username</code></td>
<td><p>[required] The user name of the user you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Username = "string",
      UserAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      UserCreateDate = as.POSIXct(
        "2015-01-01"
      ),
      UserLastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      Enabled = TRUE|FALSE,
      UserStatus = "UNCONFIRMED"|"CONFIRMED"|"ARCHIVED"|"COMPROMISED"|"UNKNOWN"|"RESET_REQUIRED"|"FORCE_CHANGE_PASSWORD",
      MFAOptions = list(
        list(
          DeliveryMedium = "SMS"|"EMAIL",
          AttributeName = "string"
        )
      ),
      PreferredMfaSetting = "string",
      UserMFASettingList = list(
        "string"
      )
    )

### Request syntax

    svc$admin_get_user(
      UserPoolId = "string",
      Username = "string"
    )
