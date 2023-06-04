<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_firewall_rule_group_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the association of a FirewallRuleGroup with a VPC

### Description

Changes the association of a FirewallRuleGroup with a VPC. The
association enables DNS filtering for the VPC.

### Usage

    route53resolver_update_firewall_rule_group_association(
      FirewallRuleGroupAssociationId, Priority, MutationProtection, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_group_association_:_FirewallRuleGroupAssociationId">FirewallRuleGroupAssociationId</code></td>
<td><p>[required] The identifier of the
FirewallRuleGroupAssociation.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_group_association_:_Priority">Priority</code></td>
<td><p>The setting that determines the processing order of the rule
group among the rule groups that you associate with the specified VPC.
DNS Firewall filters VPC traffic starting from the rule group with the
lowest numeric priority setting.</p>
<p>You must specify a unique priority for each rule group that you
associate with a single VPC. To make it easier to insert rule groups
later, leave space between the numbers, for example, use 100, 200, and
so on. You can change the priority setting for a rule group association
after you create it.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_group_association_:_MutationProtection">MutationProtection</code></td>
<td><p>If enabled, this setting disallows modification or removal of the
association, to help prevent against accidentally altering DNS firewall
protections.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_group_association_:_Name">Name</code></td>
<td><p>The name of the rule group association.</p></td>
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

    svc$update_firewall_rule_group_association(
      FirewallRuleGroupAssociationId = "string",
      Priority = 123,
      MutationProtection = "ENABLED"|"DISABLED",
      Name = "string"
    )
