<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_associate_firewall_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for the VPC

### Description

Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for
the VPC.

### Usage

    route53resolver_associate_firewall_rule_group(CreatorRequestId,
      FirewallRuleGroupId, VpcId, Priority, Name, MutationProtection, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_associate_firewall_rule_group_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows failed requests to be retried without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_firewall_rule_group_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_associate_firewall_rule_group_:_VpcId">VpcId</code></td>
<td><p>[required] The unique identifier of the VPC that you want to
associate with the rule group.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_firewall_rule_group_:_Priority">Priority</code></td>
<td><p>[required] The setting that determines the processing order of
the rule group among the rule groups that you associate with the
specified VPC. DNS Firewall filters VPC traffic starting from the rule
group with the lowest numeric priority setting.</p>
<p>You must specify a unique priority for each rule group that you
associate with a single VPC. To make it easier to insert rule groups
later, leave space between the numbers, for example, use 101, 200, and
so on. You can change the priority setting for a rule group association
after you create it.</p>
<p>The allowed values for <code>Priority</code> are between 100 and
9900.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_associate_firewall_rule_group_:_Name">Name</code></td>
<td><p>[required] A name that lets you identify the association, to
manage and use it.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_firewall_rule_group_:_MutationProtection">MutationProtection</code></td>
<td><p>If enabled, this setting disallows modification or removal of the
association, to help prevent against accidentally altering DNS firewall
protections. When you create the association, the default setting is
<code>DISABLED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_associate_firewall_rule_group_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the rule group association.</p></td>
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

    svc$associate_firewall_rule_group(
      CreatorRequestId = "string",
      FirewallRuleGroupId = "string",
      VpcId = "string",
      Priority = 123,
      Name = "string",
      MutationProtection = "ENABLED"|"DISABLED",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
