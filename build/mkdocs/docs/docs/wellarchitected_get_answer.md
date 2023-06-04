<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_answer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the answer to a specific question in a workload review

### Description

Get the answer to a specific question in a workload review.

### Usage

    wellarchitected_get_answer(WorkloadId, LensAlias, QuestionId,
      MilestoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_get_answer_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_answer_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_get_answer_:_QuestionId">QuestionId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_answer_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
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
      Answer = list(
        QuestionId = "string",
        PillarId = "string",
        QuestionTitle = "string",
        QuestionDescription = "string",
        ImprovementPlanUrl = "string",
        HelpfulResourceUrl = "string",
        HelpfulResourceDisplayText = "string",
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
        ChoiceAnswers = list(
          list(
            ChoiceId = "string",
            Status = "SELECTED"|"NOT_APPLICABLE"|"UNSELECTED",
            Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE",
            Notes = "string"
          )
        ),
        IsApplicable = TRUE|FALSE,
        Risk = "UNANSWERED"|"HIGH"|"MEDIUM"|"NONE"|"NOT_APPLICABLE",
        Notes = "string",
        Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE"
      )
    )

### Request syntax

    svc$get_answer(
      WorkloadId = "string",
      LensAlias = "string",
      QuestionId = "string",
      MilestoneNumber = 123
    )
