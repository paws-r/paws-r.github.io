<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_local_gateway_route_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a local gateway route table

### Description

Deletes a local gateway route table.

### Usage

    ec2_delete_local_gateway_route_table(LocalGatewayRouteTableId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_local_gateway_route_table_:_LocalGatewayRouteTableId">LocalGatewayRouteTableId</code></td>
<td><p>[required] The ID of the local gateway route table.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_local_gateway_route_table_:_DryRun">DryRun</code></td>
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
      LocalGatewayRouteTable = list(
        LocalGatewayRouteTableId = "string",
        LocalGatewayRouteTableArn = "string",
        LocalGatewayId = "string",
        OutpostArn = "string",
        OwnerId = "string",
        State = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Mode = "direct-vpc-routing"|"coip",
        StateReason = list(
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$delete_local_gateway_route_table(
      LocalGatewayRouteTableId = "string",
      DryRun = TRUE|FALSE
    )
