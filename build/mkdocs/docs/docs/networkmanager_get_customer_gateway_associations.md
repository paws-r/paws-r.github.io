<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_customer_gateway_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the association information for customer gateways that are associated with devices and links in your global network

### Description

Gets the association information for customer gateways that are
associated with devices and links in your global network.

### Usage

    networkmanager_get_customer_gateway_associations(GlobalNetworkId,
      CustomerGatewayArns, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_customer_gateway_associations_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_customer_gateway_associations_:_CustomerGatewayArns">CustomerGatewayArns</code></td>
<td><p>One or more customer gateway Amazon Resource Names (ARNs). The
maximum is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_customer_gateway_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_customer_gateway_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomerGatewayAssociations = list(
        list(
          CustomerGatewayArn = "string",
          GlobalNetworkId = "string",
          DeviceId = "string",
          LinkId = "string",
          State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_customer_gateway_associations(
      GlobalNetworkId = "string",
      CustomerGatewayArns = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
