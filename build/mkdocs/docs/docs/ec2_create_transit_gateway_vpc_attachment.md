<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_transit_gateway_vpc_attachment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified VPC to the specified transit gateway

### Description

Attaches the specified VPC to the specified transit gateway.

If you attach a VPC with a CIDR range that overlaps the CIDR range of a
VPC that is already attached, the new VPC CIDR range is not propagated
to the default propagation route table.

To send VPC traffic to an attached transit gateway, add a route to the
VPC route table using `create_route`.

### Usage

    ec2_create_transit_gateway_vpc_attachment(TransitGatewayId, VpcId,
      SubnetIds, Options, TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>[required] The ID of the transit gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The IDs of one or more subnets. You can specify only
one subnet per Availability Zone. You must specify at least one subnet,
but we recommend that you specify two subnets for better availability.
The transit gateway uses one IP address from each specified
subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_Options">Options</code></td>
<td><p>The VPC attachment options.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the VPC attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_transit_gateway_vpc_attachment_:_DryRun">DryRun</code></td>
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
      TransitGatewayVpcAttachment = list(
        TransitGatewayAttachmentId = "string",
        TransitGatewayId = "string",
        VpcId = "string",
        VpcOwnerId = "string",
        State = "initiating"|"initiatingRequest"|"pendingAcceptance"|"rollingBack"|"pending"|"available"|"modifying"|"deleting"|"deleted"|"failed"|"rejected"|"rejecting"|"failing",
        SubnetIds = list(
          "string"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Options = list(
          DnsSupport = "enable"|"disable",
          Ipv6Support = "enable"|"disable",
          ApplianceModeSupport = "enable"|"disable"
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

    svc$create_transit_gateway_vpc_attachment(
      TransitGatewayId = "string",
      VpcId = "string",
      SubnetIds = list(
        "string"
      ),
      Options = list(
        DnsSupport = "enable"|"disable",
        Ipv6Support = "enable"|"disable",
        ApplianceModeSupport = "enable"|"disable"
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
