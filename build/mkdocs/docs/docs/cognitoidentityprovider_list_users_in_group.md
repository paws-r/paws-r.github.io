<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_users_in_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the users in the specified group

### Description

Lists the users in the specified group.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_list_users_in_group(UserPoolId, GroupName,
      Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_users_in_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_users_in_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_users_in_group_:_Limit">Limit</code></td>
<td><p>The limit of the request to list users.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_users_in_group_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Username = "string",
          Attributes = list(
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_users_in_group(
      UserPoolId = "string",
      GroupName = "string",
      Limit = 123,
      NextToken = "string"
    )
