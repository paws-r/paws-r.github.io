<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_accept_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This method is deprecated

### Description

This method is deprecated. Instead, use
`accept_administrator_invitation`.

The Security Hub console continues to use `accept_invitation`. It will
eventually change to use `accept_administrator_invitation`. Any IAM
policies that specifically control access to this function must continue
to use `accept_invitation`. You should also add
`accept_administrator_invitation` to your policies to ensure that the
correct permissions are in place after the console begins to use
`accept_administrator_invitation`.

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted to
the administrator account to view findings generated in the member
account.

### Usage

    securityhub_accept_invitation(MasterId, InvitationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_accept_invitation_:_MasterId">MasterId</code></td>
<td><p>[required] The account ID of the Security Hub administrator
account that sent the invitation.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_accept_invitation_:_InvitationId">InvitationId</code></td>
<td><p>[required] The identifier of the invitation sent from the
Security Hub administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_invitation(
      MasterId = "string",
      InvitationId = "string"
    )
