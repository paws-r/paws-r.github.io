<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified resource group

### Description

Deletes the specified resource group. Deleting a resource group does not
delete any resources that are members of the group; it only deletes the
group structure.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:DeleteGroup`

### Usage

    resourcegroups_delete_group(GroupName, Group)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_delete_group_:_GroupName">GroupName</code></td>
<td><p>Deprecated - don't use this parameter. Use <code>Group</code>
instead.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_delete_group_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group to delete.</p></td>
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

    svc$delete_group(
      GroupName = "string",
      Group = "string"
    )
