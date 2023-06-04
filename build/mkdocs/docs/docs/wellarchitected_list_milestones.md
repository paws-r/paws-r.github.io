<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_milestones</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all milestones for an existing workload

### Description

List all milestones for an existing workload.

### Usage

    wellarchitected_list_milestones(WorkloadId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_milestones_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_milestones_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_milestones_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneSummaries = list(
        list(
          MilestoneNumber = 123,
          MilestoneName = "string",
          RecordedAt = as.POSIXct(
            "2015-01-01"
          ),
          WorkloadSummary = list(
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
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_milestones(
      WorkloadId = "string",
      NextToken = "string",
      MaxResults = 123
    )
