<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_user_pool_clients</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the clients that have been created for the specified user pool

### Description

Lists the clients that have been created for the specified user pool.

### Usage

    cognitoidentityprovider_list_user_pool_clients(UserPoolId, MaxResults,
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
id="cognitoidentityprovider_list_user_pool_clients_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
list user pool clients.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_user_pool_clients_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results you want the request to return when
listing the user pool clients.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_user_pool_clients_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPoolClients = list(
        list(
          ClientId = "string",
          UserPoolId = "string",
          ClientName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_user_pool_clients(
      UserPoolId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
