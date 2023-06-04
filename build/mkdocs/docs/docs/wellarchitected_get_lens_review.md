<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_lens_review</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get lens review

### Description

Get lens review.

### Usage

    wellarchitected_get_lens_review(WorkloadId, LensAlias, MilestoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_review_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_lens_review_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_review_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneNumber = 123,
      LensReview = list(
        LensAlias = "string",
        LensArn = "string",
        LensVersion = "string",
        LensName = "string",
        LensStatus = "CURRENT"|"NOT_CURRENT"|"DEPRECATED"|"DELETED"|"UNSHARED",
        PillarReviewSummaries = list(
          list(
            PillarId = "string",
            PillarName = "string",
            Notes = "string",
            RiskCounts = list(
              123
            )
          )
        ),
        UpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Notes = "string",
        RiskCounts = list(
          123
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$get_lens_review(
      WorkloadId = "string",
      LensAlias = "string",
      MilestoneNumber = 123
    )
