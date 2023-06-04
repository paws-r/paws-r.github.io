<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_create_milestone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a milestone for an existing workload

### Description

Create a milestone for an existing workload.

### Usage

    wellarchitected_create_milestone(WorkloadId, MilestoneName,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_create_milestone_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_milestone_:_MilestoneName">MilestoneName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_milestone_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      MilestoneNumber = 123
    )

### Request syntax

    svc$create_milestone(
      WorkloadId = "string",
      MilestoneName = "string",
      ClientRequestToken = "string"
    )
