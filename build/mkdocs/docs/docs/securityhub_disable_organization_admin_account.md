<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disable_organization_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables a Security Hub administrator account

### Description

Disables a Security Hub administrator account. Can only be called by the
organization management account.

### Usage

    securityhub_disable_organization_admin_account(AdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_disable_organization_admin_account_:_AdminAccountId">AdminAccountId</code></td>
<td><p>[required] The Amazon Web Services account identifier of the
Security Hub administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_organization_admin_account(
      AdminAccountId = "string"
    )

### Examples

    ## Not run: 
    # The following example removes the Security Hub administrator account in
    # the Region from which the operation was executed. This operation doesn't
    # remove the delegated administrator account in AWS Organizations.
    svc$disable_organization_admin_account(
      AdminAccountId = "123456789012"
    )

    ## End(Not run)
