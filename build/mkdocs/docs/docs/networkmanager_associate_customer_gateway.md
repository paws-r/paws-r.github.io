<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_associate_customer_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a customer gateway with a device and optionally, with a link

### Description

Associates a customer gateway with a device and optionally, with a link.
If you specify a link, it must be associated with the specified device.

You can only associate customer gateways that are connected to a VPN
attachment on a transit gateway or core network registered in your
global network. When you register a transit gateway or core network,
customer gateways that are connected to the transit gateway are
automatically included in the global network. To list customer gateways
that are connected to a transit gateway, use the
[DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html)
EC2 API and filter by `transit-gateway-id`.

You cannot associate a customer gateway with more than one device and
link.

### Usage

    networkmanager_associate_customer_gateway(CustomerGatewayArn,
      GlobalNetworkId, DeviceId, LinkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_associate_customer_gateway_:_CustomerGatewayArn">CustomerGatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the customer
gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_customer_gateway_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_associate_customer_gateway_:_DeviceId">DeviceId</code></td>
<td><p>[required] The ID of the device.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_associate_customer_gateway_:_LinkId">LinkId</code></td>
<td><p>The ID of the link.</p></td>
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

    svc$associate_customer_gateway(
      CustomerGatewayArn = "string",
      GlobalNetworkId = "string",
      DeviceId = "string",
      LinkId = "string"
    )
