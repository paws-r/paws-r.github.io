<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_cell_readiness_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets readiness for a cell

### Description

Gets readiness for a cell. Aggregates the readiness of all the resources
that are associated with the cell into a single value.

### Usage

    route53recoveryreadiness_get_cell_readiness_summary(CellName,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_cell_readiness_summary_:_CellName">CellName</code></td>
<td><p>[required] The name of the cell.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_get_cell_readiness_summary_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_cell_readiness_summary_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
      ReadinessChecks = list(
        list(
          Readiness = "READY"|"NOT_READY"|"UNKNOWN"|"NOT_AUTHORIZED",
          ReadinessCheckName = "string"
        )
      )
    )

### Request syntax

    svc$get_cell_readiness_summary(
      CellName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
