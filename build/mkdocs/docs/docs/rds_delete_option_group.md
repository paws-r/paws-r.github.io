<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_option_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing option group

### Description

Deletes an existing option group.

### Usage

    rds_delete_option_group(OptionGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_option_group_:_OptionGroupName">OptionGroupName</code></td>
<td><p>[required] The name of the option group to be deleted.</p>
<p>You can't delete default option groups.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_option_group(
      OptionGroupName = "string"
    )
