<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_disable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables an account as the delegated Amazon Macie administrator account for an organization in Organizations

### Description

Disables an account as the delegated Amazon Macie administrator account
for an organization in Organizations.

### Usage

    macie2_disable_organization_admin_account(adminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_disable_organization_admin_account_:_adminAccountId">adminAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the delegated
Amazon Macie administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_organization_admin_account(
      adminAccountId = "string"
    )
