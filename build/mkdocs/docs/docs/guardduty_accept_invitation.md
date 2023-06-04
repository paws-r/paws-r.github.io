<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_accept_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the invitation to be monitored by a GuardDuty administrator account

### Description

Accepts the invitation to be monitored by a GuardDuty administrator
account.

### Usage

    guardduty_accept_invitation(DetectorId, MasterId, InvitationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_accept_invitation_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty member
account.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_accept_invitation_:_MasterId">MasterId</code></td>
<td><p>[required] The account ID of the GuardDuty administrator account
whose invitation you're accepting.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_accept_invitation_:_InvitationId">InvitationId</code></td>
<td><p>[required] The value that is used to validate the administrator
account to the member account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_invitation(
      DetectorId = "string",
      MasterId = "string",
      InvitationId = "string"
    )
