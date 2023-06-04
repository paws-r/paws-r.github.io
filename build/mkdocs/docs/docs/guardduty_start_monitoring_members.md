<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_start_monitoring_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Turns on GuardDuty monitoring of the specified member accounts

### Description

Turns on GuardDuty monitoring of the specified member accounts. Use this
operation to restart monitoring of accounts that you stopped monitoring
with the `stop_monitoring_members` operation.

### Usage

    guardduty_start_monitoring_members(DetectorId, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_start_monitoring_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty
administrator account associated with the member accounts to
monitor.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_start_monitoring_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs of the GuardDuty member accounts
to start monitoring.</p></td>
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

    svc$start_monitoring_members(
      DetectorId = "string",
      AccountIds = list(
        "string"
      )
    )
