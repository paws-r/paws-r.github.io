<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_lens_review_improvements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List lens review improvements

### Description

List lens review improvements.

### Usage

    wellarchitected_list_lens_review_improvements(WorkloadId, LensAlias,
      PillarId, MilestoneNumber, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_review_improvements_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_review_improvements_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_review_improvements_:_PillarId">PillarId</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_review_improvements_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_review_improvements_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_review_improvements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneNumber = 123,
      LensAlias = "string",
      LensArn = "string",
      ImprovementSummaries = list(
        list(
          QuestionId = "string",
          PillarId = "string",
          QuestionTitle = "string",
          Risk = "UNANSWERED"|"HIGH"|"MEDIUM"|"NONE"|"NOT_APPLICABLE",
          ImprovementPlanUrl = "string",
          ImprovementPlans = list(
            list(
              ChoiceId = "string",
              DisplayText = "string",
              ImprovementPlanUrl = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lens_review_improvements(
      WorkloadId = "string",
      LensAlias = "string",
      PillarId = "string",
      MilestoneNumber = 123,
      NextToken = "string",
      MaxResults = 123
    )
