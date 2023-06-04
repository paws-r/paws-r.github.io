<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpn_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPN connection between an existing virtual private gateway or transit gateway and a customer gateway

### Description

Creates a VPN connection between an existing virtual private gateway or
transit gateway and a customer gateway. The supported connection type is
`ipsec.1`.

The response includes information that you need to give to your network
administrator to configure your customer gateway.

We strongly recommend that you use HTTPS when calling this operation
because the response contains sensitive cryptographic information for
configuring your customer gateway device.

If you decide to shut down your VPN connection for any reason and later
create a new VPN connection, you must reconfigure your customer gateway
with the new information returned from this call.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_create_vpn_connection(CustomerGatewayId, Type, VpnGatewayId,
      TransitGatewayId, DryRun, Options, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpn_connection_:_CustomerGatewayId">CustomerGatewayId</code></td>
<td><p>[required] The ID of the customer gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_vpn_connection_:_Type">Type</code></td>
<td><p>[required] The type of VPN connection
(<code>ipsec.1</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpn_connection_:_VpnGatewayId">VpnGatewayId</code></td>
<td><p>The ID of the virtual private gateway. If you specify a virtual
private gateway, you cannot specify a transit gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpn_connection_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>The ID of the transit gateway. If you specify a transit gateway,
you cannot specify a virtual private gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_vpn_connection_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_vpn_connection_:_Options">Options</code></td>
<td><p>The options for the VPN connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpn_connection_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the VPN connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpnConnection = list(
        CustomerGatewayConfiguration = "string",
        CustomerGatewayId = "string",
        Category = "string",
        State = "pending"|"available"|"deleting"|"deleted",
        Type = "ipsec.1",
        VpnConnectionId = "string",
        VpnGatewayId = "string",
        TransitGatewayId = "string",
        CoreNetworkArn = "string",
        CoreNetworkAttachmentArn = "string",
        GatewayAssociationState = "associated"|"not-associated"|"associating"|"disassociating",
        Options = list(
          EnableAcceleration = TRUE|FALSE,
          StaticRoutesOnly = TRUE|FALSE,
          LocalIpv4NetworkCidr = "string",
          RemoteIpv4NetworkCidr = "string",
          LocalIpv6NetworkCidr = "string",
          RemoteIpv6NetworkCidr = "string",
          OutsideIpAddressType = "string",
          TransportTransitGatewayAttachmentId = "string",
          TunnelInsideIpVersion = "ipv4"|"ipv6",
          TunnelOptions = list(
            list(
              OutsideIpAddress = "string",
              TunnelInsideCidr = "string",
              TunnelInsideIpv6Cidr = "string",
              PreSharedKey = "string",
              Phase1LifetimeSeconds = 123,
              Phase2LifetimeSeconds = 123,
              RekeyMarginTimeSeconds = 123,
              RekeyFuzzPercentage = 123,
              ReplayWindowSize = 123,
              DpdTimeoutSeconds = 123,
              DpdTimeoutAction = "string",
              Phase1EncryptionAlgorithms = list(
                list(
                  Value = "string"
                )
              ),
              Phase2EncryptionAlgorithms = list(
                list(
                  Value = "string"
                )
              ),
              Phase1IntegrityAlgorithms = list(
                list(
                  Value = "string"
                )
              ),
              Phase2IntegrityAlgorithms = list(
                list(
                  Value = "string"
                )
              ),
              Phase1DHGroupNumbers = list(
                list(
                  Value = 123
                )
              ),
              Phase2DHGroupNumbers = list(
                list(
                  Value = 123
                )
              ),
              IkeVersions = list(
                list(
                  Value = "string"
                )
              ),
              StartupAction = "string",
              LogOptions = list(
                CloudWatchLogOptions = list(
                  LogEnabled = TRUE|FALSE,
                  LogGroupArn = "string",
                  LogOutputFormat = "string"
                )
              ),
              EnableTunnelLifecycleControl = TRUE|FALSE
            )
          )
        ),
        Routes = list(
          list(
            DestinationCidrBlock = "string",
            Source = "Static",
            State = "pending"|"available"|"deleting"|"deleted"
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        VgwTelemetry = list(
          list(
            AcceptedRouteCount = 123,
            LastStatusChange = as.POSIXct(
              "2015-01-01"
            ),
            OutsideIpAddress = "string",
            Status = "UP"|"DOWN",
            StatusMessage = "string",
            CertificateArn = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_vpn_connection(
      CustomerGatewayId = "string",
      Type = "string",
      VpnGatewayId = "string",
      TransitGatewayId = "string",
      DryRun = TRUE|FALSE,
      Options = list(
        EnableAcceleration = TRUE|FALSE,
        StaticRoutesOnly = TRUE|FALSE,
        TunnelInsideIpVersion = "ipv4"|"ipv6",
        TunnelOptions = list(
          list(
            TunnelInsideCidr = "string",
            TunnelInsideIpv6Cidr = "string",
            PreSharedKey = "string",
            Phase1LifetimeSeconds = 123,
            Phase2LifetimeSeconds = 123,
            RekeyMarginTimeSeconds = 123,
            RekeyFuzzPercentage = 123,
            ReplayWindowSize = 123,
            DPDTimeoutSeconds = 123,
            DPDTimeoutAction = "string",
            Phase1EncryptionAlgorithms = list(
              list(
                Value = "string"
              )
            ),
            Phase2EncryptionAlgorithms = list(
              list(
                Value = "string"
              )
            ),
            Phase1IntegrityAlgorithms = list(
              list(
                Value = "string"
              )
            ),
            Phase2IntegrityAlgorithms = list(
              list(
                Value = "string"
              )
            ),
            Phase1DHGroupNumbers = list(
              list(
                Value = 123
              )
            ),
            Phase2DHGroupNumbers = list(
              list(
                Value = 123
              )
            ),
            IKEVersions = list(
              list(
                Value = "string"
              )
            ),
            StartupAction = "string",
            LogOptions = list(
              CloudWatchLogOptions = list(
                LogEnabled = TRUE|FALSE,
                LogGroupArn = "string",
                LogOutputFormat = "string"
              )
            ),
            EnableTunnelLifecycleControl = TRUE|FALSE
          )
        ),
        LocalIpv4NetworkCidr = "string",
        RemoteIpv4NetworkCidr = "string",
        LocalIpv6NetworkCidr = "string",
        RemoteIpv6NetworkCidr = "string",
        OutsideIpAddressType = "string",
        TransportTransitGatewayAttachmentId = "string"
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
      )
    )
