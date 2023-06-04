<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description for an existing group

### Description

Updates the description for an existing group. You cannot update the
name of a resource group.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:UpdateGroup`

### Usage

    resourcegroups_update_group(GroupName, Group, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_update_group_:_GroupName">GroupName</code></td>
<td><p>Don't use this parameter. Use <code>Group</code>
instead.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_update_group_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_update_group_:_Description">Description</code></td>
<td><p>The new description that you want to update the resource group
with. Descriptions can contain letters, numbers, hyphens, underscores,
periods, and spaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        GroupArn = "string",
        Name = "string",
        Description = "string"
      )
    )

### Request syntax

    svc$update_group(
      GroupName = "string",
      Group = "string",
      Description = "string"
    )
