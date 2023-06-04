<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_associate_subnets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified subnets in the Amazon VPC to the firewall

### Description

Associates the specified subnets in the Amazon VPC to the firewall. You
can specify one subnet for each of the Availability Zones that the VPC
spans.

This request creates an Network Firewall firewall endpoint in each of
the subnets. To enable the firewall's protections, you must also modify
the VPC's route tables for each subnet's Availability Zone, to redirect
the traffic that's coming into and going out of the zone through the
firewall endpoint.

### Usage

    networkfirewall_associate_subnets(UpdateToken, FirewallArn,
      FirewallName, SubnetMappings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_associate_subnets_:_UpdateToken">UpdateToken</code></td>
<td><p>An optional token that you can use for optimistic locking.
Network Firewall returns a token to your requests that access the
firewall. The token marks the state of the firewall resource at the time
of the request.</p>
<p>To make an unconditional change to the firewall, omit the token in
your update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.</p>
<p>To make a conditional change to the firewall, provide the token in
your update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an <code>InvalidTokenException</code>. If this
happens, retrieve the firewall again to get a current copy of it with a
new token. Reapply your changes as needed, then try the operation again
using the new token.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_associate_subnets_:_FirewallArn">FirewallArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_associate_subnets_:_FirewallName">FirewallName</code></td>
<td><p>The descriptive name of the firewall. You can't change the name
of a firewall after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_associate_subnets_:_SubnetMappings">SubnetMappings</code></td>
<td><p>[required] The IDs of the subnets that you want to associate with
the firewall.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallArn = "string",
      FirewallName = "string",
      SubnetMappings = list(
        list(
          SubnetId = "string",
          IPAddressType = "DUALSTACK"|"IPV4"|"IPV6"
        )
      ),
      UpdateToken = "string"
    )

### Request syntax

    svc$associate_subnets(
      UpdateToken = "string",
      FirewallArn = "string",
      FirewallName = "string",
      SubnetMappings = list(
        list(
          SubnetId = "string",
          IPAddressType = "DUALSTACK"|"IPV4"|"IPV6"
        )
      )
    )
