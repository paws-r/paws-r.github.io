<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group

### Description

Deletes a group. The group doesn't need to be empty to be deleted. If
there are canaries in the group, they are not deleted when you delete
the group.

Groups are a global resource that appear in all Regions, but the request
to delete a group must be made from its home Region. You can find the
home Region of a group within its ARN.

### Usage

    synthetics_delete_group(GroupIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_delete_group_:_GroupIdentifier">GroupIdentifier</code></td>
<td><p>[required] Specifies which group to delete. You can specify the
group name, the ARN, or the group ID as the
<code>GroupIdentifier</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group(
      GroupIdentifier = "string"
    )
