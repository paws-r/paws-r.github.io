<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_firewall_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a single DNS Firewall rule in the specified rule group, using the specified domain list

### Description

Creates a single DNS Firewall rule in the specified rule group, using
the specified domain list.

### Usage

    route53resolver_create_firewall_rule(CreatorRequestId,
      FirewallRuleGroupId, FirewallDomainListId, Priority, Action,
      BlockResponse, BlockOverrideDomain, BlockOverrideDnsType,
      BlockOverrideTtl, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows you to retry failed requests without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule group where
you want to create the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list that you want to use in the
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_:_Priority">Priority</code></td>
<td><p>[required] The setting that determines the processing order of
the rule in the rule group. DNS Firewall processes the rules in a rule
group by order of priority, starting from the lowest setting.</p>
<p>You must specify a unique priority for each rule in a rule group. To
make it easier to insert rules later, leave space between the numbers,
for example, use 100, 200, and so on. You can change the priority
setting for the rules in a rule group at any time.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_:_Action">Action</code></td>
<td><p>[required] The action that DNS Firewall should take on a DNS
query when it matches one of the domains in the rule's domain list:</p>
<ul>
<li><p><code>ALLOW</code> - Permit the request to go through.</p></li>
<li><p><code>ALERT</code> - Permit the request and send metrics and logs
to Cloud Watch.</p></li>
<li><p><code>BLOCK</code> - Disallow the request. This option requires
additional details in the rule's <code>BlockResponse</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_:_BlockResponse">BlockResponse</code></td>
<td><p>The way that you want DNS Firewall to block the request, used
with the rule action setting <code>BLOCK</code>.</p>
<ul>
<li><p><code>NODATA</code> - Respond indicating that the query was
successful, but no response is available for it.</p></li>
<li><p><code>NXDOMAIN</code> - Respond indicating that the domain name
that's in the query doesn't exist.</p></li>
<li><p><code>OVERRIDE</code> - Provide a custom override in the
response. This option requires custom handling details in the rule's
<code style="white-space: pre;">⁠BlockOverride*⁠</code> settings.</p></li>
</ul>
<p>This setting is required if the rule action setting is
<code>BLOCK</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_:_BlockOverrideDomain">BlockOverrideDomain</code></td>
<td><p>The custom DNS record to send back in response to the query. Used
for the rule action <code>BLOCK</code> with a <code>BlockResponse</code>
setting of <code>OVERRIDE</code>.</p>
<p>This setting is required if the <code>BlockResponse</code> setting is
<code>OVERRIDE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_:_BlockOverrideDnsType">BlockOverrideDnsType</code></td>
<td><p>The DNS record's type. This determines the format of the record
value that you provided in <code>BlockOverrideDomain</code>. Used for
the rule action <code>BLOCK</code> with a <code>BlockResponse</code>
setting of <code>OVERRIDE</code>.</p>
<p>This setting is required if the <code>BlockResponse</code> setting is
<code>OVERRIDE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_firewall_rule_:_BlockOverrideTtl">BlockOverrideTtl</code></td>
<td><p>The recommended amount of time, in seconds, for the DNS resolver
or web browser to cache the provided override record. Used for the rule
action <code>BLOCK</code> with a <code>BlockResponse</code> setting of
<code>OVERRIDE</code>.</p>
<p>This setting is required if the <code>BlockResponse</code> setting is
<code>OVERRIDE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_firewall_rule_:_Name">Name</code></td>
<td><p>[required] A name that lets you identify the rule in the rule
group.</p></td>
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

    svc$create_firewall_rule(
      CreatorRequestId = "string",
      FirewallRuleGroupId = "string",
      FirewallDomainListId = "string",
      Priority = 123,
      Action = "ALLOW"|"BLOCK"|"ALERT",
      BlockResponse = "NODATA"|"NXDOMAIN"|"OVERRIDE",
      BlockOverrideDomain = "string",
      BlockOverrideDnsType = "CNAME",
      BlockOverrideTtl = 123,
      Name = "string"
    )
