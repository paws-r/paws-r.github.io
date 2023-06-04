<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_answers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List of answers for a particular workload and lens

### Description

List of answers for a particular workload and lens.

### Usage

    wellarchitected_list_answers(WorkloadId, LensAlias, PillarId,
      MilestoneNumber, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_answers_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_answers_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_answers_:_PillarId">PillarId</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_answers_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_answers_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_answers_:_MaxResults">MaxResults</code></td>
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
      AnswerSummaries = list(
        list(
          QuestionId = "string",
          PillarId = "string",
          QuestionTitle = "string",
          Choices = list(
            list(
              ChoiceId = "string",
              Title = "string",
              Description = "string",
              HelpfulResource = list(
                DisplayText = "string",
                Url = "string"
              ),
              ImprovementPlan = list(
                DisplayText = "string",
                Url = "string"
              ),
              AdditionalResources = list(
                list(
                  Type = "HELPFUL_RESOURCE"|"IMPROVEMENT_PLAN",
                  Content = list(
                    list(
                      DisplayText = "string",
                      Url = "string"
                    )
                  )
                )
              )
            )
          ),
          SelectedChoices = list(
            "string"
          ),
          ChoiceAnswerSummaries = list(
            list(
              ChoiceId = "string",
              Status = "SELECTED"|"NOT_APPLICABLE"|"UNSELECTED",
              Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE"
            )
          ),
          IsApplicable = TRUE|FALSE,
          Risk = "UNANSWERED"|"HIGH"|"MEDIUM"|"NONE"|"NOT_APPLICABLE",
          Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_answers(
      WorkloadId = "string",
      LensAlias = "string",
      PillarId = "string",
      MilestoneNumber = 123,
      NextToken = "string",
      MaxResults = 123
    )
