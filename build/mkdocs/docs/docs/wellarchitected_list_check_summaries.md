<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_check_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List of Trusted Advisor checks summarized for all accounts related to the workload

### Description

List of Trusted Advisor checks summarized for all accounts related to
the workload.

### Usage

    wellarchitected_list_check_summaries(WorkloadId, NextToken, MaxResults,
      LensArn, PillarId, QuestionId, ChoiceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_check_summaries_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_summaries_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_summaries_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_summaries_:_LensArn">LensArn</code></td>
<td><p>[required] Well-Architected Lens ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_summaries_:_PillarId">PillarId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_summaries_:_QuestionId">QuestionId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_summaries_:_ChoiceId">ChoiceId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CheckSummaries = list(
        list(
          Id = "string",
          Name = "string",
          Provider = "TRUSTED_ADVISOR",
          Description = "string",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LensArn = "string",
          PillarId = "string",
          QuestionId = "string",
          ChoiceId = "string",
          Status = "OKAY"|"WARNING"|"ERROR"|"NOT_AVAILABLE"|"FETCH_FAILED",
          AccountSummary = list(
            123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_check_summaries(
      WorkloadId = "string",
      NextToken = "string",
      MaxResults = 123,
      LensArn = "string",
      PillarId = "string",
      QuestionId = "string",
      ChoiceId = "string"
    )
