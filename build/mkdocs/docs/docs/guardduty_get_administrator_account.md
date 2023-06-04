<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_administrator_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account

### Description

Provides the details for the GuardDuty administrator account associated
with the current GuardDuty member account.

### Usage

    guardduty_get_administrator_account(DetectorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_administrator_account_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty member
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Administrator = list(
        AccountId = "string",
        InvitationId = "string",
        RelationshipStatus = "string",
        InvitedAt = "string"
      )
    )

### Request syntax

    svc$get_administrator_account(
      DetectorId = "string"
    )
