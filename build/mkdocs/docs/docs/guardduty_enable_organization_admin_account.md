<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_enable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables an Amazon Web Services account within the organization as the GuardDuty delegated administrator

### Description

Enables an Amazon Web Services account within the organization as the
GuardDuty delegated administrator.

### Usage

    guardduty_enable_organization_admin_account(AdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_enable_organization_admin_account_:_AdminAccountId">AdminAccountId</code></td>
<td><p>[required] The Amazon Web Services Account ID for the
organization account to be enabled as a GuardDuty delegated
administrator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_organization_admin_account(
      AdminAccountId = "string"
    )
