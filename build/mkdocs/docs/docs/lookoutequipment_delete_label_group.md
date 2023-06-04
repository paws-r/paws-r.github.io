<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_delete_label_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group of labels

### Description

Deletes a group of labels.

### Usage

    lookoutequipment_delete_label_group(LabelGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_delete_label_group_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] The name of the label group that you want to delete.
Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_label_group(
      LabelGroupName = "string"
    )
