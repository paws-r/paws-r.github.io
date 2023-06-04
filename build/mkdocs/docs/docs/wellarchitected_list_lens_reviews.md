<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_lens_reviews</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List lens reviews for a particular workload

### Description

List lens reviews for a particular workload.

### Usage

    wellarchitected_list_lens_reviews(WorkloadId, MilestoneNumber,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_reviews_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_reviews_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lens_reviews_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lens_reviews_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneNumber = 123,
      LensReviewSummaries = list(
        list(
          LensAlias = "string",
          LensArn = "string",
          LensVersion = "string",
          LensName = "string",
          LensStatus = "CURRENT"|"NOT_CURRENT"|"DEPRECATED"|"DELETED"|"UNSHARED",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          RiskCounts = list(
            123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lens_reviews(
      WorkloadId = "string",
      MilestoneNumber = 123,
      NextToken = "string",
      MaxResults = 123
    )
