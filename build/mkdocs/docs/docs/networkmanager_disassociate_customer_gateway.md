<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_disassociate_customer_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a customer gateway from a device and a link

### Description

Disassociates a customer gateway from a device and a link.

### Usage

    networkmanager_disassociate_customer_gateway(GlobalNetworkId,
      CustomerGatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_disassociate_customer_gateway_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_disassociate_customer_gateway_:_CustomerGatewayArn">CustomerGatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the customer
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomerGatewayAssociation = list(
        CustomerGatewayArn = "string",
        GlobalNetworkId = "string",
        DeviceId = "string",
        LinkId = "string",
        State = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"
      )
    )

### Request syntax

    svc$disassociate_customer_gateway(
      GlobalNetworkId = "string",
      CustomerGatewayArn = "string"
    )
