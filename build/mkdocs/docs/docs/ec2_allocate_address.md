<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_allocate_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allocates an Elastic IP address to your Amazon Web Services account

### Description

Allocates an Elastic IP address to your Amazon Web Services account.
After you allocate the Elastic IP address you can associate it with an
instance or network interface. After you release an Elastic IP address,
it is released to the IP address pool and can be allocated to a
different Amazon Web Services account.

You can allocate an Elastic IP address from an address pool owned by
Amazon Web Services or from an address pool created from a public IPv4
address range that you have brought to Amazon Web Services for use with
your Amazon Web Services resources using bring your own IP addresses
(BYOIP). For more information, see [Bring Your Own IP Addresses
(BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

\[EC2-VPC\] If you release an Elastic IP address, you might be able to
recover it. You cannot recover an Elastic IP address that you released
after it is allocated to another Amazon Web Services account. You cannot
recover an Elastic IP address for EC2-Classic. To attempt to recover an
Elastic IP address that you released, specify it in this operation.

An Elastic IP address is for use either in the EC2-Classic platform or
in a VPC. By default, you can allocate 5 Elastic IP addresses for
EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per
Region.

For more information, see [Elastic IP
Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the *Amazon Elastic Compute Cloud User Guide*.

You can allocate a carrier IP address which is a public IP address from
a telecommunication carrier, to a network interface which resides in a
subnet in a Wavelength Zone (for example an EC2 instance).

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_allocate_address(Domain, Address, PublicIpv4Pool,
      NetworkBorderGroup, CustomerOwnedIpv4Pool, DryRun, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_allocate_address_:_Domain">Domain</code></td>
<td><p>Indicates whether the Elastic IP address is for use with
instances in a VPC or instances in EC2-Classic.</p>
<p>Default: If the Region supports EC2-Classic, the default is
<code>standard</code>. Otherwise, the default is
<code>vpc</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_allocate_address_:_Address">Address</code></td>
<td><p>[EC2-VPC] The Elastic IP address to recover or an IPv4 address
from an address pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_address_:_PublicIpv4Pool">PublicIpv4Pool</code></td>
<td><p>The ID of an address pool that you own. Use this parameter to let
Amazon EC2 select an address from the address pool. To specify a
specific address from the address pool, use the <code>Address</code>
parameter instead.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_address_:_NetworkBorderGroup">NetworkBorderGroup</code></td>
<td><p>A unique set of Availability Zones, Local Zones, or Wavelength
Zones from which Amazon Web Services advertises IP addresses. Use this
parameter to limit the IP address to this location. IP addresses cannot
move between network border groups.</p>
<p>Use <code>describe_availability_zones</code> to view the network
border groups.</p>
<p>You cannot use a network border group with EC2 Classic. If you
attempt this operation on EC2 Classic, you receive an
<code>InvalidParameterCombination</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_address_:_CustomerOwnedIpv4Pool">CustomerOwnedIpv4Pool</code></td>
<td><p>The ID of a customer-owned address pool. Use this parameter to
let Amazon EC2 select an address from the address pool. Alternatively,
specify a specific address from the address pool.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_allocate_address_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_address_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the Elastic IP address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicIp = "string",
      AllocationId = "string",
      PublicIpv4Pool = "string",
      NetworkBorderGroup = "string",
      Domain = "vpc"|"standard",
      CustomerOwnedIp = "string",
      CustomerOwnedIpv4Pool = "string",
      CarrierIp = "string"
    )

### Request syntax

    svc$allocate_address(
      Domain = "vpc"|"standard",
      Address = "string",
      PublicIpv4Pool = "string",
      NetworkBorderGroup = "string",
      CustomerOwnedIpv4Pool = "string",
      DryRun = TRUE|FALSE,
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
    # This example allocates an Elastic IP address to use with an instance in
    # a VPC.
    svc$allocate_address(
      Domain = "vpc"
    )

    # This example allocates an Elastic IP address to use with an instance in
    # EC2-Classic.
    svc$allocate_address()

    ## End(Not run)
