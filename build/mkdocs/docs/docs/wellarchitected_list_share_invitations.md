<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_share_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the workload invitations

### Description

List the workload invitations.

### Usage

    wellarchitected_list_share_invitations(WorkloadNamePrefix,
      LensNamePrefix, ShareResourceType, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_share_invitations_:_WorkloadNamePrefix">WorkloadNamePrefix</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_share_invitations_:_LensNamePrefix">LensNamePrefix</code></td>
<td><p>An optional string added to the beginning of each lens name
returned in the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_share_invitations_:_ShareResourceType">ShareResourceType</code></td>
<td><p>The type of share invitations to be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_share_invitations_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_share_invitations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShareInvitationSummaries = list(
        list(
          ShareInvitationId = "string",
          SharedBy = "string",
          SharedWith = "string",
          PermissionType = "READONLY"|"CONTRIBUTOR",
          ShareResourceType = "WORKLOAD"|"LENS",
          WorkloadName = "string",
          WorkloadId = "string",
          LensName = "string",
          LensArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_share_invitations(
      WorkloadNamePrefix = "string",
      LensNamePrefix = "string",
      ShareResourceType = "WORKLOAD"|"LENS",
      NextToken = "string",
      MaxResults = 123
    )
