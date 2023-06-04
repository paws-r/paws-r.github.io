<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_create_workload_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a workload share

### Description

Create a workload share.

The owner of a workload can share it with other Amazon Web Services
accounts and users in the same Amazon Web Services Region. Shared access
to a workload is not removed until the workload invitation is deleted.

If you share a workload with an organization or OU, all accounts in the
organization or OU are granted access to the workload.

For more information, see [Sharing a
workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
in the *Well-Architected Tool User Guide*.

### Usage

    wellarchitected_create_workload_share(WorkloadId, SharedWith,
      PermissionType, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_share_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_share_:_SharedWith">SharedWith</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_share_:_PermissionType">PermissionType</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_share_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      ShareId = "string"
    )

### Request syntax

    svc$create_workload_share(
      WorkloadId = "string",
      SharedWith = "string",
      PermissionType = "READONLY"|"CONTRIBUTOR",
      ClientRequestToken = "string"
    )
