<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_list_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the users and groups who have the Grafana Admin and Editor roles in this workspace

### Description

Lists the users and groups who have the Grafana `Admin` and `Editor`
roles in this workspace. If you use this operation without specifying
`userId` or `groupId`, the operation returns the roles of all users and
groups. If you specify a `userId` or a `groupId`, only the roles for
that user or group are returned. If you do this, you can specify only
one `userId` or one `groupId`.

### Usage

    managedgrafana_list_permissions(groupId, maxResults, nextToken, userId,
      userType, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_list_permissions_:_groupId">groupId</code></td>
<td><p>(Optional) Limits the results to only the group that matches this
ID.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_list_permissions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_list_permissions_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_permissions</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_list_permissions_:_userId">userId</code></td>
<td><p>(Optional) Limits the results to only the user that matches this
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_list_permissions_:_userType">userType</code></td>
<td><p>(Optional) If you specify <code>SSO_USER</code>, then only the
permissions of IAM Identity Center users are returned. If you specify
<code>SSO_GROUP</code>, only the permissions of IAM Identity Center
groups are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_list_permissions_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to list permissions for. This
parameter is required.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      permissions = list(
        list(
          role = "ADMIN"|"EDITOR"|"VIEWER",
          user = list(
            id = "string",
            type = "SSO_USER"|"SSO_GROUP"
          )
        )
      )
    )

### Request syntax

    svc$list_permissions(
      groupId = "string",
      maxResults = 123,
      nextToken = "string",
      userId = "string",
      userType = "SSO_USER"|"SSO_GROUP",
      workspaceId = "string"
    )
