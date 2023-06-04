<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_local_gateway_route_table_virtual_interface_group_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a local gateway route table virtual interface group association

### Description

Deletes a local gateway route table virtual interface group association.

### Usage

    ec2_delete_local_gateway_route_table_virtual_interface_group_association(
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_local_gateway_route_table_virtual_interface_group_association_:_LocalGatewayRouteTableVirtualInterfaceGroupAssociationId">LocalGatewayRouteTableVirtualInterfaceGroupAssociationId</code></td>
<td><p>[required] The ID of the local gateway route table virtual
interface group association.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_local_gateway_route_table_virtual_interface_group_association_:_DryRun">DryRun</code></td>
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
      LocalGatewayRouteTableVirtualInterfaceGroupAssociation = list(
        LocalGatewayRouteTableVirtualInterfaceGroupAssociationId = "string",
        LocalGatewayVirtualInterfaceGroupId = "string",
        LocalGatewayId = "string",
        LocalGatewayRouteTableId = "string",
        LocalGatewayRouteTableArn = "string",
        OwnerId = "string",
        State = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_local_gateway_route_table_virtual_interface_group_association(
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationId = "string",
      DryRun = TRUE|FALSE
    )
