<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_upgrade_lens_review</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Upgrade lens review for a particular workload

### Description

Upgrade lens review for a particular workload.

### Usage

    wellarchitected_upgrade_lens_review(WorkloadId, LensAlias,
      MilestoneName, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_upgrade_lens_review_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_upgrade_lens_review_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_upgrade_lens_review_:_MilestoneName">MilestoneName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_upgrade_lens_review_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$upgrade_lens_review(
      WorkloadId = "string",
      LensAlias = "string",
      MilestoneName = "string",
      ClientRequestToken = "string"
    )
