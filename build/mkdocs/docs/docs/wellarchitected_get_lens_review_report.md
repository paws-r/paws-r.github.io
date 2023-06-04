<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_lens_review_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get lens review report

### Description

Get lens review report.

### Usage

    wellarchitected_get_lens_review_report(WorkloadId, LensAlias,
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
id="wellarchitected_get_lens_review_report_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_lens_review_report_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_get_lens_review_report_:_MilestoneNumber">MilestoneNumber</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneNumber = 123,
      LensReviewReport = list(
        LensAlias = "string",
        LensArn = "string",
        Base64String = "string"
      )
    )

### Request syntax

    svc$get_lens_review_report(
      WorkloadId = "string",
      LensAlias = "string",
      MilestoneNumber = 123
    )
