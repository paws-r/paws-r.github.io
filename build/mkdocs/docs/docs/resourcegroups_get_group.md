<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_get_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specified resource group

### Description

Returns information about a specified resource group.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:GetGroup`

### Usage

    resourcegroups_get_group(GroupName, Group)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_get_group_:_GroupName">GroupName</code></td>
<td><p>Deprecated - don't use this parameter. Use <code>Group</code>
instead.</p></td>
</tr>
<tr class="even">
<td><code id="resourcegroups_get_group_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group to retrieve.</p></td>
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

    svc$get_group(
      GroupName = "string",
      Group = "string"
    )
