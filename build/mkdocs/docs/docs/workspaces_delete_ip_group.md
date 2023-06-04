<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_ip_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified IP access control group

### Description

Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a
directory.

### Usage

    workspaces_delete_ip_group(GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspaces_delete_ip_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the IP access control
group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_ip_group(
      GroupId = "string"
    )
