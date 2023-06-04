<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_invitations_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation

### Description

Returns the count of all Security Hub membership invitations that were
sent to the current member account, not including the currently accepted
invitation.

### Usage

    securityhub_get_invitations_count()

### Value

A list with the following syntax:

    list(
      InvitationsCount = 123
    )

### Request syntax

    svc$get_invitations_count()

### Examples

    ## Not run: 
    # The following example returns a count of invitations that the Security
    # Hub administrator sent to the current member account, not including the
    # currently accepted invitation.
    # 
    # 
    svc$get_invitations_count()

    ## End(Not run)
