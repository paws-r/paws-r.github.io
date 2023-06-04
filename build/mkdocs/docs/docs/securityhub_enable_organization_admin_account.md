<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_enable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Designates the Security Hub administrator account for an organization

### Description

Designates the Security Hub administrator account for an organization.
Can only be called by the organization management account.

### Usage

    securityhub_enable_organization_admin_account(AdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_enable_organization_admin_account_:_AdminAccountId">AdminAccountId</code></td>
<td><p>[required] The Amazon Web Services account identifier of the
account to designate as the Security Hub administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_organization_admin_account(
      AdminAccountId = "string"
    )

### Examples

    ## Not run: 
    # The following example designates the specified account as the Security
    # Hub administrator account. The requesting account must be the
    # organization management account.
    svc$enable_organization_admin_account(
      AdminAccountId = "123456789012"
    )

    ## End(Not run)
