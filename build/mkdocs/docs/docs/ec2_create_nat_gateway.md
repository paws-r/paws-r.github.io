<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_nat_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a NAT gateway in the specified subnet

### Description

Creates a NAT gateway in the specified subnet. This action creates a
network interface in the specified subnet with a private IP address from
the IP address range of the subnet. You can create either a public NAT
gateway or a private NAT gateway.

With a public NAT gateway, internet-bound traffic from a private subnet
can be routed to the NAT gateway, so that instances in a private subnet
can connect to the internet.

With a private NAT gateway, private communication is routed across VPCs
and on-premises networks through a transit gateway or virtual private
gateway. Common use cases include running large workloads behind a small
pool of allowlisted IPv4 addresses, preserving private IPv4 addresses,
and communicating between overlapping networks.

For more information, see [NAT
gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_create_nat_gateway(AllocationId, ClientToken, DryRun, SubnetId,
      TagSpecifications, ConnectivityType, PrivateIpAddress,
      SecondaryAllocationIds, SecondaryPrivateIpAddresses,
      SecondaryPrivateIpAddressCount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_nat_gateway_:_AllocationId">AllocationId</code></td>
<td><p>[Public NAT gateways only] The allocation ID of an Elastic IP
address to associate with the NAT gateway. You cannot specify an Elastic
IP address with a private NAT gateway. If the Elastic IP address is
associated with another resource, you must first disassociate
it.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_nat_gateway_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p>
<p>Constraint: Maximum 64 ASCII characters.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_nat_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_nat_gateway_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet in which to create the NAT
gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_nat_gateway_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the NAT gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_nat_gateway_:_ConnectivityType">ConnectivityType</code></td>
<td><p>Indicates whether the NAT gateway supports public or private
connectivity. The default is public connectivity.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_nat_gateway_:_PrivateIpAddress">PrivateIpAddress</code></td>
<td><p>The private IPv4 address to assign to the NAT gateway. If you
don't provide an address, a private IPv4 address will be automatically
assigned.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_nat_gateway_:_SecondaryAllocationIds">SecondaryAllocationIds</code></td>
<td><p>Secondary EIP allocation IDs. For more information about
secondary addresses, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating">Create
a NAT gateway</a> in the <em>Amazon Virtual Private Cloud User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_nat_gateway_:_SecondaryPrivateIpAddresses">SecondaryPrivateIpAddresses</code></td>
<td><p>Secondary private IPv4 addresses. For more information about
secondary addresses, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating">Create
a NAT gateway</a> in the <em>Amazon Virtual Private Cloud User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_nat_gateway_:_SecondaryPrivateIpAddressCount">SecondaryPrivateIpAddressCount</code></td>
<td><p>[Private NAT gateway only] The number of secondary private IPv4
addresses you want to assign to the NAT gateway. For more information
about secondary addresses, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating">Create
a NAT gateway</a> in the <em>Amazon Virtual Private Cloud User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
      NatGateway = list(
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        DeleteTime = as.POSIXct(
          "2015-01-01"
        ),
        FailureCode = "string",
        FailureMessage = "string",
        NatGatewayAddresses = list(
          list(
            AllocationId = "string",
            NetworkInterfaceId = "string",
            PrivateIp = "string",
            PublicIp = "string",
            AssociationId = "string",
            IsPrimary = TRUE|FALSE,
            FailureMessage = "string",
            Status = "assigning"|"unassigning"|"associating"|"disassociating"|"succeeded"|"failed"
          )
        ),
        NatGatewayId = "string",
        ProvisionedBandwidth = list(
          ProvisionTime = as.POSIXct(
            "2015-01-01"
          ),
          Provisioned = "string",
          RequestTime = as.POSIXct(
            "2015-01-01"
          ),
          Requested = "string",
          Status = "string"
        ),
        State = "pending"|"failed"|"available"|"deleting"|"deleted",
        SubnetId = "string",
        VpcId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ConnectivityType = "private"|"public"
      )
    )

### Request syntax

    svc$create_nat_gateway(
      AllocationId = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE,
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
      ConnectivityType = "private"|"public",
      PrivateIpAddress = "string",
      SecondaryAllocationIds = list(
        "string"
      ),
      SecondaryPrivateIpAddresses = list(
        "string"
      ),
      SecondaryPrivateIpAddressCount = 123
    )

### Examples

    ## Not run: 
    # This example creates a NAT gateway in subnet subnet-1a2b3c4d and
    # associates an Elastic IP address with the allocation ID
    # eipalloc-37fc1a52 with the NAT gateway.
    svc$create_nat_gateway(
      AllocationId = "eipalloc-37fc1a52",
      SubnetId = "subnet-1a2b3c4d"
    )

    ## End(Not run)
