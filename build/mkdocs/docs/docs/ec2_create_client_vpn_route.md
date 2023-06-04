<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_client_vpn_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a route to a network to a Client VPN endpoint

### Description

Adds a route to a network to a Client VPN endpoint. Each Client VPN
endpoint has a route table that describes the available destination
network routes. Each route in the route table specifies the path for
traﬃc to speciﬁc resources or networks.

### Usage

    ec2_create_client_vpn_route(ClientVpnEndpointId, DestinationCidrBlock,
      TargetVpcSubnetId, Description, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_route_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint to which to add the
route.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_route_:_DestinationCidrBlock">DestinationCidrBlock</code></td>
<td><p>[required] The IPv4 address range, in CIDR notation, of the route
destination. For example:</p>
<ul>
<li><p>To add a route for Internet access, enter <code
style="white-space: pre;">⁠0.0.0.0/0⁠</code></p></li>
<li><p>To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR
range</p></li>
<li><p>To add a route for an on-premises network, enter the Amazon Web
Services Site-to-Site VPN connection's IPv4 CIDR range</p></li>
<li><p>To add a route for the local network, enter the client CIDR
range</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_route_:_TargetVpcSubnetId">TargetVpcSubnetId</code></td>
<td><p>[required] The ID of the subnet through which you want to route
traffic. The specified subnet must be an existing target network of the
Client VPN endpoint.</p>
<p>Alternatively, if you're adding a route for the local network,
specify <code>local</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_client_vpn_route_:_Description">Description</code></td>
<td><p>A brief description of the route.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_client_vpn_route_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_client_vpn_route_:_DryRun">DryRun</code></td>
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
      Status = list(
        Code = "creating"|"active"|"failed"|"deleting",
        Message = "string"
      )
    )

### Request syntax

    svc$create_client_vpn_route(
      ClientVpnEndpointId = "string",
      DestinationCidrBlock = "string",
      TargetVpcSubnetId = "string",
      Description = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
