<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_workloads</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Paginated list of workloads

### Description

Paginated list of workloads.

### Usage

    wellarchitected_list_workloads(WorkloadNamePrefix, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_workloads_:_WorkloadNamePrefix">WorkloadNamePrefix</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_workloads_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_workloads_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadSummaries = list(
        list(
          WorkloadId = "string",
          WorkloadArn = "string",
          WorkloadName = "string",
          Owner = "string",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Lenses = list(
            "string"
          ),
          RiskCounts = list(
            123
          ),
          ImprovementStatus = "NOT_APPLICABLE"|"NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"RISK_ACKNOWLEDGED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workloads(
      WorkloadNamePrefix = "string",
      NextToken = "string",
      MaxResults = 123
    )
