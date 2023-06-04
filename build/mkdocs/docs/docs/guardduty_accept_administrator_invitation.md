<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_accept_administrator_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the invitation to be a member account and get monitored by a GuardDuty administrator account that sent the invitation

### Description

Accepts the invitation to be a member account and get monitored by a
GuardDuty administrator account that sent the invitation.

### Usage

    guardduty_accept_administrator_invitation(DetectorId, AdministratorId,
      InvitationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_accept_administrator_invitation_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty member
account.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_accept_administrator_invitation_:_AdministratorId">AdministratorId</code></td>
<td><p>[required] The account ID of the GuardDuty administrator account
whose invitation you're accepting.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_accept_administrator_invitation_:_InvitationId">InvitationId</code></td>
<td><p>[required] The value that is used to validate the administrator
account to the member account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_administrator_invitation(
      DetectorId = "string",
      AdministratorId = "string",
      InvitationId = "string"
    )
