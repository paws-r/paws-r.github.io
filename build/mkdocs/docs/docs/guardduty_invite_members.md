<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_invite_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Invites other Amazon Web Services accounts (created as members of the current Amazon Web Services account by CreateMembers) to enable GuardDuty, and allow the current Amazon Web Services account to view and manage these accounts' findings on their behalf as the GuardDuty administrator account

### Description

Invites other Amazon Web Services accounts (created as members of the
current Amazon Web Services account by CreateMembers) to enable
GuardDuty, and allow the current Amazon Web Services account to view and
manage these accounts' findings on their behalf as the GuardDuty
administrator account.

### Usage

    guardduty_invite_members(DetectorId, AccountIds,
      DisableEmailNotification, Message)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_invite_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty account
that you want to invite members with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_invite_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs of the accounts that you want to
invite to GuardDuty as members.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_invite_members_:_DisableEmailNotification">DisableEmailNotification</code></td>
<td><p>A Boolean value that specifies whether you want to disable email
notification to the accounts that you are inviting to GuardDuty as
members.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_invite_members_:_Message">Message</code></td>
<td><p>The invitation message that you want to send to the accounts that
you're inviting to GuardDuty as members.</p></td>
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

    svc$invite_members(
      DetectorId = "string",
      AccountIds = list(
        "string"
      ),
      DisableEmailNotification = TRUE|FALSE,
      Message = "string"
    )
