<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_traffic_mirror_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Traffic Mirror session

### Description

Creates a Traffic Mirror session.

A Traffic Mirror session actively copies packets from a Traffic Mirror
source to a Traffic Mirror target. Create a filter, and then assign it
to the session to define a subset of the traffic to mirror, for example
all TCP traffic.

The Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in a different VPC connected via
VPC peering or a transit gateway.

By default, no traffic is mirrored. Use `create_traffic_mirror_filter`
to create filter rules that specify the traffic to mirror.

### Usage

    ec2_create_traffic_mirror_session(NetworkInterfaceId,
      TrafficMirrorTargetId, TrafficMirrorFilterId, PacketLength,
      SessionNumber, VirtualNetworkId, Description, TagSpecifications, DryRun,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_session_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The ID of the source network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_session_:_TrafficMirrorTargetId">TrafficMirrorTargetId</code></td>
<td><p>[required] The ID of the Traffic Mirror target.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_session_:_TrafficMirrorFilterId">TrafficMirrorFilterId</code></td>
<td><p>[required] The ID of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_session_:_PacketLength">PacketLength</code></td>
<td><p>The number of bytes in each packet to mirror. These are bytes
after the VXLAN header. Do not specify this parameter when you want to
mirror the entire packet. To mirror a subset of the packet, set this to
the length (in bytes) that you want to mirror. For example, if you set
this value to 100, then the first 100 bytes that meet the filter
criteria are copied to the target.</p>
<p>If you do not want to mirror the entire packet, use the
<code>PacketLength</code> parameter to specify the number of bytes in
each packet to mirror.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_session_:_SessionNumber">SessionNumber</code></td>
<td><p>[required] The session number determines the order in which
sessions are evaluated when an interface is used by multiple sessions.
The first session with a matching filter is the one that mirrors the
packets.</p>
<p>Valid values are 1-32766.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_session_:_VirtualNetworkId">VirtualNetworkId</code></td>
<td><p>The VXLAN ID for the Traffic Mirror session. For more information
about the VXLAN protocol, see <a
href="https://datatracker.ietf.org/doc/html/rfc7348">RFC 7348</a>. If
you do not specify a <code>VirtualNetworkId</code>, an account-wide
unique id is chosen at random.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_session_:_Description">Description</code></td>
<td><p>The description of the Traffic Mirror session.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_session_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to a Traffic Mirror session.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_session_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_session_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorSession = list(
        TrafficMirrorSessionId = "string",
        TrafficMirrorTargetId = "string",
        TrafficMirrorFilterId = "string",
        NetworkInterfaceId = "string",
        OwnerId = "string",
        PacketLength = 123,
        SessionNumber = 123,
        VirtualNetworkId = 123,
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_traffic_mirror_session(
      NetworkInterfaceId = "string",
      TrafficMirrorTargetId = "string",
      TrafficMirrorFilterId = "string",
      PacketLength = 123,
      SessionNumber = 123,
      VirtualNetworkId = 123,
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
      ClientToken = "string"
    )
