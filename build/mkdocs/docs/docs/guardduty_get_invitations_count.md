<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_invitations_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation

### Description

Returns the count of all GuardDuty membership invitations that were sent
to the current member account except the currently accepted invitation.

### Usage

    guardduty_get_invitations_count()

### Value

A list with the following syntax:

    list(
      InvitationsCount = 123
    )

### Request syntax

    svc$get_invitations_count()
