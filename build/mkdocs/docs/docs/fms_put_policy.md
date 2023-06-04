<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_put_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Firewall Manager policy

### Description

Creates an Firewall Manager policy.

Firewall Manager provides the following types of policies:

-   An WAF policy (type WAFV2), which defines rule groups to run first
    in the corresponding WAF web ACL and rule groups to run last in the
    web ACL.

-   An WAF Classic policy (type WAF), which defines a rule group.

-   A Shield Advanced policy, which applies Shield Advanced protection
    to specified accounts and resources.

-   A security group policy, which manages VPC security groups across
    your Amazon Web Services organization.

-   An Network Firewall policy, which provides firewall rules to filter
    network traffic in specified Amazon VPCs.

-   A DNS Firewall policy, which provides Route 53 Resolver DNS Firewall
    rules to filter DNS queries for specified VPCs.

Each policy is specific to one of the types. If you want to enforce more
than one policy type across accounts, create multiple policies. You can
create multiple policies for each type.

You must be subscribed to Shield Advanced to create a Shield Advanced
policy. For more information about subscribing to Shield Advanced, see
[CreateSubscription](https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html).

### Usage

    fms_put_policy(Policy, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_put_policy_:_Policy">Policy</code></td>
<td><p>[required] The details of the Firewall Manager policy to be
created.</p></td>
</tr>
<tr class="even">
<td><code id="fms_put_policy_:_TagList">TagList</code></td>
<td><p>The tags to add to the Amazon Web Services resource.</p></td>
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

    svc$put_policy(
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
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
