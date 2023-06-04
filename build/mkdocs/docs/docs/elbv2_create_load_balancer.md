<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_create_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer

### Description

Creates an Application Load Balancer, Network Load Balancer, or Gateway
Load Balancer.

For more information, see the following:

-   [Application Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)

-   [Network Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)

-   [Gateway Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html)

This operation is idempotent, which means that it completes at most one
time. If you attempt to create multiple load balancers with the same
settings, each call succeeds.

### Usage

    elbv2_create_load_balancer(Name, Subnets, SubnetMappings,
      SecurityGroups, Scheme, Tags, Type, IpAddressType,
      CustomerOwnedIpv4Pool)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_create_load_balancer_:_Name">Name</code></td>
<td><p>[required] The name of the load balancer.</p>
<p>This name must be unique per region per account, can have a maximum
of 32 characters, must contain only alphanumeric characters or hyphens,
must not begin or end with a hyphen, and must not begin with
"internal-".</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_load_balancer_:_Subnets">Subnets</code></td>
<td><p>The IDs of the public subnets. You can specify only one subnet
per Availability Zone. You must specify either subnets or subnet
mappings, but not both. To specify an Elastic IP address, specify subnet
mappings instead of subnets.</p>
<p>[Application Load Balancers] You must specify subnets from at least
two Availability Zones.</p>
<p>[Application Load Balancers on Outposts] You must specify one Outpost
subnet.</p>
<p>[Application Load Balancers on Local Zones] You can specify subnets
from one or more Local Zones.</p>
<p>[Network Load Balancers] You can specify subnets from one or more
Availability Zones.</p>
<p>[Gateway Load Balancers] You can specify subnets from one or more
Availability Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_load_balancer_:_SubnetMappings">SubnetMappings</code></td>
<td><p>The IDs of the public subnets. You can specify only one subnet
per Availability Zone. You must specify either subnets or subnet
mappings, but not both.</p>
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
balancer, you can specify one IPv6 address per subnet.</p>
<p>[Gateway Load Balancers] You can specify subnets from one or more
Availability Zones. You cannot specify Elastic IP addresses for your
subnets.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_load_balancer_:_SecurityGroups">SecurityGroups</code></td>
<td><p>[Application Load Balancers] The IDs of the security groups for
the load balancer.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_create_load_balancer_:_Scheme">Scheme</code></td>
<td><p>The nodes of an Internet-facing load balancer have public IP
addresses. The DNS name of an Internet-facing load balancer is publicly
resolvable to the public IP addresses of the nodes. Therefore,
Internet-facing load balancers can route requests from clients over the
internet.</p>
<p>The nodes of an internal load balancer have only private IP
addresses. The DNS name of an internal load balancer is publicly
resolvable to the private IP addresses of the nodes. Therefore, internal
load balancers can route requests only from clients with access to the
VPC for the load balancer.</p>
<p>The default is an Internet-facing load balancer.</p>
<p>You cannot specify a scheme for a Gateway Load Balancer.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_load_balancer_:_Tags">Tags</code></td>
<td><p>The tags to assign to the load balancer.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_create_load_balancer_:_Type">Type</code></td>
<td><p>The type of load balancer. The default is
<code>application</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_load_balancer_:_IpAddressType">IpAddressType</code></td>
<td><p>The type of IP addresses used by the subnets for your load
balancer. The possible values are <code>ipv4</code> (for IPv4 addresses)
and <code>dualstack</code> (for IPv4 and IPv6 addresses).</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_load_balancer_:_CustomerOwnedIpv4Pool">CustomerOwnedIpv4Pool</code></td>
<td><p>[Application Load Balancers on Outposts] The ID of the
customer-owned address pool (CoIP pool).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoadBalancers = list(
        list(
          LoadBalancerArn = "string",
          DNSName = "string",
          CanonicalHostedZoneId = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LoadBalancerName = "string",
          Scheme = "internet-facing"|"internal",
          VpcId = "string",
          State = list(
            Code = "active"|"provisioning"|"active_impaired"|"failed",
            Reason = "string"
          ),
          Type = "application"|"network"|"gateway",
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
          SecurityGroups = list(
            "string"
          ),
          IpAddressType = "ipv4"|"dualstack",
          CustomerOwnedIpv4Pool = "string"
        )
      )
    )

### Request syntax

    svc$create_load_balancer(
      Name = "string",
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
      SecurityGroups = list(
        "string"
      ),
      Scheme = "internet-facing"|"internal",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Type = "application"|"network"|"gateway",
      IpAddressType = "ipv4"|"dualstack",
      CustomerOwnedIpv4Pool = "string"
    )

### Examples

    ## Not run: 
    # This example creates an Internet-facing load balancer and enables the
    # Availability Zones for the specified subnets.
    svc$create_load_balancer(
      Name = "my-load-balancer",
      Subnets = list(
        "subnet-b7d581c0",
        "subnet-8360a9e7"
      )
    )

    # This example creates an internal load balancer and enables the
    # Availability Zones for the specified subnets.
    svc$create_load_balancer(
      Name = "my-internal-load-balancer",
      Scheme = "internal",
      SecurityGroups = list(),
      Subnets = list(
        "subnet-b7d581c0",
        "subnet-8360a9e7"
      )
    )

    ## End(Not run)
