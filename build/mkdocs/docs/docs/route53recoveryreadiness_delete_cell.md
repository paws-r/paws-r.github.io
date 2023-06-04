<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_delete_cell</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a cell

### Description

Delete a cell. When successful, the response code is 204, with no
response body.

### Usage

    route53recoveryreadiness_delete_cell(CellName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_delete_cell_:_CellName">CellName</code></td>
<td><p>[required] The name of the cell.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cell(
      CellName = "string"
    )
