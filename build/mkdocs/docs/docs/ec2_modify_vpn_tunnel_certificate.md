<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpn_tunnel_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the VPN tunnel endpoint certificate

### Description

Modifies the VPN tunnel endpoint certificate.

### Usage

    ec2_modify_vpn_tunnel_certificate(VpnConnectionId,
      VpnTunnelOutsideIpAddress, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpn_tunnel_certificate_:_VpnConnectionId">VpnConnectionId</code></td>
<td><p>[required] The ID of the Amazon Web Services Site-to-Site VPN
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpn_tunnel_certificate_:_VpnTunnelOutsideIpAddress">VpnTunnelOutsideIpAddress</code></td>
<td><p>[required] The external IP address of the VPN tunnel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpn_tunnel_certificate_:_DryRun">DryRun</code></td>
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

    svc$modify_vpn_tunnel_certificate(
      VpnConnectionId = "string",
      VpnTunnelOutsideIpAddress = "string",
      DryRun = TRUE|FALSE
    )
