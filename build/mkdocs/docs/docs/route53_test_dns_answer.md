<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_test_dns_answer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type

### Description

Gets the value that Amazon Route 53 returns in response to a DNS request
for a specified record name and type. You can optionally specify the IP
address of a DNS resolver, an EDNS0 client subnet IP address, and a
subnet mask.

This call only supports querying public hosted zones.

### Usage

    route53_test_dns_answer(HostedZoneId, RecordName, RecordType,
      ResolverIP, EDNS0ClientSubnetIP, EDNS0ClientSubnetMask)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_test_dns_answer_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the hosted zone that you want Amazon Route
53 to simulate a query for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_test_dns_answer_:_RecordName">RecordName</code></td>
<td><p>[required] The name of the resource record set that you want
Amazon Route 53 to simulate a query for.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_test_dns_answer_:_RecordType">RecordType</code></td>
<td><p>[required] The type of the resource record set.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_test_dns_answer_:_ResolverIP">ResolverIP</code></td>
<td><p>If you want to simulate a request from a specific DNS resolver,
specify the IP address for that resolver. If you omit this value,
<code>TestDnsAnswer</code> uses the IP address of a DNS resolver in the
Amazon Web Services US East (N. Virginia) Region
(<code>us-east-1</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_test_dns_answer_:_EDNS0ClientSubnetIP">EDNS0ClientSubnetIP</code></td>
<td><p>If the resolver that you specified for resolverip supports EDNS0,
specify the IPv4 or IPv6 address of a client in the applicable location,
for example, <code style="white-space: pre;">⁠192.0.2.44⁠</code> or <code
style="white-space: pre;">⁠2001:db8:85a3::8a2e:370:7334⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_test_dns_answer_:_EDNS0ClientSubnetMask">EDNS0ClientSubnetMask</code></td>
<td><p>If you specify an IP address for
<code>edns0clientsubnetip</code>, you can optionally specify the number
of bits of the IP address that you want the checking tool to include in
the DNS query. For example, if you specify <code
style="white-space: pre;">⁠192.0.2.44⁠</code> for
<code>edns0clientsubnetip</code> and <code>24</code> for
<code>edns0clientsubnetmask</code>, the checking tool will simulate a
request from 192.0.2.0/24. The default value is 24 bits for IPv4
addresses and 64 bits for IPv6 addresses.</p>
<p>The range of valid values depends on whether
<code>edns0clientsubnetip</code> is an IPv4 or an IPv6 address:</p>
<ul>
<li><p><strong>IPv4</strong>: Specify a value between 0 and 32</p></li>
<li><p><strong>IPv6</strong>: Specify a value between 0 and 128</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Nameserver = "string",
      RecordName = "string",
      RecordType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      RecordData = list(
        "string"
      ),
      ResponseCode = "string",
      Protocol = "string"
    )

### Request syntax

    svc$test_dns_answer(
      HostedZoneId = "string",
      RecordName = "string",
      RecordType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      ResolverIP = "string",
      EDNS0ClientSubnetIP = "string",
      EDNS0ClientSubnetMask = "string"
    )
