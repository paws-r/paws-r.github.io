<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpn_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the customer gateway or the target gateway of an Amazon Web Services Site-to-Site VPN connection

### Description

Modifies the customer gateway or the target gateway of an Amazon Web
Services Site-to-Site VPN connection. To modify the target gateway, the
following migration options are available:

-   An existing virtual private gateway to a new virtual private gateway

-   An existing virtual private gateway to a transit gateway

-   An existing transit gateway to a new transit gateway

-   An existing transit gateway to a virtual private gateway

Before you perform the migration to the new gateway, you must configure
the new gateway. Use `create_vpn_gateway` to create a virtual private
gateway, or `create_transit_gateway` to create a transit gateway.

This step is required when you migrate from a virtual private gateway
with static routes to a transit gateway.

You must delete the static routes before you migrate to the new gateway.

Keep a copy of the static route before you delete it. You will need to
add back these routes to the transit gateway after the VPN connection
migration is complete.

After you migrate to the new gateway, you might need to modify your VPC
route table. Use `create_route` and `delete_route` to make the changes
described in [Update VPC route
tables](https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing)
in the *Amazon Web Services Site-to-Site VPN User Guide*.

When the new gateway is a transit gateway, modify the transit gateway
route table to allow traffic between the VPC and the Amazon Web Services
Site-to-Site VPN connection. Use `create_transit_gateway_route` to add
the routes.

If you deleted VPN static routes, you must add the static routes to the
transit gateway route table.

After you perform this operation, the VPN endpoint's IP addresses on the
Amazon Web Services side and the tunnel options remain intact. Your
Amazon Web Services Site-to-Site VPN connection will be temporarily
unavailable for a brief period while we provision the new endpoints.

### Usage

    ec2_modify_vpn_connection(VpnConnectionId, TransitGatewayId,
      CustomerGatewayId, VpnGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpn_connection_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the VPN connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpn_connection_:_TransitGatewayId">TransitGatewayId</code></td>
<td><p>The ID of the transit gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpn_connection_:_CustomerGatewayId">CustomerGatewayId</code></td>
<td><p>The ID of the customer gateway at your end of the VPN
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpn_connection_:_VpnGatewayId">VpnGatewayId</code></td>
<td><p>The ID of the virtual private gateway at the Amazon Web Services
side of the VPN connection.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_vpn_connection_:_DryRun">DryRun</code></td>
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

    svc$modify_vpn_connection(
      VpnConnectionId = "string",
      TransitGatewayId = "string",
      CustomerGatewayId = "string",
      VpnGatewayId = "string",
      DryRun = TRUE|FALSE
    )
