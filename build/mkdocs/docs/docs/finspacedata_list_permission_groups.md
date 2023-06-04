<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_permission_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available permission groups in FinSpace

### Description

Lists all available permission groups in FinSpace.

### Usage

    finspacedata_list_permission_groups(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_list_permission_groups_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_permission_groups_:_maxResults">maxResults</code></td>
<td><p>[required] The maximum number of results per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permissionGroups = list(
        list(
          permissionGroupId = "string",
          name = "string",
          description = "string",
          applicationPermissions = list(
            "CreateDataset"|"ManageClusters"|"ManageUsersAndGroups"|"ManageAttributeSets"|"ViewAuditData"|"AccessNotebooks"|"GetTemporaryCredentials"
          ),
          createTime = 123,
          lastModifiedTime = 123,
          membershipStatus = "ADDITION_IN_PROGRESS"|"ADDITION_SUCCESS"|"REMOVAL_IN_PROGRESS"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_permission_groups(
      nextToken = "string",
      maxResults = 123
    )
