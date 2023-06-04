<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_put_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an Firewall Manager administrator account

### Description

Creates or updates an Firewall Manager administrator account. The
account must be a member of the organization that was onboarded to
Firewall Manager by `associate_admin_account`. Only the organization's
management account can create an Firewall Manager administrator account.
When you create an Firewall Manager administrator account, the service
checks to see if the account is already a delegated administrator within
Organizations. If the account isn't a delegated administrator, Firewall
Manager calls Organizations to delegate the account within
Organizations. For more information about administrator accounts within
Organizations, see [Managing the Amazon Web Services Accounts in Your
Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).

### Usage

    fms_put_admin_account(AdminAccount, AdminScope)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_put_admin_account_:_AdminAccount">AdminAccount</code></td>
<td><p>[required] The Amazon Web Services account ID to add as an
Firewall Manager administrator account. The account must be a member of
the organization that was onboarded to Firewall Manager by
<code>associate_admin_account</code>. For more information about
Organizations, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing
the Amazon Web Services Accounts in Your Organization</a>.</p></td>
</tr>
<tr class="even">
<td><code id="fms_put_admin_account_:_AdminScope">AdminScope</code></td>
<td><p>Configures the resources that the specified Firewall Manager
administrator can manage. As a best practice, set the administrative
scope according to the principles of least privilege. Only grant the
administrator the specific resources or permissions that they need to
perform the duties of their role.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_admin_account(
      AdminAccount = "string",
      AdminScope = list(
        AccountScope = list(
          Accounts = list(
            "string"
          ),
          AllAccountsEnabled = TRUE|FALSE,
          ExcludeSpecifiedAccounts = TRUE|FALSE
        ),
        OrganizationalUnitScope = list(
          OrganizationalUnits = list(
            "string"
          ),
          AllOrganizationalUnitsEnabled = TRUE|FALSE,
          ExcludeSpecifiedOrganizationalUnits = TRUE|FALSE
        ),
        RegionScope = list(
          Regions = list(
            "string"
          ),
          AllRegionsEnabled = TRUE|FALSE
        ),
        PolicyTypeScope = list(
          PolicyTypes = list(
            "WAF"|"WAFV2"|"SHIELD_ADVANCED"|"SECURITY_GROUPS_COMMON"|"SECURITY_GROUPS_CONTENT_AUDIT"|"SECURITY_GROUPS_USAGE_AUDIT"|"NETWORK_FIREWALL"|"DNS_FIREWALL"|"THIRD_PARTY_FIREWALL"|"IMPORT_NETWORK_FIREWALL"
          ),
          AllPolicyTypesEnabled = TRUE|FALSE
        )
      )
    )
