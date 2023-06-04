<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of users

### Description

Returns a list of users.

### Usage

    memorydb_describe_users(UserName, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_describe_users_:_UserName">UserName</code></td>
<td><p>The name of the user</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_describe_users_:_Filters">Filters</code></td>
<td><p>Filter to determine the list of users to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_describe_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_describe_users_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Name = "string",
          Status = "string",
          AccessString = "string",
          ACLNames = list(
            "string"
          ),
          MinimumEngineVersion = "string",
          Authentication = list(
            Type = "password"|"no-password",
            PasswordCount = 123
          ),
          ARN = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_users(
      UserName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
