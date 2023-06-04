<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_disable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables an Amazon Web Services account within the Organization as the GuardDuty delegated administrator

### Description

Disables an Amazon Web Services account within the Organization as the
GuardDuty delegated administrator.

### Usage

    guardduty_disable_organization_admin_account(AdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_disable_organization_admin_account_:_AdminAccountId">AdminAccountId</code></td>
<td><p>[required] The Amazon Web Services Account ID for the
organizations account to be disabled as a GuardDuty delegated
administrator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_organization_admin_account(
      AdminAccountId = "string"
    )
