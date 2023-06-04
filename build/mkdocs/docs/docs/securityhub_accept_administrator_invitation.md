<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_accept_administrator_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the invitation to be a member account and be monitored by the Security Hub administrator account that the invitation was sent from

### Description

Accepts the invitation to be a member account and be monitored by the
Security Hub administrator account that the invitation was sent from.

This operation is only used by member accounts that are not added
through Organizations.

When the member account accepts the invitation, permission is granted to
the administrator account to view findings generated in the member
account.

### Usage

    securityhub_accept_administrator_invitation(AdministratorId,
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
id="securityhub_accept_administrator_invitation_:_AdministratorId">AdministratorId</code></td>
<td><p>[required] The account ID of the Security Hub administrator
account that sent the invitation.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_accept_administrator_invitation_:_InvitationId">InvitationId</code></td>
<td><p>[required] The identifier of the invitation sent from the
Security Hub administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_administrator_invitation(
      AdministratorId = "string",
      InvitationId = "string"
    )

### Examples

    ## Not run: 
    # The following example demonstrates how an account can accept an
    # invitation from the Security Hub administrator account to be a member
    # account. This operation is applicable only to member accounts that are
    # not added through AWS Organizations.
    svc$accept_administrator_invitation(
      AdministratorId = "123456789012",
      InvitationId = "7ab938c5d52d7904ad09f9e7c20cc4eb"
    )

    ## End(Not run)
