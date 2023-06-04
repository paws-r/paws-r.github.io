<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_cell</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a cell including cell name, cell Amazon Resource Name (ARN), ARNs of nested cells for this cell, and a list of those cell ARNs with their associated recovery group ARNs

### Description

Gets information about a cell including cell name, cell Amazon Resource
Name (ARN), ARNs of nested cells for this cell, and a list of those cell
ARNs with their associated recovery group ARNs.

### Usage

    route53recoveryreadiness_get_cell(CellName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_cell_:_CellName">CellName</code></td>
<td><p>[required] The name of the cell.</p></td>
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

    svc$get_cell(
      CellName = "string"
    )
