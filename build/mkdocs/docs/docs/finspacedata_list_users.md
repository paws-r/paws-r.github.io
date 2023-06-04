<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available user accounts in FinSpace

### Description

Lists all available user accounts in FinSpace.

### Usage

    finspacedata_list_users(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_list_users_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_users_:_maxResults">maxResults</code></td>
<td><p>[required] The maximum number of results per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      users = list(
        list(
          userId = "string",
          status = "CREATING"|"ENABLED"|"DISABLED",
          firstName = "string",
          lastName = "string",
          emailAddress = "string",
          type = "SUPER_USER"|"APP_USER",
          apiAccess = "ENABLED"|"DISABLED",
          apiAccessPrincipalArn = "string",
          createTime = 123,
          lastEnabledTime = 123,
          lastDisabledTime = 123,
          lastModifiedTime = 123,
          lastLoginTime = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_users(
      nextToken = "string",
      maxResults = 123
    )
