<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_set_subnets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the Availability Zones for the specified public subnets for the specified Application Load Balancer or Network Load Balancer

### Description

Enables the Availability Zones for the specified public subnets for the
specified Application Load Balancer or Network Load Balancer. The
specified subnets replace the previously enabled subnets.

When you specify subnets for a Network Load Balancer, you must include
all subnets that were enabled previously, with their existing
configurations, plus any additional subnets.

### Usage

    elbv2_set_subnets(LoadBalancerArn, Subnets, SubnetMappings,
      IpAddressType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_set_subnets_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the load
balancer.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_set_subnets_:_Subnets">Subnets</code></td>
<td><p>The IDs of the public subnets. You can specify only one subnet
per Availability Zone. You must specify either subnets or subnet
mappings.</p>
<p>[Application Load Balancers] You must specify subnets from at least
two Availability Zones.</p>
<p>[Application Load Balancers on Outposts] You must specify one Outpost
subnet.</p>
<p>[Application Load Balancers on Local Zones] You can specify subnets
from one or more Local Zones.</p>
<p>[Network Load Balancers] You can specify subnets from one or more
Availability Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_set_subnets_:_SubnetMappings">SubnetMappings</code></td>
<td><p>The IDs of the public subnets. You can specify only one subnet
per Availability Zone. You must specify either subnets or subnet
mappings.</p>
<p>[Application Load Balancers] You must specify subnets from at least
two Availability Zones. You cannot specify Elastic IP addresses for your
subnets.</p>
<p>[Application Load Balancers on Outposts] You must specify one Outpost
subnet.</p>
<p>[Application Load Balancers on Local Zones] You can specify subnets
from one or more Local Zones.</p>
<p>[Network Load Balancers] You can specify subnets from one or more
Availability Zones. You can specify one Elastic IP address per subnet if
you need static IP addresses for your internet-facing load balancer. For
internal load balancers, you can specify one private IP address per
subnet from the IPv4 range of the subnet. For internet-facing load
balancer, you can specify one IPv6 address per subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_set_subnets_:_IpAddressType">IpAddressType</code></td>
<td><p>[Network Load Balancers] The type of IP addresses used by the
subnets for your load balancer. The possible values are
<code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for
IPv4 and IPv6 addresses). You can’t specify <code>dualstack</code> for a
load balancer with a UDP or TCP_UDP listener. .</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AvailabilityZones = list(
        list(
          ZoneName = "string",
          SubnetId = "string",
          OutpostId = "string",
          LoadBalancerAddresses = list(
            list(
              IpAddress = "string",
              AllocationId = "string",
              PrivateIPv4Address = "string",
              IPv6Address = "string"
            )
          )
        )
      ),
      IpAddressType = "ipv4"|"dualstack"
    )

### Request syntax

    svc$set_subnets(
      LoadBalancerArn = "string",
      Subnets = list(
        "string"
      ),
      SubnetMappings = list(
        list(
          SubnetId = "string",
          AllocationId = "string",
          PrivateIPv4Address = "string",
          IPv6Address = "string"
        )
      ),
      IpAddressType = "ipv4"|"dualstack"
    )

### Examples

    ## Not run: 
    # This example enables the Availability Zones for the specified subnets
    # for the specified load balancer.
    svc$set_subnets(
      LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:lo...",
      Subnets = list(
        "subnet-8360a9e7",
        "subnet-b7d581c0"
      )
    )

    ## End(Not run)
