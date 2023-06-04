<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_disassociate_firewall_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering from the VPC

### Description

Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering
from the VPC.

### Usage

    route53resolver_disassociate_firewall_rule_group(
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
id="route53resolver_disassociate_firewall_rule_group_:_FirewallRuleGroupAssociationId">FirewallRuleGroupAssociationId</code></td>
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

    svc$disassociate_firewall_rule_group(
      FirewallRuleGroupAssociationId = "string"
    )
