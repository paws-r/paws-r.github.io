<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_workload_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the workload shares associated with the workload

### Description

List the workload shares associated with the workload.

### Usage

    wellarchitected_list_workload_shares(WorkloadId, SharedWithPrefix,
      NextToken, MaxResults, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_workload_shares_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_workload_shares_:_SharedWithPrefix">SharedWithPrefix</code></td>
<td><p>The Amazon Web Services account ID, IAM role, organization ID, or
organizational unit (OU) ID with which the workload is shared.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_workload_shares_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_workload_shares_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_workload_shares_:_Status">Status</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      WorkloadShareSummaries = list(
        list(
          ShareId = "string",
          SharedWith = "string",
          PermissionType = "READONLY"|"CONTRIBUTOR",
          Status = "ACCEPTED"|"REJECTED"|"PENDING"|"REVOKED"|"EXPIRED"|"ASSOCIATING"|"ASSOCIATED"|"FAILED",
          StatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workload_shares(
      WorkloadId = "string",
      SharedWithPrefix = "string",
      NextToken = "string",
      MaxResults = 123,
      Status = "ACCEPTED"|"REJECTED"|"PENDING"|"REVOKED"|"EXPIRED"|"ASSOCIATING"|"ASSOCIATED"|"FAILED"
    )
