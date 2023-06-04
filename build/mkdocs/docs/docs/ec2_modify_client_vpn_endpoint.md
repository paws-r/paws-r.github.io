<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_client_vpn_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified Client VPN endpoint

### Description

Modifies the specified Client VPN endpoint. Modifying the DNS server
resets existing client connections.

### Usage

    ec2_modify_client_vpn_endpoint(ClientVpnEndpointId,
      ServerCertificateArn, ConnectionLogOptions, DnsServers, VpnPort,
      Description, SplitTunnel, DryRun, SecurityGroupIds, VpcId,
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
id="ec2_modify_client_vpn_endpoint_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_ServerCertificateArn">ServerCertificateArn</code></td>
<td><p>The ARN of the server certificate to be used. The server
certificate must be provisioned in Certificate Manager (ACM).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_ConnectionLogOptions">ConnectionLogOptions</code></td>
<td><p>Information about the client connection logging options.</p>
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
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_DnsServers">DnsServers</code></td>
<td><p>Information about the DNS servers to be used by Client VPN
connections. A Client VPN endpoint can have up to two DNS
servers.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_VpnPort">VpnPort</code></td>
<td><p>The port number to assign to the Client VPN endpoint for TCP and
UDP traffic.</p>
<p>Valid Values: <code>443</code> | <code>1194</code></p>
<p>Default Value: <code>443</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_Description">Description</code></td>
<td><p>A brief description of the Client VPN endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_SplitTunnel">SplitTunnel</code></td>
<td><p>Indicates whether the VPN is split-tunnel.</p>
<p>For information about split-tunnel VPN endpoints, see <a
href="https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html">Split-tunnel
Client VPN endpoint</a> in the <em>Client VPN Administrator
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The IDs of one or more security groups to apply to the target
network.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_client_vpn_endpoint_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC to associate with the Client VPN
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_SelfServicePortal">SelfServicePortal</code></td>
<td><p>Specify whether to enable the self-service portal for the Client
VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_ClientConnectOptions">ClientConnectOptions</code></td>
<td><p>The options for managing connection authorization for new client
connections.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_client_vpn_endpoint_:_SessionTimeoutHours">SessionTimeoutHours</code></td>
<td><p>The maximum VPN session duration time in hours.</p>
<p>Valid values: <code>8 | 10 | 12 | 24</code></p>
<p>Default value: <code>24</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_client_vpn_endpoint_:_ClientLoginBannerOptions">ClientLoginBannerOptions</code></td>
<td><p>Options for enabling a customizable text banner that will be
displayed on Amazon Web Services provided clients when a VPN session is
established.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_client_vpn_endpoint(
      ClientVpnEndpointId = "string",
      ServerCertificateArn = "string",
      ConnectionLogOptions = list(
        Enabled = TRUE|FALSE,
        CloudwatchLogGroup = "string",
        CloudwatchLogStream = "string"
      ),
      DnsServers = list(
        CustomDnsServers = list(
          "string"
        ),
        Enabled = TRUE|FALSE
      ),
      VpnPort = 123,
      Description = "string",
      SplitTunnel = TRUE|FALSE,
      DryRun = TRUE|FALSE,
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
