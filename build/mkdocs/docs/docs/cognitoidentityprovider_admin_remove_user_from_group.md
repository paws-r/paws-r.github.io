<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_remove_user_from_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified user from the specified group

### Description

Removes the specified user from the specified group.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_remove_user_from_group(UserPoolId,
      Username, GroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_remove_user_from_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_remove_user_from_group_:_Username">Username</code></td>
<td><p>[required] The username for the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_remove_user_from_group_:_GroupName">GroupName</code></td>
<td><p>[required] The group name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_remove_user_from_group(
      UserPoolId = "string",
      Username = "string",
      GroupName = "string"
    )
