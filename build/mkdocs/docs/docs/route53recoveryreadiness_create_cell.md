<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_create_cell</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cell in an account

### Description

Creates a cell in an account.

### Usage

    route53recoveryreadiness_create_cell(CellName, Cells, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_cell_:_CellName">CellName</code></td>
<td><p>[required] The name of the cell to create.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_create_cell_:_Cells">Cells</code></td>
<td><p>A list of cell Amazon Resource Names (ARNs) contained within this
cell, for use in nested cells. For example, Availability Zones within
specific Amazon Web Services Regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_cell_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_cell(
      CellName = "string",
      Cells = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
