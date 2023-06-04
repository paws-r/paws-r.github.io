<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified Firewall Manager policy

### Description

Returns information about the specified Firewall Manager policy.

### Usage

    fms_get_policy(PolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the Firewall Manager policy that you want
the details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        PolicyId = "string",
        PolicyName = "string",
        PolicyUpdateToken = "string",
        SecurityServicePolicyData = list(
          Type = "WAF"|"WAFV2"|"SHIELD_ADVANCED"|"SECURITY_GROUPS_COMMON"|"SECURITY_GROUPS_CONTENT_AUDIT"|"SECURITY_GROUPS_USAGE_AUDIT"|"NETWORK_FIREWALL"|"DNS_FIREWALL"|"THIRD_PARTY_FIREWALL"|"IMPORT_NETWORK_FIREWALL",
          ManagedServiceData = "string",
          PolicyOption = list(
            NetworkFirewallPolicy = list(
              FirewallDeploymentModel = "CENTRALIZED"|"DISTRIBUTED"
            ),
            ThirdPartyFirewallPolicy = list(
              FirewallDeploymentModel = "CENTRALIZED"|"DISTRIBUTED"
            )
          )
        ),
        ResourceType = "string",
        ResourceTypeList = list(
          "string"
        ),
        ResourceTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ExcludeResourceTags = TRUE|FALSE,
        RemediationEnabled = TRUE|FALSE,
        DeleteUnusedFMManagedResources = TRUE|FALSE,
        IncludeMap = list(
          list(
            "string"
          )
        ),
        ExcludeMap = list(
          list(
            "string"
          )
        ),
        ResourceSetIds = list(
          "string"
        ),
        PolicyDescription = "string",
        PolicyStatus = "ACTIVE"|"OUT_OF_ADMIN_SCOPE"
      ),
      PolicyArn = "string"
    )

### Request syntax

    svc$get_policy(
      PolicyId = "string"
    )
