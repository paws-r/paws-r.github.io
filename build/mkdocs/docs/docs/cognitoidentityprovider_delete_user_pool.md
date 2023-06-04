<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_user_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Amazon Cognito user pool

### Description

Deletes the specified Amazon Cognito user pool.

### Usage

    cognitoidentityprovider_delete_user_pool(UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_user_pool_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_pool(
      UserPoolId = "string"
    )
