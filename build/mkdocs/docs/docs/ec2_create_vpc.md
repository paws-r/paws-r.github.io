<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPC with the specified CIDR blocks

### Description

Creates a VPC with the specified CIDR blocks. For more information, see
[VPC CIDR
blocks](https://docs.aws.amazon.com/vpc/latest/userguide/configure-your-vpc.html#vpc-cidr-blocks)
in the *Amazon Virtual Private Cloud User Guide*.

You can optionally request an IPv6 CIDR block for the VPC. You can
request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6
addresses, or an IPv6 CIDR block from an IPv6 address pool that you
provisioned through bring your own IP addresses
([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).

By default, each instance that you launch in the VPC has the default
DHCP options, which include only a default DNS server that we provide
(AmazonProvidedDNS). For more information, see [DHCP option
sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the *Amazon Virtual Private Cloud User Guide*.

You can specify the instance tenancy value for the VPC when you create
it. You can't change this value for the VPC after you create it. For
more information, see [Dedicated
Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_vpc(CidrBlock, AmazonProvidedIpv6CidrBlock, Ipv6Pool,
      Ipv6CidrBlock, Ipv4IpamPoolId, Ipv4NetmaskLength, Ipv6IpamPoolId,
      Ipv6NetmaskLength, DryRun, InstanceTenancy,
      Ipv6CidrBlockNetworkBorderGroup, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_vpc_:_CidrBlock">CidrBlock</code></td>
<td><p>The IPv4 network range for the VPC, in CIDR notation. For
example, <code style="white-space: pre;">⁠10.0.0.0/16⁠</code>. We modify
the specified CIDR block to its canonical form; for example, if you
specify <code style="white-space: pre;">⁠100.68.0.18/18⁠</code>, we modify
it to <code style="white-space: pre;">⁠100.68.0.0/18⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_:_AmazonProvidedIpv6CidrBlock">AmazonProvidedIpv6CidrBlock</code></td>
<td><p>Requests an Amazon-provided IPv6 CIDR block with a /56 prefix
length for the VPC. You cannot specify the range of IP addresses, or the
size of the CIDR block.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_vpc_:_Ipv6Pool">Ipv6Pool</code></td>
<td><p>The ID of an IPv6 address pool from which to allocate the IPv6
CIDR block.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_vpc_:_Ipv6CidrBlock">Ipv6CidrBlock</code></td>
<td><p>The IPv6 CIDR block from the IPv6 address pool. You must also
specify <code>Ipv6Pool</code> in the request.</p>
<p>To let Amazon choose the IPv6 CIDR block for you, omit this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_:_Ipv4IpamPoolId">Ipv4IpamPoolId</code></td>
<td><p>The ID of an IPv4 IPAM pool you want to use for allocating this
VPC's CIDR. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_:_Ipv4NetmaskLength">Ipv4NetmaskLength</code></td>
<td><p>The netmask length of the IPv4 CIDR you want to allocate to this
VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more
information about IPAM, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_:_Ipv6IpamPoolId">Ipv6IpamPoolId</code></td>
<td><p>The ID of an IPv6 IPAM pool which will be used to allocate this
VPC an IPv6 CIDR. IPAM is a VPC feature that you can use to automate
your IP address management workflows including assigning, tracking,
troubleshooting, and auditing IP addresses across Amazon Web Services
Regions and accounts throughout your Amazon Web Services Organization.
For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_:_Ipv6NetmaskLength">Ipv6NetmaskLength</code></td>
<td><p>The netmask length of the IPv6 CIDR you want to allocate to this
VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more
information about IPAM, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/">What is IPAM?</a> in
the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_vpc_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_:_InstanceTenancy">InstanceTenancy</code></td>
<td><p>The tenancy options for instances launched into the VPC. For
<code>default</code>, instances are launched with shared tenancy by
default. You can launch instances with any tenancy into a shared tenancy
VPC. For <code>dedicated</code>, instances are launched as dedicated
tenancy instances by default. You can only launch instances with a
tenancy of <code>dedicated</code> or <code>host</code> into a dedicated
tenancy VPC.</p>
<p><strong>Important:</strong> The <code>host</code> value cannot be
used with this parameter. Use the <code>default</code> or
<code>dedicated</code> values only.</p>
<p>Default: <code>default</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_:_Ipv6CidrBlockNetworkBorderGroup">Ipv6CidrBlockNetworkBorderGroup</code></td>
<td><p>The name of the location from which we advertise the IPV6 CIDR
block. Use this parameter to limit the address to this location.</p>
<p>You must set <code>AmazonProvidedIpv6CidrBlock</code> to
<code>true</code> to use this parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Vpc = list(
        CidrBlock = "string",
        DhcpOptionsId = "string",
        State = "pending"|"available",
        VpcId = "string",
        OwnerId = "string",
        InstanceTenancy = "default"|"dedicated"|"host",
        Ipv6CidrBlockAssociationSet = list(
          list(
            AssociationId = "string",
            Ipv6CidrBlock = "string",
            Ipv6CidrBlockState = list(
              State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
              StatusMessage = "string"
            ),
            NetworkBorderGroup = "string",
            Ipv6Pool = "string"
          )
        ),
        CidrBlockAssociationSet = list(
          list(
            AssociationId = "string",
            CidrBlock = "string",
            CidrBlockState = list(
              State = "associating"|"associated"|"disassociating"|"disassociated"|"failing"|"failed",
              StatusMessage = "string"
            )
          )
        ),
        IsDefault = TRUE|FALSE,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_vpc(
      CidrBlock = "string",
      AmazonProvidedIpv6CidrBlock = TRUE|FALSE,
      Ipv6Pool = "string",
      Ipv6CidrBlock = "string",
      Ipv4IpamPoolId = "string",
      Ipv4NetmaskLength = 123,
      Ipv6IpamPoolId = "string",
      Ipv6NetmaskLength = 123,
      DryRun = TRUE|FALSE,
      InstanceTenancy = "default"|"dedicated"|"host",
      Ipv6CidrBlockNetworkBorderGroup = "string",
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
      )
    )

### Examples

    ## Not run: 
    # This example creates a VPC with the specified CIDR block.
    svc$create_vpc(
      CidrBlock = "10.0.0.0/16"
    )

    ## End(Not run)
