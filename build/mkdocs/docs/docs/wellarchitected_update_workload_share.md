<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_workload_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a workload share

### Description

Update a workload share.

### Usage

    wellarchitected_update_workload_share(ShareId, WorkloadId,
      PermissionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_share_:_ShareId">ShareId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_workload_share_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_update_workload_share_:_PermissionType">PermissionType</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      WorkloadShare = list(
        ShareId = "string",
        SharedBy = "string",
        SharedWith = "string",
        PermissionType = "READONLY"|"CONTRIBUTOR",
        Status = "ACCEPTED"|"REJECTED"|"PENDING"|"REVOKED"|"EXPIRED"|"ASSOCIATING"|"ASSOCIATED"|"FAILED",
        WorkloadName = "string",
        WorkloadId = "string"
      )
    )

### Request syntax

    svc$update_workload_share(
      ShareId = "string",
      WorkloadId = "string",
      PermissionType = "READONLY"|"CONTRIBUTOR"
    )
