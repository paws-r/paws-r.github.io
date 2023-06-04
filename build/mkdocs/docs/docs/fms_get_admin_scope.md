<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_admin_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified account's administrative scope

### Description

Returns information about the specified account's administrative scope.
The admistrative scope defines the resources that an Firewall Manager
administrator can manage.

### Usage

    fms_get_admin_scope(AdminAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_get_admin_scope_:_AdminAccount">AdminAccount</code></td>
<td><p>[required] The administator account that you want to get the
details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ),
      Status = "ONBOARDING"|"ONBOARDING_COMPLETE"|"OFFBOARDING"|"OFFBOARDING_COMPLETE"
    )

### Request syntax

    svc$get_admin_scope(
      AdminAccount = "string"
    )
