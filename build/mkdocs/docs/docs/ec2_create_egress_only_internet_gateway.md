<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_egress_only_internet_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[IPv6 only\] Creates an egress-only internet gateway for your VPC

### Description

\[IPv6 only\] Creates an egress-only internet gateway for your VPC. An
egress-only internet gateway is used to enable outbound communication
over IPv6 from instances in your VPC to the internet, and prevents hosts
outside of your VPC from initiating an IPv6 connection with your
instance.

### Usage

    ec2_create_egress_only_internet_gateway(ClientToken, DryRun, VpcId,
      TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_egress_only_internet_gateway_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_egress_only_internet_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_egress_only_internet_gateway_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC for which to create the egress-only
internet gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_egress_only_internet_gateway_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the egress-only internet gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
      EgressOnlyInternetGateway = list(
        Attachments = list(
          list(
            State = "attaching"|"attached"|"detaching"|"detached",
            VpcId = "string"
          )
        ),
        EgressOnlyInternetGatewayId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_egress_only_internet_gateway(
      ClientToken = "string",
      DryRun = TRUE|FALSE,
      VpcId = "string",
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
