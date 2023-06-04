<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_delete_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes invitations received by the Amazon Web Services account to become a member account

### Description

Deletes invitations received by the Amazon Web Services account to
become a member account.

A Security Hub administrator account can use this operation to delete
invitations sent to one or more member accounts.

This operation is only used to delete invitations that are sent to
member accounts that aren't part of an organization. Organization
accounts don't receive invitations.

### Usage

    securityhub_delete_invitations(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_delete_invitations_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of member account IDs that received the
invitations you want to delete.</p></td>
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

    svc$delete_invitations(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example deletes an invitation sent by the Security Hub
    # administrator account to a prospective member account. This operation is
    # used only for invitations sent to accounts that aren't part of an
    # organization. Organization accounts don't receive invitations.
    svc$delete_invitations(
      AccountIds = list(
        "123456789012"
      )
    )

    ## End(Not run)
