<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_decline_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Declines invitations to become a member account

### Description

Declines invitations to become a member account.

A prospective member account uses this operation to decline an
invitation to become a member.

This operation is only called by member accounts that aren't part of an
organization. Organization accounts don't receive invitations.

### Usage

    securityhub_decline_invitations(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_decline_invitations_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of prospective member account IDs for which
to decline an invitation.</p></td>
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

    svc$decline_invitations(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example declines an invitation from the Security Hub
    # administrator account to become a member account. The invited account
    # makes the request.
    svc$decline_invitations(
      AccountIds = list(
        "123456789012",
        "111122223333"
      )
    )

    ## End(Not run)
