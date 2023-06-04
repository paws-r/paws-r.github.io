<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_resource_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource server

### Description

Deletes a resource server.

### Usage

    cognitoidentityprovider_delete_resource_server(UserPoolId, Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_resource_server_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool that hosts the
resource server.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_resource_server_:_Identifier">Identifier</code></td>
<td><p>[required] The identifier for the resource server.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_server(
      UserPoolId = "string",
      Identifier = "string"
    )
