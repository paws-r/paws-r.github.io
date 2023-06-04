<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_deregister_transit_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters a transit gateway from your global network

### Description

Deregisters a transit gateway from your global network. This action does
not delete your transit gateway, or modify any of its attachments. This
action removes any customer gateway associations.

### Usage

    networkmanager_deregister_transit_gateway(GlobalNetworkId,
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
id="networkmanager_deregister_transit_gateway_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_deregister_transit_gateway_:_TransitGatewayArn">TransitGatewayArn</code></td>
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

    svc$deregister_transit_gateway(
      GlobalNetworkId = "string",
      TransitGatewayArn = "string"
    )
