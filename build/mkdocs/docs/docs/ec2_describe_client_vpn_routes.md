<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_client_vpn_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the routes for the specified Client VPN endpoint

### Description

Describes the routes for the specified Client VPN endpoint.

### Usage

    ec2_describe_client_vpn_routes(ClientVpnEndpointId, Filters, MaxResults,
      NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_routes_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_routes_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>destination-cidr</code> - The CIDR of the route
destination.</p></li>
<li><p><code>origin</code> - How the route was associated with the
Client VPN endpoint (<code>associate</code> |
<code>add-route</code>).</p></li>
<li><p><code>target-subnet</code> - The ID of the subnet through which
traffic is routed.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_routes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the nextToken value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_routes_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_routes_:_DryRun">DryRun</code></td>
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
      Routes = list(
        list(
          ClientVpnEndpointId = "string",
          DestinationCidr = "string",
          TargetSubnet = "string",
          Type = "string",
          Origin = "string",
          Status = list(
            Code = "creating"|"active"|"failed"|"deleting",
            Message = "string"
          ),
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_vpn_routes(
      ClientVpnEndpointId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
