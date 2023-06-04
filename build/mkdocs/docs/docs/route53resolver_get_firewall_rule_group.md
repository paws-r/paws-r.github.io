<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_firewall_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified firewall rule group

### Description

Retrieves the specified firewall rule group.

### Usage

    route53resolver_get_firewall_rule_group(FirewallRuleGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_firewall_rule_group_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallRuleGroup = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        RuleCount = 123,
        Status = "COMPLETE"|"DELETING"|"UPDATING",
        StatusMessage = "string",
        OwnerId = "string",
        CreatorRequestId = "string",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$get_firewall_rule_group(
      FirewallRuleGroupId = "string"
    )
