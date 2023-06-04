<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_user_pool_client</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the developer to delete the user pool client

### Description

Allows the developer to delete the user pool client.

### Usage

    cognitoidentityprovider_delete_user_pool_client(UserPoolId, ClientId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_user_pool_client_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
delete the client.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_user_pool_client_:_ClientId">ClientId</code></td>
<td><p>[required] The app client ID of the app associated with the user
pool.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_pool_client(
      UserPoolId = "string",
      ClientId = "string"
    )
