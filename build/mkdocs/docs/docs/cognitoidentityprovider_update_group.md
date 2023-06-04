<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified group with the specified attributes

### Description

Updates the specified group with the specified attributes.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_update_group(GroupName, UserPoolId, Description,
      RoleArn, Precedence)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_group_:_Description">Description</code></td>
<td><p>A string containing the new description of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_group_:_RoleArn">RoleArn</code></td>
<td><p>The new role Amazon Resource Name (ARN) for the group. This is
used for setting the <code>cognito:roles</code> and
<code>cognito:preferred_role</code> claims in the token.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_group_:_Precedence">Precedence</code></td>
<td><p>The new precedence value for the group. For more information
about this parameter, see <code>create_group</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
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
    )

### Request syntax

    svc$update_group(
      GroupName = "string",
      UserPoolId = "string",
      Description = "string",
      RoleArn = "string",
      Precedence = 123
    )
