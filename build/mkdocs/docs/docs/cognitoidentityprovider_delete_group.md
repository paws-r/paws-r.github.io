<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group

### Description

Deletes a group.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_delete_group(GroupName, UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_group_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group(
      GroupName = "string",
      UserPoolId = "string"
    )
