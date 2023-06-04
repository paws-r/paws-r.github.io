<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_firewall_rule_group_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group

### Description

Retrieves a firewall rule group association, which enables DNS filtering
for a VPC with one rule group. A VPC can have more than one firewall
rule group association, and a rule group can be associated with more
than one VPC.

### Usage

    route53resolver_get_firewall_rule_group_association(
      FirewallRuleGroupAssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_firewall_rule_group_association_:_FirewallRuleGroupAssociationId">FirewallRuleGroupAssociationId</code></td>
<td><p>[required] The identifier of the
FirewallRuleGroupAssociation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallRuleGroupAssociation = list(
        Id = "string",
        Arn = "string",
        FirewallRuleGroupId = "string",
        VpcId = "string",
        Name = "string",
        Priority = 123,
        MutationProtection = "ENABLED"|"DISABLED",
        ManagedOwnerName = "string",
        Status = "COMPLETE"|"DELETING"|"UPDATING",
        StatusMessage = "string",
        CreatorRequestId = "string",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$get_firewall_rule_group_association(
      FirewallRuleGroupAssociationId = "string"
    )
