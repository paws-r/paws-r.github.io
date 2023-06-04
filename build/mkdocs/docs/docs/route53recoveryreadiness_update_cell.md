<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_update_cell</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a cell to replace the list of nested cells with a new list of nested cells

### Description

Updates a cell to replace the list of nested cells with a new list of
nested cells.

### Usage

    route53recoveryreadiness_update_cell(CellName, Cells)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_update_cell_:_CellName">CellName</code></td>
<td><p>[required] The name of the cell.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_update_cell_:_Cells">Cells</code></td>
<td><p>[required] A list of cell Amazon Resource Names (ARNs), which
completely replaces the previous list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CellArn = "string",
      CellName = "string",
      Cells = list(
        "string"
      ),
      ParentReadinessScopes = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_cell(
      CellName = "string",
      Cells = list(
        "string"
      )
    )
