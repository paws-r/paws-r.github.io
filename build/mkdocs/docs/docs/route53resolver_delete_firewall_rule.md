<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_delete_firewall_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified firewall rule

### Description

Deletes the specified firewall rule.

### Usage

    route53resolver_delete_firewall_rule(FirewallRuleGroupId,
      FirewallDomainListId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_delete_firewall_rule_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule group that
you want to delete the rule from.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_delete_firewall_rule_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list that's used in the
rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallRule = list(
        FirewallRuleGroupId = "string",
        FirewallDomainListId = "string",
        Name = "string",
        Priority = 123,
        Action = "ALLOW"|"BLOCK"|"ALERT",
        BlockResponse = "NODATA"|"NXDOMAIN"|"OVERRIDE",
        BlockOverrideDomain = "string",
        BlockOverrideDnsType = "CNAME",
        BlockOverrideTtl = 123,
        CreatorRequestId = "string",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$delete_firewall_rule(
      FirewallRuleGroupId = "string",
      FirewallDomainListId = "string"
    )
