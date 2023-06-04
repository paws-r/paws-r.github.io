<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_lens_review</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update lens review for a particular workload

### Description

Update lens review for a particular workload.

### Usage

    wellarchitected_update_lens_review(WorkloadId, LensAlias, LensNotes,
      PillarNotes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_lens_review_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_lens_review_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_lens_review_:_LensNotes">LensNotes</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_lens_review_:_PillarNotes">PillarNotes</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
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

    svc$update_lens_review(
      WorkloadId = "string",
      LensAlias = "string",
      LensNotes = "string",
      PillarNotes = list(
        "string"
      )
    )
