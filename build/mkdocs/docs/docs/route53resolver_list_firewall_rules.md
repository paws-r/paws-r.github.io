<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_firewall_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the firewall rules that you have defined for the specified firewall rule group

### Description

Retrieves the firewall rules that you have defined for the specified
firewall rule group. DNS Firewall uses the rules in a rule group to
filter DNS network traffic for a VPC.

A single call might return only a partial list of the rules. For
information, see `MaxResults`.

### Usage

    route53resolver_list_firewall_rules(FirewallRuleGroupId, Priority,
      Action, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rules_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule group that
you want to retrieve the rules for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_rules_:_Priority">Priority</code></td>
<td><p>Optional additional filter for the rules to retrieve.</p>
<p>The setting that determines the processing order of the rules in a
rule group. DNS Firewall processes the rules in a rule group by order of
priority, starting from the lowest setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rules_:_Action">Action</code></td>
<td><p>Optional additional filter for the rules to retrieve.</p>
<p>The action that DNS Firewall should take on a DNS query when it
matches one of the domains in the rule's domain list:</p>
<ul>
<li><p><code>ALLOW</code> - Permit the request to go through.</p></li>
<li><p><code>ALERT</code> - Permit the request to go through but send an
alert to the logs.</p></li>
<li><p><code>BLOCK</code> - Disallow the request. If this is specified,
additional handling details are provided in the rule's
<code>BlockResponse</code> setting.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_firewall_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Resolver to return
for this request. If more objects are available, in the response,
Resolver provides a <code>NextToken</code> value that you can use in a
subsequent call to get the next batch of objects.</p>
<p>If you don't specify a value for <code>MaxResults</code>, Resolver
returns up to 100 objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_firewall_rules_:_NextToken">NextToken</code></td>
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
      FirewallRules = list(
        list(
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
    )

### Request syntax

    svc$list_firewall_rules(
      FirewallRuleGroupId = "string",
      Priority = 123,
      Action = "ALLOW"|"BLOCK"|"ALERT",
      MaxResults = 123,
      NextToken = "string"
    )
