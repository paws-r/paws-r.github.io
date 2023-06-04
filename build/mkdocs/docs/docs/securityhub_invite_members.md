<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_invite_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Invites other Amazon Web Services accounts to become member accounts for the Security Hub administrator account that the invitation is sent from

### Description

Invites other Amazon Web Services accounts to become member accounts for
the Security Hub administrator account that the invitation is sent from.

This operation is only used to invite accounts that do not belong to an
organization. Organization accounts do not receive invitations.

Before you can use this action to invite a member, you must first use
the `create_members` action to create the member account in Security
Hub.

When the account owner enables Security Hub and accepts the invitation
to become a member account, the administrator account can view the
findings generated from the member account.

### Usage

    securityhub_invite_members(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_invite_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of account IDs of the Amazon Web Services
accounts to invite to Security Hub as members.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          ProcessingResult = "string"
        )
      )
    )

### Request syntax

    svc$invite_members(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example invites the specified AWS accounts to become
    # member accounts associated with the calling Security Hub administrator
    # account. You only use this operation to invite accounts that don't
    # belong to an AWS Organizations organization.
    svc$invite_members(
      AccountIds = list(
        "111122223333",
        "444455556666"
      )
    )

    ## End(Not run)
