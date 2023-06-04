<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_list_groups_for_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the groups that the user belongs to

### Description

Lists the groups that the user belongs to.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_list_groups_for_user(Username, UserPoolId,
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
id="cognitoidentityprovider_admin_list_groups_for_user_:_Username">Username</code></td>
<td><p>[required] The username for the user.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_groups_for_user_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_list_groups_for_user_:_Limit">Limit</code></td>
<td><p>The limit of the request to list groups.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_list_groups_for_user_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          GroupName = "string",
          UserPoolId = "string",
          Description = "string",
          RoleArn = "string",
          Precedence = 123,
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          CreationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$admin_list_groups_for_user(
      Username = "string",
      UserPoolId = "string",
      Limit = 123,
      NextToken = "string"
    )
