<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_resource_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and scopes of resource server

### Description

Updates the name and scopes of resource server. All other fields are
read-only.

If you don't provide a value for an attribute, it is set to the default
value.

### Usage

    cognitoidentityprovider_update_resource_server(UserPoolId, Identifier,
      Name, Scopes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_resource_server_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_resource_server_:_Identifier">Identifier</code></td>
<td><p>[required] The identifier for the resource server.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_resource_server_:_Name">Name</code></td>
<td><p>[required] The name of the resource server.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_resource_server_:_Scopes">Scopes</code></td>
<td><p>The scope values to be set for the resource server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceServer = list(
        UserPoolId = "string",
        Identifier = "string",
        Name = "string",
        Scopes = list(
          list(
            ScopeName = "string",
            ScopeDescription = "string"
          )
        )
      )
    )

### Request syntax

    svc$update_resource_server(
      UserPoolId = "string",
      Identifier = "string",
      Name = "string",
      Scopes = list(
        list(
          ScopeName = "string",
          ScopeDescription = "string"
        )
      )
    )
