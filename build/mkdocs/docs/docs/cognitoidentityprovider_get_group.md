<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a group

### Description

Gets a group.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_get_group(GroupName, UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_get_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
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

    svc$get_group(
      GroupName = "string",
      UserPoolId = "string"
    )
