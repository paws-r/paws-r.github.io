<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpn_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your VPN connections

### Description

Describes one or more of your VPN connections.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_describe_vpn_connections(Filters, VpnConnectionIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpn_connections_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>customer-gateway-configuration</code> - The configuration
information for the customer gateway.</p></li>
<li><p><code>customer-gateway-id</code> - The ID of a customer gateway
associated with the VPN connection.</p></li>
<li><p><code>state</code> - The state of the VPN connection
(<code>pending</code> | <code>available</code> | <code>deleting</code> |
<code>deleted</code>).</p></li>
<li><p><code>option.static-routes-only</code> - Indicates whether the
connection has static routes only. Used for devices that do not support
Border Gateway Protocol (BGP).</p></li>
<li><p><code>route.destination-cidr-block</code> - The destination CIDR
block. This corresponds to the subnet used in a customer data
center.</p></li>
<li><p><code>bgp-asn</code> - The BGP Autonomous System Number (ASN)
associated with a BGP device.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>type</code> - The type of VPN connection. Currently the
only supported type is <code>ipsec.1</code>.</p></li>
<li><p><code>vpn-connection-id</code> - The ID of the VPN
connection.</p></li>
<li><p><code>vpn-gateway-id</code> - The ID of a virtual private gateway
associated with the VPN connection.</p></li>
<li><p><code>transit-gateway-id</code> - The ID of a transit gateway
associated with the VPN connection.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpn_connections_:_VpnConnectionIds">VpnConnectionIds</code></td>
<td><p>One or more VPN connection IDs.</p>
<p>Default: Describes your VPN connections.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpn_connections_:_DryRun">DryRun</code></td>
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
      VpnConnections = list(
        list(
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
    )

### Request syntax

    svc$describe_vpn_connections(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      VpnConnectionIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
