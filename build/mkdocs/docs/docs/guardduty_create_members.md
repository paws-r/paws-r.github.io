<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account IDs

### Description

Creates member accounts of the current Amazon Web Services account by
specifying a list of Amazon Web Services account IDs. This step is a
prerequisite for managing the associated member accounts either by
invitation or through an organization.

When using `⁠Create Members⁠` as an organizations delegated administrator
this action will enable GuardDuty in the added member accounts, with the
exception of the organization delegated administrator account, which
must enable GuardDuty prior to being added as a member.

If you are adding accounts by invitation, use this action after
GuardDuty has bee enabled in potential member accounts and before using
`invite_members`.

### Usage

    guardduty_create_members(DetectorId, AccountDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_create_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty account
that you want to associate member accounts with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_members_:_AccountDetails">AccountDetails</code></td>
<td><p>[required] A list of account ID and email address pairs of the
accounts that you want to associate with the GuardDuty administrator
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Result = "string"
        )
      )
    )

### Request syntax

    svc$create_members(
      DetectorId = "string",
      AccountDetails = list(
        list(
          AccountId = "string",
          Email = "string"
        )
      )
    )
