<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_transit_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a transit gateway

### Description

Creates a transit gateway.

You can use a transit gateway to interconnect your virtual private
clouds (VPC) and on-premises networks. After the transit gateway enters
the `available` state, you can attach your VPCs and VPN connections to
the transit gateway.

To attach your VPCs, use `create_transit_gateway_vpc_attachment`.

To attach a VPN connection, use `create_customer_gateway` to create a
customer gateway and specify the ID of the customer gateway and the ID
of the transit gateway in a call to `create_vpn_connection`.

When you create a transit gateway, we create a default transit gateway
route table and use it as the default association route table and the
default propagation route table. You can use
`create_transit_gateway_route_table` to create additional transit
gateway route tables. If you disable automatic route propagation, we do
not create a default transit gateway route table. You can use
`enable_transit_gateway_route_table_propagation` to propagate routes
from a resource attachment to a transit gateway route table. If you
disable automatic associations, you can use
`associate_transit_gateway_route_table` to associate a resource
attachment with a transit gateway route table.

### Usage

    ec2_create_transit_gateway(Description, Options, TagSpecifications,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_:_Description">Description</code></td>
<td><p>A description of the transit gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_transit_gateway_:_Options">Options</code></td>
<td><p>The transit gateway options.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the transit gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_transit_gateway_:_DryRun">DryRun</code></td>
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
      TransitGateway = list(
        TransitGatewayId = "string",
        TransitGatewayArn = "string",
        State = "pending"|"available"|"modifying"|"deleting"|"deleted",
        OwnerId = "string",
        Description = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Options = list(
          AmazonSideAsn = 123,
          TransitGatewayCidrBlocks = list(
            "string"
          ),
          AutoAcceptSharedAttachments = "enable"|"disable",
          DefaultRouteTableAssociation = "enable"|"disable",
          AssociationDefaultRouteTableId = "string",
          DefaultRouteTablePropagation = "enable"|"disable",
          PropagationDefaultRouteTableId = "string",
          VpnEcmpSupport = "enable"|"disable",
          DnsSupport = "enable"|"disable",
          MulticastSupport = "enable"|"disable"
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

    svc$create_transit_gateway(
      Description = "string",
      Options = list(
        AmazonSideAsn = 123,
        AutoAcceptSharedAttachments = "enable"|"disable",
        DefaultRouteTableAssociation = "enable"|"disable",
        DefaultRouteTablePropagation = "enable"|"disable",
        VpnEcmpSupport = "enable"|"disable",
        DnsSupport = "enable"|"disable",
        MulticastSupport = "enable"|"disable",
        TransitGatewayCidrBlocks = list(
          "string"
        )
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
