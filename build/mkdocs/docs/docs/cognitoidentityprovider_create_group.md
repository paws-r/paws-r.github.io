<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new group in the specified user pool

### Description

Creates a new group in the specified user pool.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_create_group(GroupName, UserPoolId, Description,
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
id="cognitoidentityprovider_create_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group. Must be unique.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_group_:_Description">Description</code></td>
<td><p>A string containing the description of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_group_:_RoleArn">RoleArn</code></td>
<td><p>The role Amazon Resource Name (ARN) for the group.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_group_:_Precedence">Precedence</code></td>
<td><p>A non-negative integer value that specifies the precedence of
this group relative to the other groups that a user can belong to in the
user pool. Zero is the highest precedence value. Groups with lower
<code>Precedence</code> values take precedence over groups with higher
or null <code>Precedence</code> values. If a user belongs to two or more
groups, it is the group with the lowest precedence value whose role ARN
is given in the user's tokens for the <code>cognito:roles</code> and
<code>cognito:preferred_role</code> claims.</p>
<p>Two groups can have the same <code>Precedence</code> value. If this
happens, neither group takes precedence over the other. If two groups
with the same <code>Precedence</code> have the same role ARN, that role
is used in the <code>cognito:preferred_role</code> claim in tokens for
users in each group. If the two groups have different role ARNs, the
<code>cognito:preferred_role</code> claim isn't set in users'
tokens.</p>
<p>The default <code>Precedence</code> value is null. The maximum
<code>Precedence</code> value is <code>2^31-1</code>.</p></td>
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

    svc$create_group(
      GroupName = "string",
      UserPoolId = "string",
      Description = "string",
      RoleArn = "string",
      Precedence = 123
    )
