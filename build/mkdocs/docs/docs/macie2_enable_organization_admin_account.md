<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_enable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Designates an account as the delegated Amazon Macie administrator account for an organization in Organizations

### Description

Designates an account as the delegated Amazon Macie administrator
account for an organization in Organizations.

### Usage

    macie2_enable_organization_admin_account(adminAccountId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_enable_organization_admin_account_:_adminAccountId">adminAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the account to
designate as the delegated Amazon Macie administrator account for the
organization.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_enable_organization_admin_account_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure the
idempotency of the request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_organization_admin_account(
      adminAccountId = "string",
      clientToken = "string"
    )
