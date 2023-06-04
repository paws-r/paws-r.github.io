<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_enable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Designates the Detective administrator account for the organization in the current Region

### Description

Designates the Detective administrator account for the organization in
the current Region.

If the account does not have Detective enabled, then enables Detective
for that account and creates a new behavior graph.

Can only be called by the organization management account.

If the organization has a delegated administrator account in
Organizations, then the Detective administrator account must be either
the delegated administrator account or the organization management
account.

If the organization does not have a delegated administrator account in
Organizations, then you can choose any account in the organization. If
you choose an account other than the organization management account,
Detective calls Organizations to make that account the delegated
administrator account for Detective. The organization management account
cannot be the delegated administrator account.

### Usage

    detective_enable_organization_admin_account(AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_enable_organization_admin_account_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account identifier of the
account to designate as the Detective administrator account for the
organization.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_organization_admin_account(
      AccountId = "string"
    )
