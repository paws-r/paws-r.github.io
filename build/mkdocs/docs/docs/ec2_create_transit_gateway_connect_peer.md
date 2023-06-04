<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_transit_gateway_connect_peer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Connect peer for a specified transit gateway Connect attachment between a transit gateway and an appliance

### Description

Creates a Connect peer for a specified transit gateway Connect
attachment between a transit gateway and an appliance.

The peer address and transit gateway address must be the same IP address
family (IPv4 or IPv6).

For more information, see [Connect
peers](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer)
in the *Transit Gateways Guide*.

### Usage

    ec2_create_transit_gateway_connect_peer(TransitGatewayAttachmentId,
      TransitGatewayAddress, PeerAddress, BgpOptions, InsideCidrBlocks,
      TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_TransitGatewayAttachmentId">TransitGatewayAttachmentId</code></td>
<td><p>[required] The ID of the Connect attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_TransitGatewayAddress">TransitGatewayAddress</code></td>
<td><p>The peer IP address (GRE outer IP address) on the transit gateway
side of the Connect peer, which must be specified from a transit gateway
CIDR block. If not specified, Amazon automatically assigns the first
available IP address from the transit gateway CIDR block.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_PeerAddress">PeerAddress</code></td>
<td><p>[required] The peer IP address (GRE outer IP address) on the
appliance side of the Connect peer.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_BgpOptions">BgpOptions</code></td>
<td><p>The BGP options for the Connect peer.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_InsideCidrBlocks">InsideCidrBlocks</code></td>
<td><p>[required] The range of inside IP addresses that are used for BGP
peering. You must specify a size /29 IPv4 CIDR block from the <code
style="white-space: pre;">⁠169.254.0.0/16⁠</code> range. The first address
from the range must be configured on the appliance as the BGP IP
address. You can also optionally specify a size /125 IPv6 CIDR block
from the <code style="white-space: pre;">⁠fd00::/8⁠</code> range.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the Connect peer.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_connect_peer_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayConnectPeer = list(
        TransitGatewayAttachmentId = "string",
        TransitGatewayConnectPeerId = "string",
        State = "pending"|"available"|"deleting"|"deleted",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        ConnectPeerConfiguration = list(
          TransitGatewayAddress = "string",
          PeerAddress = "string",
          InsideCidrBlocks = list(
            "string"
          ),
          Protocol = "gre",
          BgpConfigurations = list(
            list(
              TransitGatewayAsn = 123,
              PeerAsn = 123,
              TransitGatewayAddress = "string",
              PeerAddress = "string",
              BgpStatus = "up"|"down"
            )
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_transit_gateway_connect_peer(
      TransitGatewayAttachmentId = "string",
      TransitGatewayAddress = "string",
      PeerAddress = "string",
      BgpOptions = list(
        PeerAsn = 123
      ),
      InsideCidrBlocks = list(
        "string"
      ),
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
      DryRun = TRUE|FALSE
    )
