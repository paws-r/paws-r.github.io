<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group resource

### Description

Deletes a group resource.

### Usage

    xray_delete_group(GroupName, GroupARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_delete_group_:_GroupName">GroupName</code></td>
<td><p>The case-sensitive name of the group.</p></td>
</tr>
<tr class="even">
<td><code id="xray_delete_group_:_GroupARN">GroupARN</code></td>
<td><p>The ARN of the group that was generated on creation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group(
      GroupName = "string",
      GroupARN = "string"
    )
