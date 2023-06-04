<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_route_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a subnet in your VPC or an internet gateway or virtual private gateway attached to your VPC with a route table in your VPC

### Description

Associates a subnet in your VPC or an internet gateway or virtual
private gateway attached to your VPC with a route table in your VPC.
This association causes traffic from the subnet or gateway to be routed
according to the routes in the route table. The action returns an
association ID, which you need in order to disassociate the route table
later. A route table can be associated with multiple subnets.

For more information, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_associate_route_table(DryRun, RouteTableId, SubnetId, GatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_associate_route_table_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_route_table_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_associate_route_table_:_SubnetId">SubnetId</code></td>
<td><p>The ID of the subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_route_table_:_GatewayId">GatewayId</code></td>
<td><p>The ID of the internet gateway or virtual private
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationId = "string",
      AssociationState = list(
        State = "associating"|"associated"|"disassociating"|"disassociated"|"failed",
        StatusMessage = "string"
      )
    )

### Request syntax

    svc$associate_route_table(
      DryRun = TRUE|FALSE,
      RouteTableId = "string",
      SubnetId = "string",
      GatewayId = "string"
    )

### Examples

    ## Not run: 
    # This example associates the specified route table with the specified
    # subnet.
    svc$associate_route_table(
      RouteTableId = "rtb-22574640",
      SubnetId = "subnet-9d4a7b6"
    )

    ## End(Not run)
