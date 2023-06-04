<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of users

### Description

Returns a list of users.

### Usage

    elasticache_describe_users(Engine, UserId, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticache_describe_users_:_Engine">Engine</code></td>
<td><p>The Redis engine.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_describe_users_:_UserId">UserId</code></td>
<td><p>The ID of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_describe_users_:_Filters">Filters</code></td>
<td><p>Filter to determine the list of User IDs to return.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_users_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a marker is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code id="elasticache_describe_users_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. \&gt;</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          UserId = "string",
          UserName = "string",
          Status = "string",
          Engine = "string",
          MinimumEngineVersion = "string",
          AccessString = "string",
          UserGroupIds = list(
            "string"
          ),
          Authentication = list(
            Type = "password"|"no-password"|"iam",
            PasswordCount = 123
          ),
          ARN = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_users(
      Engine = "string",
      UserId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
