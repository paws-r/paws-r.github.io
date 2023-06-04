<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_set_ip_address_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the type of IP addresses used by the subnets of the specified load balancer

### Description

Sets the type of IP addresses used by the subnets of the specified load
balancer.

### Usage

    elbv2_set_ip_address_type(LoadBalancerArn, IpAddressType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_set_ip_address_type_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_set_ip_address_type_:_IpAddressType">IpAddressType</code></td>
<td><p>[required] The IP address type. The possible values are
<code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for
IPv4 and IPv6 addresses). You can’t specify <code>dualstack</code> for a
load balancer with a UDP or TCP_UDP listener.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpAddressType = "ipv4"|"dualstack"
    )

### Request syntax

    svc$set_ip_address_type(
      LoadBalancerArn = "string",
      IpAddressType = "ipv4"|"dualstack"
    )
