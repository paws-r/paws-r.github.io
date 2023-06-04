<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_update_label_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the label group

### Description

Updates the label group.

### Usage

    lookoutequipment_update_label_group(LabelGroupName, FaultCodes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_update_label_group_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] The name of the label group to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_update_label_group_:_FaultCodes">FaultCodes</code></td>
<td><p>Updates the code indicating the type of anomaly associated with
the label.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_label_group(
      LabelGroupName = "string",
      FaultCodes = list(
        "string"
      )
    )
