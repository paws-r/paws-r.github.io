<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_carrier_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a carrier gateway

### Description

Deletes a carrier gateway.

If you do not delete the route that contains the carrier gateway as the
Target, the route is a blackhole route. For information about how to
delete a route, see `delete_route`.

### Usage

    ec2_delete_carrier_gateway(CarrierGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_carrier_gateway_:_CarrierGatewayId">CarrierGatewayId</code></td>
<td><p>[required] The ID of the carrier gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_carrier_gateway_:_DryRun">DryRun</code></td>
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
      CarrierGateway = list(
        CarrierGatewayId = "string",
        VpcId = "string",
        State = "pending"|"available"|"deleting"|"deleted",
        OwnerId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_carrier_gateway(
      CarrierGatewayId = "string",
      DryRun = TRUE|FALSE
    )
