<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpn_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual private gateway

### Description

Creates a virtual private gateway. A virtual private gateway is the
endpoint on the VPC side of your VPN connection. You can create a
virtual private gateway before creating the VPC itself.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_create_vpn_gateway(AvailabilityZone, Type, TagSpecifications,
      AmazonSideAsn, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpn_gateway_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone for the virtual private gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_vpn_gateway_:_Type">Type</code></td>
<td><p>[required] The type of VPN connection this virtual private
gateway supports.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpn_gateway_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the virtual private gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpn_gateway_:_AmazonSideAsn">AmazonSideAsn</code></td>
<td><p>A private Autonomous System Number (ASN) for the Amazon side of a
BGP session. If you're using a 16-bit ASN, it must be in the 64512 to
65534 range. If you're using a 32-bit ASN, it must be in the 4200000000
to 4294967294 range.</p>
<p>Default: 64512</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_vpn_gateway_:_DryRun">DryRun</code></td>
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
      VpnGateway = list(
        AvailabilityZone = "string",
        State = "pending"|"available"|"deleting"|"deleted",
        Type = "ipsec.1",
        VpcAttachments = list(
          list(
            State = "attaching"|"attached"|"detaching"|"detached",
            VpcId = "string"
          )
        ),
        VpnGatewayId = "string",
        AmazonSideAsn = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_vpn_gateway(
      AvailabilityZone = "string",
      Type = "ipsec.1",
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
      AmazonSideAsn = 123,
      DryRun = TRUE|FALSE
    )
