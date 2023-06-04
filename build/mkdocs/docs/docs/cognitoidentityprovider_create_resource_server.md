<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_create_resource_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new OAuth2

### Description

Creates a new OAuth2.0 resource server and defines custom scopes within
it.

### Usage

    cognitoidentityprovider_create_resource_server(UserPoolId, Identifier,
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
id="cognitoidentityprovider_create_resource_server_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_resource_server_:_Identifier">Identifier</code></td>
<td><p>[required] A unique resource server identifier for the resource
server. This could be an HTTPS endpoint where the resource server is
located, such as <code
style="white-space: pre;">⁠https://my-weather-api.example.com⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_create_resource_server_:_Name">Name</code></td>
<td><p>[required] A friendly name for the resource server.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_create_resource_server_:_Scopes">Scopes</code></td>
<td><p>A list of scopes. Each scope is a key-value map with the keys
<code>name</code> and <code>description</code>.</p></td>
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

    svc$create_resource_server(
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
