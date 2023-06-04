<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_list_cells</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the cells for an account

### Description

Lists the cells for an account.

### Usage

    route53recoveryreadiness_list_cells(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_list_cells_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_list_cells_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cells = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_cells(
      MaxResults = 123,
      NextToken = "string"
    )
