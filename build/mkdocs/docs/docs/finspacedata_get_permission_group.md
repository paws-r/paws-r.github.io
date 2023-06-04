<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_permission_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of a specific permission group

### Description

Retrieves the details of a specific permission group.

### Usage

    finspacedata_get_permission_group(permissionGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_permission_group_:_permissionGroupId">permissionGroupId</code></td>
<td><p>[required] The unique identifier for the permission
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permissionGroup = list(
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
    )

### Request syntax

    svc$get_permission_group(
      permissionGroupId = "string"
    )
