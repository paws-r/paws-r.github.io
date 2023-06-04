<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_client_vpn_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Client VPN endpoints in the account

### Description

Describes one or more Client VPN endpoints in the account.

### Usage

    ec2_describe_client_vpn_endpoints(ClientVpnEndpointIds, MaxResults,
      NextToken, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_endpoints_:_ClientVpnEndpointIds">ClientVpnEndpointIds</code></td>
<td><p>The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the nextToken value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_endpoints_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_endpoints_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>endpoint-id</code> - The ID of the Client VPN
endpoint.</p></li>
<li><p><code>transport-protocol</code> - The transport protocol
(<code>tcp</code> | <code>udp</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_endpoints_:_DryRun">DryRun</code></td>
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
      ClientVpnEndpoints = list(
        list(
          ClientVpnEndpointId = "string",
          Description = "string",
          Status = list(
            Code = "pending-associate"|"available"|"deleting"|"deleted",
            Message = "string"
          ),
          CreationTime = "string",
          DeletionTime = "string",
          DnsName = "string",
          ClientCidrBlock = "string",
          DnsServers = list(
            "string"
          ),
          SplitTunnel = TRUE|FALSE,
          VpnProtocol = "openvpn",
          TransportProtocol = "tcp"|"udp",
          VpnPort = 123,
          AssociatedTargetNetworks = list(
            list(
              NetworkId = "string",
              NetworkType = "vpc"
            )
          ),
          ServerCertificateArn = "string",
          AuthenticationOptions = list(
            list(
              Type = "certificate-authentication"|"directory-service-authentication"|"federated-authentication",
              ActiveDirectory = list(
                DirectoryId = "string"
              ),
              MutualAuthentication = list(
                ClientRootCertificateChain = "string"
              ),
              FederatedAuthentication = list(
                SamlProviderArn = "string",
                SelfServiceSamlProviderArn = "string"
              )
            )
          ),
          ConnectionLogOptions = list(
            Enabled = TRUE|FALSE,
            CloudwatchLogGroup = "string",
            CloudwatchLogStream = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          SecurityGroupIds = list(
            "string"
          ),
          VpcId = "string",
          SelfServicePortalUrl = "string",
          ClientConnectOptions = list(
            Enabled = TRUE|FALSE,
            LambdaFunctionArn = "string",
            Status = list(
              Code = "applying"|"applied",
              Message = "string"
            )
          ),
          SessionTimeoutHours = 123,
          ClientLoginBannerOptions = list(
            Enabled = TRUE|FALSE,
            BannerText = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_vpn_endpoints(
      ClientVpnEndpointIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
