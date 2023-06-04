<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_resource_servers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource servers for a user pool

### Description

Lists the resource servers for a user pool.

### Usage

    cognitoidentityprovider_list_resource_servers(UserPoolId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_resource_servers_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_resource_servers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resource servers to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_resource_servers_:_NextToken">NextToken</code></td>
<td><p>A pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceServers = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_servers(
      UserPoolId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
