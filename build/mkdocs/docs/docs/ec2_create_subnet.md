<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_subnet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a subnet in the specified VPC

### Description

Creates a subnet in the specified VPC. For an IPv4 only subnet, specify
an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an
IPv6 only subnet or a dual stack subnet instead. For an IPv6 only
subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify
both an IPv4 CIDR block and an IPv6 CIDR block.

A subnet CIDR block must not overlap the CIDR block of an existing
subnet in the VPC. After you create a subnet, you can't change its CIDR
block.

The allowed size for an IPv4 subnet is between a /28 netmask (16 IP
addresses) and a /16 netmask (65,536 IP addresses). Amazon Web Services
reserves both the first four and the last IPv4 address in each subnet's
CIDR block. They're not available for your use.

If you've associated an IPv6 CIDR block with your VPC, you can associate
an IPv6 CIDR block with a subnet when you create it. The allowed block
size for an IPv6 subnet is a /64 netmask.

If you add more than one subnet to a VPC, they're set up in a star
topology with a logical router in the middle.

When you stop an instance in a subnet, it retains its private IPv4
address. It's therefore possible to have a subnet with no running
instances (they're all stopped), but no remaining IP addresses
available.

For more information, see
[Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_subnet(TagSpecifications, AvailabilityZone,
      AvailabilityZoneId, CidrBlock, Ipv6CidrBlock, OutpostArn, VpcId, DryRun,
      Ipv6Native)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_subnet_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_subnet_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone or Local Zone for the subnet.</p>
<p>Default: Amazon Web Services selects one for you. If you create more
than one subnet in your VPC, we do not necessarily select a different
zone for each subnet.</p>
<p>To create a subnet in a Local Zone, set this value to the Local Zone
ID, for example <code style="white-space: pre;">⁠us-west-2-lax-1a⁠</code>.
For information about the Regions that support Local Zones, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions">Available
Regions</a> in the <em>Amazon Elastic Compute Cloud User Guide</em>.</p>
<p>To create a subnet in an Outpost, set this value to the Availability
Zone for the Outpost and specify the Outpost ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_subnet_:_AvailabilityZoneId">AvailabilityZoneId</code></td>
<td><p>The AZ ID or the Local Zone ID of the subnet.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_subnet_:_CidrBlock">CidrBlock</code></td>
<td><p>The IPv4 network range for the subnet, in CIDR notation. For
example, <code style="white-space: pre;">⁠10.0.0.0/24⁠</code>. We modify
the specified CIDR block to its canonical form; for example, if you
specify <code style="white-space: pre;">⁠100.68.0.18/18⁠</code>, we modify
it to <code style="white-space: pre;">⁠100.68.0.0/18⁠</code>.</p>
<p>This parameter is not supported for an IPv6 only subnet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_subnet_:_Ipv6CidrBlock">Ipv6CidrBlock</code></td>
<td><p>The IPv6 network range for the subnet, in CIDR notation. The
subnet size must use a /64 prefix length.</p>
<p>This parameter is required for an IPv6 only subnet.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_subnet_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Outpost. If you specify an
Outpost ARN, you must also specify the Availability Zone of the Outpost
subnet.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_subnet_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_subnet_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_subnet_:_Ipv6Native">Ipv6Native</code></td>
<td><p>Indicates whether to create an IPv6 only subnet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subnet = list(
        AvailabilityZone = "string",
        AvailabilityZoneId = "string",
        AvailableIpAddressCount = 123,
        CidrBlock = "string",
        DefaultForAz = TRUE|FALSE,
        EnableLniAtDeviceIndex = 123,
        MapPublicIpOnLaunch = TRUE|FALSE,
        MapCustomerOwnedIpOnLaunch = TRUE|FALSE,
        CustomerOwnedIpv4Pool = "string",
        State = "pending"|"available",
        SubnetId = "string",
        VpcId = "string",
        OwnerId = "string",
        AssignIpv6AddressOnCreation = TRUE|FALSE,
        Ipv6CidrBlockAssociationSet = list(
          list(
            AssociationId = "string",
            Ipv6CidrBlock = "string",
            Ipv6CidrBlockState = list(
              State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
              StatusMessage = "string"
            )
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        SubnetArn = "string",
        OutpostArn = "string",
        EnableDns64 = TRUE|FALSE,
        Ipv6Native = TRUE|FALSE,
        PrivateDnsNameOptionsOnLaunch = list(
          HostnameType = "ip-name"|"resource-name",
          EnableResourceNameDnsARecord = TRUE|FALSE,
          EnableResourceNameDnsAAAARecord = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$create_subnet(
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      AvailabilityZone = "string",
      AvailabilityZoneId = "string",
      CidrBlock = "string",
      Ipv6CidrBlock = "string",
      OutpostArn = "string",
      VpcId = "string",
      DryRun = TRUE|FALSE,
      Ipv6Native = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a subnet in the specified VPC with the specified
    # CIDR block. We recommend that you let us select an Availability Zone for
    # you.
    svc$create_subnet(
      CidrBlock = "10.0.1.0/24",
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
