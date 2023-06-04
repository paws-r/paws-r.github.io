<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_describe_resource_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a resource server

### Description

Describes a resource server.

### Usage

    cognitoidentityprovider_describe_resource_server(UserPoolId, Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_describe_resource_server_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool that hosts the
resource server.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_describe_resource_server_:_Identifier">Identifier</code></td>
<td><p>[required] The identifier for the resource server</p></td>
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

    svc$describe_resource_server(
      UserPoolId = "string",
      Identifier = "string"
    )
