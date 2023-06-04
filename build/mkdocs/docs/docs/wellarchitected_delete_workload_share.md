<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_delete_workload_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a workload share

### Description

Delete a workload share.

### Usage

    wellarchitected_delete_workload_share(ShareId, WorkloadId,
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
id="wellarchitected_delete_workload_share_:_ShareId">ShareId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_delete_workload_share_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_delete_workload_share_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workload_share(
      ShareId = "string",
      WorkloadId = "string",
      ClientRequestToken = "string"
    )
