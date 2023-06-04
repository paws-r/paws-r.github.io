<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_delete_protection_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified protection group

### Description

Removes the specified protection group.

### Usage

    shield_delete_protection_group(ProtectionGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_delete_protection_group_:_ProtectionGroupId">ProtectionGroupId</code></td>
<td><p>[required] The name of the protection group. You use this to
identify the protection group in lists and to manage the protection
group, for example to update, delete, or describe it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_protection_group(
      ProtectionGroupId = "string"
    )
