<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_firewall_rule_group_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the firewall rule group associations that you have defined

### Description

Retrieves the firewall rule group associations that you have defined.
Each association enables DNS filtering for a VPC with one rule group.

A single call might return only a partial list of the associations. For
information, see `MaxResults`.

### Usage

    route53resolver_list_firewall_rule_group_associations(
      FirewallRuleGroupId, VpcId, Priority, Status, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>The unique identifier of the firewall rule group that you want to
retrieve the associations for. Leave this blank to retrieve associations
for any rule group.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_VpcId">VpcId</code></td>
<td><p>The unique identifier of the VPC that you want to retrieve the
associations for. Leave this blank to retrieve associations for any
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_Priority">Priority</code></td>
<td><p>The setting that determines the processing order of the rule
group among the rule groups that are associated with a single VPC. DNS
Firewall filters VPC traffic starting from the rule group with the
lowest numeric priority setting.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_Status">Status</code></td>
<td><p>The association <code>Status</code> setting that you want DNS
Firewall to filter on for the list. If you don't specify this, then DNS
Firewall returns all associations, regardless of status.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Resolver to return
for this request. If more objects are available, in the response,
Resolver provides a <code>NextToken</code> value that you can use in a
subsequent call to get the next batch of objects.</p>
<p>If you don't specify a value for <code>MaxResults</code>, Resolver
returns up to 100 objects.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_rule_group_associations_:_NextToken">NextToken</code></td>
<td><p>For the first call to this list request, omit this value.</p>
<p>When you request a list of objects, Resolver returns at most the
number of objects specified in <code>MaxResults</code>. If more objects
are available for retrieval, Resolver returns a <code>NextToken</code>
value in the response. To retrieve the next batch of objects, use the
token that was returned for the prior request in your next
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      FirewallRuleGroupAssociations = list(
        list(
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
    )

### Request syntax

    svc$list_firewall_rule_group_associations(
      FirewallRuleGroupId = "string",
      VpcId = "string",
      Priority = 123,
      Status = "COMPLETE"|"DELETING"|"UPDATING",
      MaxResults = 123,
      NextToken = "string"
    )
