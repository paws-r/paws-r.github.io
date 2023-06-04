<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_local_gateway_virtual_interfaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified local gateway virtual interfaces

### Description

Describes the specified local gateway virtual interfaces.

### Usage

    ec2_describe_local_gateway_virtual_interfaces(
      LocalGatewayVirtualInterfaceIds, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_virtual_interfaces_:_LocalGatewayVirtualInterfaceIds">LocalGatewayVirtualInterfaceIds</code></td>
<td><p>The IDs of the virtual interfaces.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_local_gateway_virtual_interfaces_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>local-address</code> - The local address.</p></li>
<li><p><code>local-bgp-asn</code> - The Border Gateway Protocol (BGP)
Autonomous System Number (ASN) of the local gateway.</p></li>
<li><p><code>local-gateway-id</code> - The ID of the local
gateway.</p></li>
<li><p><code>local-gateway-virtual-interface-id</code> - The ID of the
virtual interface.</p></li>
<li><p><code>owner-id</code> - The ID of the Amazon Web Services account
that owns the local gateway virtual interface.</p></li>
<li><p><code>peer-address</code> - The peer address.</p></li>
<li><p><code>peer-bgp-asn</code> - The peer BGP ASN.</p></li>
<li><p><code>vlan</code> - The ID of the VLAN.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_virtual_interfaces_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_local_gateway_virtual_interfaces_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_local_gateway_virtual_interfaces_:_DryRun">DryRun</code></td>
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
      LocalGatewayVirtualInterfaces = list(
        list(
          LocalGatewayVirtualInterfaceId = "string",
          LocalGatewayId = "string",
          Vlan = 123,
          LocalAddress = "string",
          PeerAddress = "string",
          LocalBgpAsn = 123,
          PeerBgpAsn = 123,
          OwnerId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_local_gateway_virtual_interfaces(
      LocalGatewayVirtualInterfaceIds = list(
        "string"
      ),
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
