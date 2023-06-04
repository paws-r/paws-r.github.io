<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_resolver_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network

### Description

For DNS queries that originate in your VPCs, specifies which Resolver
endpoint the queries pass through, one domain name that you want to
forward to your network, and the IP addresses of the DNS resolvers in
your network.

### Usage

    route53resolver_create_resolver_rule(CreatorRequestId, Name, RuleType,
      DomainName, TargetIps, ResolverEndpointId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_rule_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows failed requests to be retried without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_rule_:_Name">Name</code></td>
<td><p>A friendly name that lets you easily find a rule in the Resolver
dashboard in the Route 53 console.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_rule_:_RuleType">RuleType</code></td>
<td><p>[required] When you want to forward DNS queries for specified
domain name to resolvers on your network, specify
<code>FORWARD</code>.</p>
<p>When you have a forwarding rule to forward DNS queries for a domain
to your network and you want Resolver to process queries for a subdomain
of that domain, specify <code>SYSTEM</code>.</p>
<p>For example, to forward DNS queries for example.com to resolvers on
your network, you create a rule and specify <code>FORWARD</code> for
<code>RuleType</code>. To then have Resolver process queries for
apex.example.com, you create a rule and specify <code>SYSTEM</code> for
<code>RuleType</code>.</p>
<p>Currently, only Resolver can create rules that have a value of
<code>RECURSIVE</code> for <code>RuleType</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_rule_:_DomainName">DomainName</code></td>
<td><p>[required] DNS queries for this domain name are forwarded to the
IP addresses that you specify in <code>TargetIps</code>. If a query
matches multiple Resolver rules (example.com and www.example.com),
outbound DNS queries are routed using the Resolver rule that contains
the most specific domain name (www.example.com).</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_rule_:_TargetIps">TargetIps</code></td>
<td><p>The IPs that you want Resolver to forward DNS queries to. You can
specify only IPv4 addresses. Separate IP addresses with a space.</p>
<p><code>TargetIps</code> is available only when the value of <code
style="white-space: pre;">⁠Rule type⁠</code> is
<code>FORWARD</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_rule_:_ResolverEndpointId">ResolverEndpointId</code></td>
<td><p>The ID of the outbound Resolver endpoint that you want to use to
route DNS queries to the IP addresses that you specify in
<code>TargetIps</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_rule_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverRule = list(
        Id = "string",
        CreatorRequestId = "string",
        Arn = "string",
        DomainName = "string",
        Status = "COMPLETE"|"DELETING"|"UPDATING"|"FAILED",
        StatusMessage = "string",
        RuleType = "FORWARD"|"SYSTEM"|"RECURSIVE",
        Name = "string",
        TargetIps = list(
          list(
            Ip = "string",
            Port = 123,
            Ipv6 = "string"
          )
        ),
        ResolverEndpointId = "string",
        OwnerId = "string",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        CreationTime = "string",
        ModificationTime = "string"
      )
    )

### Request syntax

    svc$create_resolver_rule(
      CreatorRequestId = "string",
      Name = "string",
      RuleType = "FORWARD"|"SYSTEM"|"RECURSIVE",
      DomainName = "string",
      TargetIps = list(
        list(
          Ip = "string",
          Port = 123,
          Ipv6 = "string"
        )
      ),
      ResolverEndpointId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
