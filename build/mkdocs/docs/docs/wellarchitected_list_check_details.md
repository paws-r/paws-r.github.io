<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_check_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List of Trusted Advisor check details by account related to the workload

### Description

List of Trusted Advisor check details by account related to the
workload.

### Usage

    wellarchitected_list_check_details(WorkloadId, NextToken, MaxResults,
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
id="wellarchitected_list_check_details_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_details_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_details_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_details_:_LensArn">LensArn</code></td>
<td><p>[required] Well-Architected Lens ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_details_:_PillarId">PillarId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_check_details_:_QuestionId">QuestionId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_check_details_:_ChoiceId">ChoiceId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CheckDetails = list(
        list(
          Id = "string",
          Name = "string",
          Description = "string",
          Provider = "TRUSTED_ADVISOR",
          LensArn = "string",
          PillarId = "string",
          QuestionId = "string",
          ChoiceId = "string",
          Status = "OKAY"|"WARNING"|"ERROR"|"NOT_AVAILABLE"|"FETCH_FAILED",
          AccountId = "string",
          FlaggedResources = 123,
          Reason = "ASSUME_ROLE_ERROR"|"ACCESS_DENIED"|"UNKNOWN_ERROR"|"PREMIUM_SUPPORT_REQUIRED",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_check_details(
      WorkloadId = "string",
      NextToken = "string",
      MaxResults = 123,
      LensArn = "string",
      PillarId = "string",
      QuestionId = "string",
      ChoiceId = "string"
    )
