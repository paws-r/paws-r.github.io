<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_stop_monitoring_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops GuardDuty monitoring for the specified member accounts

### Description

Stops GuardDuty monitoring for the specified member accounts. Use the
`start_monitoring_members` operation to restart monitoring for those
accounts.

With `autoEnableOrganizationMembers` configuration for your organization
set to `ALL`, you'll receive an error if you attempt to stop monitoring
the member accounts in your organization.

### Usage

    guardduty_stop_monitoring_members(DetectorId, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_stop_monitoring_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector associated with the
GuardDuty administrator account that is monitoring member
accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_stop_monitoring_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs for the member accounts to stop
monitoring.</p></td>
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

    svc$stop_monitoring_members(
      DetectorId = "string",
      AccountIds = list(
        "string"
      )
    )
