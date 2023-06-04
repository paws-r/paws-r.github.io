<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_client_vpn_target_networks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the target networks associated with the specified Client VPN endpoint

### Description

Describes the target networks associated with the specified Client VPN
endpoint.

### Usage

    ec2_describe_client_vpn_target_networks(ClientVpnEndpointId,
      AssociationIds, MaxResults, NextToken, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_target_networks_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_target_networks_:_AssociationIds">AssociationIds</code></td>
<td><p>The IDs of the target network associations.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_target_networks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the nextToken value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_target_networks_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_client_vpn_target_networks_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p>
<ul>
<li><p><code>association-id</code> - The ID of the association.</p></li>
<li><p><code>target-network-id</code> - The ID of the subnet specified
as the target network.</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC in which the target
network is located.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_client_vpn_target_networks_:_DryRun">DryRun</code></td>
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
      ClientVpnTargetNetworks = list(
        list(
          AssociationId = "string",
          VpcId = "string",
          TargetNetworkId = "string",
          ClientVpnEndpointId = "string",
          Status = list(
            Code = "associating"|"associated"|"association-failed"|"disassociating"|"disassociated",
            Message = "string"
          ),
          SecurityGroups = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_client_vpn_target_networks(
      ClientVpnEndpointId = "string",
      AssociationIds = list(
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
