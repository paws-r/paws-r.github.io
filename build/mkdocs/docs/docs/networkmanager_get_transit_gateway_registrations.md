<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_transit_gateway_registrations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the transit gateway registrations in a specified global network

### Description

Gets information about the transit gateway registrations in a specified
global network.

### Usage

    networkmanager_get_transit_gateway_registrations(GlobalNetworkId,
      TransitGatewayArns, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_transit_gateway_registrations_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_transit_gateway_registrations_:_TransitGatewayArns">TransitGatewayArns</code></td>
<td><p>The Amazon Resource Names (ARNs) of one or more transit gateways.
The maximum is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_transit_gateway_registrations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_transit_gateway_registrations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayRegistrations = list(
        list(
          GlobalNetworkId = "string",
          TransitGatewayArn = "string",
          State = list(
            Code = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"|"FAILED",
            Message = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_transit_gateway_registrations(
      GlobalNetworkId = "string",
      TransitGatewayArns = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
