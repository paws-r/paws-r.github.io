<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs

### Description

Deletes GuardDuty member accounts (to the current GuardDuty
administrator account) specified by the account IDs.

With `autoEnableOrganizationMembers` configuration for your organization
set to `ALL`, you'll receive an error if you attempt to disable
GuardDuty for a member account in your organization.

### Usage

    guardduty_delete_members(DetectorId, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty account
whose members you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_delete_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs of the GuardDuty member accounts
that you want to delete.</p></td>
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

    svc$delete_members(
      DetectorId = "string",
      AccountIds = list(
        "string"
      )
    )
