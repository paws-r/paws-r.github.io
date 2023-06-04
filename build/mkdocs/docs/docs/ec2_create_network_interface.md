<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_network_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a network interface in the specified subnet

### Description

Creates a network interface in the specified subnet.

The number of IP addresses you can assign to a network interface varies
by instance type. For more information, see [IP Addresses Per ENI Per
Instance
Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
in the *Amazon Virtual Private Cloud User Guide*.

For more information about network interfaces, see [Elastic network
interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_network_interface(Description, DryRun, Groups,
      Ipv6AddressCount, Ipv6Addresses, PrivateIpAddress, PrivateIpAddresses,
      SecondaryPrivateIpAddressCount, Ipv4Prefixes, Ipv4PrefixCount,
      Ipv6Prefixes, Ipv6PrefixCount, InterfaceType, SubnetId,
      TagSpecifications, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_Description">Description</code></td>
<td><p>A description for the network interface.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_network_interface_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_network_interface_:_Groups">Groups</code></td>
<td><p>The IDs of one or more security groups.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_Ipv6AddressCount">Ipv6AddressCount</code></td>
<td><p>The number of IPv6 addresses to assign to a network interface.
Amazon EC2 automatically selects the IPv6 addresses from the subnet
range.</p>
<p>You can't specify a count of IPv6 addresses using this parameter if
you've specified one of the following: specific IPv6 addresses, specific
IPv6 prefixes, or a count of IPv6 prefixes.</p>
<p>If your subnet has the <code>AssignIpv6AddressOnCreation</code>
attribute set, you can override that setting by specifying 0 as the IPv6
address count.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_Ipv6Addresses">Ipv6Addresses</code></td>
<td><p>The IPv6 addresses from the IPv6 CIDR block range of your
subnet.</p>
<p>You can't specify IPv6 addresses using this parameter if you've
specified one of the following: a count of IPv6 addresses, specific IPv6
prefixes, or a count of IPv6 prefixes.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_PrivateIpAddress">PrivateIpAddress</code></td>
<td><p>The primary private IPv4 address of the network interface. If you
don't specify an IPv4 address, Amazon EC2 selects one for you from the
subnet's IPv4 CIDR range. If you specify an IP address, you cannot
indicate any IP addresses specified in <code>privateIpAddresses</code>
as primary (only one IP address can be designated as primary).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_PrivateIpAddresses">PrivateIpAddresses</code></td>
<td><p>The private IPv4 addresses.</p>
<p>You can't specify private IPv4 addresses if you've specified one of
the following: a count of private IPv4 addresses, specific IPv4
prefixes, or a count of IPv4 prefixes.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_SecondaryPrivateIpAddressCount">SecondaryPrivateIpAddressCount</code></td>
<td><p>The number of secondary private IPv4 addresses to assign to a
network interface. When you specify a number of secondary IPv4
addresses, Amazon EC2 selects these IP addresses within the subnet's
IPv4 CIDR range. You can't specify this option and specify more than one
private IP address using <code>privateIpAddresses</code>.</p>
<p>You can't specify a count of private IPv4 addresses if you've
specified one of the following: specific private IPv4 addresses,
specific IPv4 prefixes, or a count of IPv4 prefixes.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_Ipv4Prefixes">Ipv4Prefixes</code></td>
<td><p>The IPv4 prefixes assigned to the network interface.</p>
<p>You can't specify IPv4 prefixes if you've specified one of the
following: a count of IPv4 prefixes, specific private IPv4 addresses, or
a count of private IPv4 addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_Ipv4PrefixCount">Ipv4PrefixCount</code></td>
<td><p>The number of IPv4 prefixes that Amazon Web Services
automatically assigns to the network interface.</p>
<p>You can't specify a count of IPv4 prefixes if you've specified one of
the following: specific IPv4 prefixes, specific private IPv4 addresses,
or a count of private IPv4 addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_Ipv6Prefixes">Ipv6Prefixes</code></td>
<td><p>The IPv6 prefixes assigned to the network interface.</p>
<p>You can't specify IPv6 prefixes if you've specified one of the
following: a count of IPv6 prefixes, specific IPv6 addresses, or a count
of IPv6 addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_Ipv6PrefixCount">Ipv6PrefixCount</code></td>
<td><p>The number of IPv6 prefixes that Amazon Web Services
automatically assigns to the network interface.</p>
<p>You can't specify a count of IPv6 prefixes if you've specified one of
the following: specific IPv6 prefixes, specific IPv6 addresses, or a
count of IPv6 addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_InterfaceType">InterfaceType</code></td>
<td><p>The type of network interface. The default is
<code>interface</code>.</p>
<p>The only supported values are <code>efa</code> and
<code>trunk</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet to associate with the network
interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_interface_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the new network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_interface_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInterface = list(
        Association = list(
          AllocationId = "string",
          AssociationId = "string",
          IpOwnerId = "string",
          PublicDnsName = "string",
          PublicIp = "string",
          CustomerOwnedIp = "string",
          CarrierIp = "string"
        ),
        Attachment = list(
          AttachTime = as.POSIXct(
            "2015-01-01"
          ),
          AttachmentId = "string",
          DeleteOnTermination = TRUE|FALSE,
          DeviceIndex = 123,
          NetworkCardIndex = 123,
          InstanceId = "string",
          InstanceOwnerId = "string",
          Status = "attaching"|"attached"|"detaching"|"detached",
          EnaSrdSpecification = list(
            EnaSrdEnabled = TRUE|FALSE,
            EnaSrdUdpSpecification = list(
              EnaSrdUdpEnabled = TRUE|FALSE
            )
          )
        ),
        AvailabilityZone = "string",
        Description = "string",
        Groups = list(
          list(
            GroupName = "string",
            GroupId = "string"
          )
        ),
        InterfaceType = "interface"|"natGateway"|"efa"|"trunk"|"load_balancer"|"network_load_balancer"|"vpc_endpoint"|"branch"|"transit_gateway"|"lambda"|"quicksight"|"global_accelerator_managed"|"api_gateway_managed"|"gateway_load_balancer"|"gateway_load_balancer_endpoint"|"iot_rules_managed"|"aws_codestar_connections_managed",
        Ipv6Addresses = list(
          list(
            Ipv6Address = "string"
          )
        ),
        MacAddress = "string",
        NetworkInterfaceId = "string",
        OutpostArn = "string",
        OwnerId = "string",
        PrivateDnsName = "string",
        PrivateIpAddress = "string",
        PrivateIpAddresses = list(
          list(
            Association = list(
              AllocationId = "string",
              AssociationId = "string",
              IpOwnerId = "string",
              PublicDnsName = "string",
              PublicIp = "string",
              CustomerOwnedIp = "string",
              CarrierIp = "string"
            ),
            Primary = TRUE|FALSE,
            PrivateDnsName = "string",
            PrivateIpAddress = "string"
          )
        ),
        Ipv4Prefixes = list(
          list(
            Ipv4Prefix = "string"
          )
        ),
        Ipv6Prefixes = list(
          list(
            Ipv6Prefix = "string"
          )
        ),
        RequesterId = "string",
        RequesterManaged = TRUE|FALSE,
        SourceDestCheck = TRUE|FALSE,
        Status = "available"|"associated"|"attaching"|"in-use"|"detaching",
        SubnetId = "string",
        TagSet = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        VpcId = "string",
        DenyAllIgwTraffic = TRUE|FALSE,
        Ipv6Native = TRUE|FALSE,
        Ipv6Address = "string"
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_network_interface(
      Description = "string",
      DryRun = TRUE|FALSE,
      Groups = list(
        "string"
      ),
      Ipv6AddressCount = 123,
      Ipv6Addresses = list(
        list(
          Ipv6Address = "string"
        )
      ),
      PrivateIpAddress = "string",
      PrivateIpAddresses = list(
        list(
          Primary = TRUE|FALSE,
          PrivateIpAddress = "string"
        )
      ),
      SecondaryPrivateIpAddressCount = 123,
      Ipv4Prefixes = list(
        list(
          Ipv4Prefix = "string"
        )
      ),
      Ipv4PrefixCount = 123,
      Ipv6Prefixes = list(
        list(
          Ipv6Prefix = "string"
        )
      ),
      Ipv6PrefixCount = 123,
      InterfaceType = "efa"|"branch"|"trunk",
      SubnetId = "string",
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
      ClientToken = "string"
    )

### Examples

    ## Not run: 
    # This example creates a network interface for the specified subnet.
    svc$create_network_interface(
      Description = "my network interface",
      Groups = list(
        "sg-903004f8"
      ),
      PrivateIpAddress = "10.0.2.17",
      SubnetId = "subnet-9d4a7b6c"
    )

    ## End(Not run)
