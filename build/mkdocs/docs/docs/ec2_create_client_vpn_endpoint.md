<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_client_vpn_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Client VPN endpoint

### Description

Creates a Client VPN endpoint. A Client VPN endpoint is the resource you
create and configure to enable and manage client VPN sessions. It is the
destination endpoint at which all client VPN sessions are terminated.

### Usage

    ec2_create_client_vpn_endpoint(ClientCidrBlock, ServerCertificateArn,
      AuthenticationOptions, ConnectionLogOptions, DnsServers,
      TransportProtocol, VpnPort, Description, SplitTunnel, DryRun,
      ClientToken, TagSpecifications, SecurityGroupIds, VpcId,
      SelfServicePortal, ClientConnectOptions, SessionTimeoutHours,
      ClientLoginBannerOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_ClientCidrBlock">ClientCidrBlock</code></td>
<td><p>[required] The IPv4 address range, in CIDR notation, from which
to assign client IP addresses. The address range cannot overlap with the
local CIDR of the VPC in which the associated subnet is located, or the
routes that you add manually. The address range cannot be changed after
the Client VPN endpoint has been created. Client CIDR range must have a
size of at least /22 and must not be greater than /12.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_ServerCertificateArn">ServerCertificateArn</code></td>
<td><p>[required] The ARN of the server certificate. For more
information, see the <a
href="https://docs.aws.amazon.com/acm/latest/userguide/">Certificate
Manager User Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_AuthenticationOptions">AuthenticationOptions</code></td>
<td><p>[required] Information about the authentication method to be used
to authenticate clients.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_ConnectionLogOptions">ConnectionLogOptions</code></td>
<td><p>[required] Information about the client connection logging
options.</p>
<p>If you enable client connection logging, data about client
connections is sent to a Cloudwatch Logs log stream. The following
information is logged:</p>
<ul>
<li><p>Client connection requests</p></li>
<li><p>Client connection results (successful and unsuccessful)</p></li>
<li><p>Reasons for unsuccessful client connection requests</p></li>
<li><p>Client connection termination time</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_DnsServers">DnsServers</code></td>
<td><p>Information about the DNS servers to be used for DNS resolution.
A Client VPN endpoint can have up to two DNS servers. If no DNS server
is specified, the DNS address configured on the device is used for the
DNS server.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_TransportProtocol">TransportProtocol</code></td>
<td><p>The transport protocol to be used by the VPN session.</p>
<p>Default value: <code>udp</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_VpnPort">VpnPort</code></td>
<td><p>The port number to assign to the Client VPN endpoint for TCP and
UDP traffic.</p>
<p>Valid Values: <code>443</code> | <code>1194</code></p>
<p>Default Value: <code>443</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_Description">Description</code></td>
<td><p>A brief description of the Client VPN endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_SplitTunnel">SplitTunnel</code></td>
<td><p>Indicates whether split-tunnel is enabled on the Client VPN
endpoint.</p>
<p>By default, split-tunnel on a VPN endpoint is disabled.</p>
<p>For information about split-tunnel VPN endpoints, see <a
href="https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html">Split-tunnel
Client VPN endpoint</a> in the <em>Client VPN Administrator
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the Client VPN endpoint during
creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The IDs of one or more security groups to apply to the target
network. You must also specify the ID of the VPC that contains the
security groups.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_client_vpn_endpoint_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC to associate with the Client VPN endpoint. If
no security group IDs are specified in the request, the default security
group for the VPC is applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_SelfServicePortal">SelfServicePortal</code></td>
<td><p>Specify whether to enable the self-service portal for the Client
VPN endpoint.</p>
<p>Default Value: <code>enabled</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_ClientConnectOptions">ClientConnectOptions</code></td>
<td><p>The options for managing connection authorization for new client
connections.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_endpoint_:_SessionTimeoutHours">SessionTimeoutHours</code></td>
<td><p>The maximum VPN session duration time in hours.</p>
<p>Valid values: <code>8 | 10 | 12 | 24</code></p>
<p>Default value: <code>24</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_endpoint_:_ClientLoginBannerOptions">ClientLoginBannerOptions</code></td>
<td><p>Options for enabling a customizable text banner that will be
displayed on Amazon Web Services provided clients when a VPN session is
established.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientVpnEndpointId = "string",
      Status = list(
        Code = "pending-associate"|"available"|"deleting"|"deleted",
        Message = "string"
      ),
      DnsName = "string"
    )

### Request syntax

    svc$create_client_vpn_endpoint(
      ClientCidrBlock = "string",
      ServerCertificateArn = "string",
      AuthenticationOptions = list(
        list(
          Type = "certificate-authentication"|"directory-service-authentication"|"federated-authentication",
          ActiveDirectory = list(
            DirectoryId = "string"
          ),
          MutualAuthentication = list(
            ClientRootCertificateChainArn = "string"
          ),
          FederatedAuthentication = list(
            SAMLProviderArn = "string",
            SelfServiceSAMLProviderArn = "string"
          )
        )
      ),
      ConnectionLogOptions = list(
        Enabled = TRUE|FALSE,
        CloudwatchLogGroup = "string",
        CloudwatchLogStream = "string"
      ),
      DnsServers = list(
        "string"
      ),
      TransportProtocol = "tcp"|"udp",
      VpnPort = 123,
      Description = "string",
      SplitTunnel = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      ClientToken = "string",
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
      SecurityGroupIds = list(
        "string"
      ),
      VpcId = "string",
      SelfServicePortal = "enabled"|"disabled",
      ClientConnectOptions = list(
        Enabled = TRUE|FALSE,
        LambdaFunctionArn = "string"
      ),
      SessionTimeoutHours = 123,
      ClientLoginBannerOptions = list(
        Enabled = TRUE|FALSE,
        BannerText = "string"
      )
    )
