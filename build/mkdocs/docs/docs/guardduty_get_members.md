<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by the account IDs

### Description

Retrieves GuardDuty member accounts (of the current GuardDuty
administrator account) specified by the account IDs.

### Usage

    guardduty_get_members(DetectorId, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="guardduty_get_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty account
whose members you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_get_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs of the GuardDuty member accounts
that you want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Members = list(
        list(
          AccountId = "string",
          DetectorId = "string",
          MasterId = "string",
          Email = "string",
          RelationshipStatus = "string",
          InvitedAt = "string",
          UpdatedAt = "string",
          AdministratorId = "string"
        )
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Result = "string"
        )
      )
    )

### Request syntax

    svc$get_members(
      DetectorId = "string",
      AccountIds = list(
        "string"
      )
    )
