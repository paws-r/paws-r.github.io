<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_traffic_mirror_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a target for your Traffic Mirror session

### Description

Creates a target for your Traffic Mirror session.

A Traffic Mirror target is the destination for mirrored traffic. The
Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in different VPCs connected via
VPC peering or a transit gateway.

A Traffic Mirror target can be a network interface, a Network Load
Balancer, or a Gateway Load Balancer endpoint.

To use the target in a Traffic Mirror session, use
`create_traffic_mirror_session`.

### Usage

    ec2_create_traffic_mirror_target(NetworkInterfaceId,
      NetworkLoadBalancerArn, Description, TagSpecifications, DryRun,
      ClientToken, GatewayLoadBalancerEndpointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_target_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>The network interface ID that is associated with the
target.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_target_:_NetworkLoadBalancerArn">NetworkLoadBalancerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Network Load Balancer that
is associated with the target.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_target_:_Description">Description</code></td>
<td><p>The description of the Traffic Mirror target.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_target_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the Traffic Mirror target.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_target_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_target_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_target_:_GatewayLoadBalancerEndpointId">GatewayLoadBalancerEndpointId</code></td>
<td><p>The ID of the Gateway Load Balancer endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorTarget = list(
        TrafficMirrorTargetId = "string",
        NetworkInterfaceId = "string",
        NetworkLoadBalancerArn = "string",
        Type = "network-interface"|"network-load-balancer"|"gateway-load-balancer-endpoint",
        Description = "string",
        OwnerId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        GatewayLoadBalancerEndpointId = "string"
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_traffic_mirror_target(
      NetworkInterfaceId = "string",
      NetworkLoadBalancerArn = "string",
      Description = "string",
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
      DryRun = TRUE|FALSE,
      ClientToken = "string",
      GatewayLoadBalancerEndpointId = "string"
    )
