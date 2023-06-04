<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_firewall_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified firewall rule

### Description

Updates the specified firewall rule.

### Usage

    route53resolver_update_firewall_rule(FirewallRuleGroupId,
      FirewallDomainListId, Priority, Action, BlockResponse,
      BlockOverrideDomain, BlockOverrideDnsType, BlockOverrideTtl, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_:_FirewallRuleGroupId">FirewallRuleGroupId</code></td>
<td><p>[required] The unique identifier of the firewall rule group for
the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_:_FirewallDomainListId">FirewallDomainListId</code></td>
<td><p>[required] The ID of the domain list to use in the rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_:_Priority">Priority</code></td>
<td><p>The setting that determines the processing order of the rule in
the rule group. DNS Firewall processes the rules in a rule group by
order of priority, starting from the lowest setting.</p>
<p>You must specify a unique priority for each rule in a rule group. To
make it easier to insert rules later, leave space between the numbers,
for example, use 100, 200, and so on. You can change the priority
setting for the rules in a rule group at any time.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_:_Action">Action</code></td>
<td><p>The action that DNS Firewall should take on a DNS query when it
matches one of the domains in the rule's domain list:</p>
<ul>
<li><p><code>ALLOW</code> - Permit the request to go through.</p></li>
<li><p><code>ALERT</code> - Permit the request to go through but send an
alert to the logs.</p></li>
<li><p><code>BLOCK</code> - Disallow the request. This option requires
additional details in the rule's <code>BlockResponse</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_:_BlockResponse">BlockResponse</code></td>
<td><p>The way that you want DNS Firewall to block the request. Used for
the rule action setting <code>BLOCK</code>.</p>
<ul>
<li><p><code>NODATA</code> - Respond indicating that the query was
successful, but no response is available for it.</p></li>
<li><p><code>NXDOMAIN</code> - Respond indicating that the domain name
that's in the query doesn't exist.</p></li>
<li><p><code>OVERRIDE</code> - Provide a custom override in the
response. This option requires custom handling details in the rule's
<code style="white-space: pre;">⁠BlockOverride*⁠</code> settings.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_:_BlockOverrideDomain">BlockOverrideDomain</code></td>
<td><p>The custom DNS record to send back in response to the query. Used
for the rule action <code>BLOCK</code> with a <code>BlockResponse</code>
setting of <code>OVERRIDE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_:_BlockOverrideDnsType">BlockOverrideDnsType</code></td>
<td><p>The DNS record's type. This determines the format of the record
value that you provided in <code>BlockOverrideDomain</code>. Used for
the rule action <code>BLOCK</code> with a <code>BlockResponse</code>
setting of <code>OVERRIDE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_rule_:_BlockOverrideTtl">BlockOverrideTtl</code></td>
<td><p>The recommended amount of time, in seconds, for the DNS resolver
or web browser to cache the provided override record. Used for the rule
action <code>BLOCK</code> with a <code>BlockResponse</code> setting of
<code>OVERRIDE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_rule_:_Name">Name</code></td>
<td><p>The name of the rule.</p></td>
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

    svc$update_firewall_rule(
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
