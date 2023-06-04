<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_share_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a workload or custom lens share invitation

### Description

Update a workload or custom lens share invitation.

This API operation can be called independently of any resource. Previous
documentation implied that a workload ARN must be specified.

### Usage

    wellarchitected_update_share_invitation(ShareInvitationId,
      ShareInvitationAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_share_invitation_:_ShareInvitationId">ShareInvitationId</code></td>
<td><p>[required] The ID assigned to the share invitation.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_share_invitation_:_ShareInvitationAction">ShareInvitationAction</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ShareInvitation = list(
        ShareInvitationId = "string",
        ShareResourceType = "WORKLOAD"|"LENS",
        WorkloadId = "string",
        LensAlias = "string",
        LensArn = "string"
      )
    )

### Request syntax

    svc$update_share_invitation(
      ShareInvitationId = "string",
      ShareInvitationAction = "ACCEPT"|"REJECT"
    )
