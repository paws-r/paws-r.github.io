<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_users_by_permission_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists details of all the users in a specific permission group

### Description

Lists details of all the users in a specific permission group.

### Usage

    finspacedata_list_users_by_permission_group(permissionGroupId,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_list_users_by_permission_group_:_permissionGroupId">permissionGroupId</code></td>
<td><p>[required] The unique identifier for the permission
group.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_users_by_permission_group_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_list_users_by_permission_group_:_maxResults">maxResults</code></td>
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
          membershipStatus = "ADDITION_IN_PROGRESS"|"ADDITION_SUCCESS"|"REMOVAL_IN_PROGRESS"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_users_by_permission_group(
      permissionGroupId = "string",
      nextToken = "string",
      maxResults = 123
    )
