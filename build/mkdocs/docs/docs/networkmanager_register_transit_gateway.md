<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_register_transit_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a transit gateway in your global network

### Description

Registers a transit gateway in your global network. Not all Regions
support transit gateways for global networks. For a list of the
supported Regions, see [Region
Availability](https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions)
in the *Amazon Web Services Transit Gateways for Global Networks User
Guide*. The transit gateway can be in any of the supported Amazon Web
Services Regions, but it must be owned by the same Amazon Web Services
account that owns the global network. You cannot register a transit
gateway in more than one global network.

### Usage

    networkmanager_register_transit_gateway(GlobalNetworkId,
      TransitGatewayArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_register_transit_gateway_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_register_transit_gateway_:_TransitGatewayArn">TransitGatewayArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the transit
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayRegistration = list(
        GlobalNetworkId = "string",
        TransitGatewayArn = "string",
        State = list(
          Code = "PENDING"|"AVAILABLE"|"DELETING"|"DELETED"|"FAILED",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$register_transit_gateway(
      GlobalNetworkId = "string",
      TransitGatewayArn = "string"
    )
