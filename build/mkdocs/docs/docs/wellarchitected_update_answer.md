<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_answer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the answer to a specific question in a workload review

### Description

Update the answer to a specific question in a workload review.

### Usage

    wellarchitected_update_answer(WorkloadId, LensAlias, QuestionId,
      SelectedChoices, ChoiceUpdates, Notes, IsApplicable, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_answer_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_answer_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_answer_:_QuestionId">QuestionId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_answer_:_SelectedChoices">SelectedChoices</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_answer_:_ChoiceUpdates">ChoiceUpdates</code></td>
<td><p>A list of choices to update on a question in your workload. The
String key corresponds to the choice ID to be updated.</p></td>
</tr>
<tr class="even">
<td><code id="wellarchitected_update_answer_:_Notes">Notes</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_answer_:_IsApplicable">IsApplicable</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="wellarchitected_update_answer_:_Reason">Reason</code></td>
<td><p>The reason why a question is not applicable to your
workload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
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

    svc$update_answer(
      WorkloadId = "string",
      LensAlias = "string",
      QuestionId = "string",
      SelectedChoices = list(
        "string"
      ),
      ChoiceUpdates = list(
        list(
          Status = "SELECTED"|"NOT_APPLICABLE"|"UNSELECTED",
          Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE",
          Notes = "string"
        )
      ),
      Notes = "string",
      IsApplicable = TRUE|FALSE,
      Reason = "OUT_OF_SCOPE"|"BUSINESS_PRIORITIES"|"ARCHITECTURE_CONSTRAINTS"|"OTHER"|"NONE"
    )
