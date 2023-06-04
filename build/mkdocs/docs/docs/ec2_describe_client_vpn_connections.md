<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_client_vpn_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint

### Description

Describes active client connections and connections that have been
terminated within the last 60 minutes for the specified Client VPN
endpoint.

### Usage

    ec2_describe_client_vpn_connections(ClientVpnEndpointId, Filters,
      NextToken, MaxResults, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_connections_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_connections_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>connection-id</code> - The ID of the connection.</p></li>
<li><p><code>username</code> - For Active Directory client
authentication, the user name of the client who established the client
connection.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_connections_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the nextToken value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_connections_:_DryRun">DryRun</code></td>
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
      Connections = list(
        list(
          ClientVpnEndpointId = "string",
          Timestamp = "string",
          ConnectionId = "string",
          Username = "string",
          ConnectionEstablishedTime = "string",
          IngressBytes = "string",
          EgressBytes = "string",
          IngressPackets = "string",
          EgressPackets = "string",
          ClientIp = "string",
          CommonName = "string",
          Status = list(
            Code = "active"|"failed-to-terminate"|"terminating"|"terminated",
            Message = "string"
          ),
          ConnectionEndTime = "string",
          PostureComplianceStatuses = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_vpn_connections(
      ClientVpnEndpointId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
