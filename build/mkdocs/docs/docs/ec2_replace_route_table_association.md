<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_replace_route_table_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the route table associated with a given subnet, internet gateway, or virtual private gateway in a VPC

### Description

Changes the route table associated with a given subnet, internet
gateway, or virtual private gateway in a VPC. After the operation
completes, the subnet or gateway uses the routes in the new route table.
For more information about route tables, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

You can also use this operation to change which table is the main route
table in the VPC. Specify the main route table's association ID and the
route table ID of the new main route table.

### Usage

    ec2_replace_route_table_association(AssociationId, DryRun, RouteTableId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_replace_route_table_association_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_route_table_association_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_replace_route_table_association_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the new route table to associate with the
subnet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NewAssociationId = "string",
      AssociationState = list(
        State = "associating"|"associated"|"disassociating"|"disassociated"|"failed",
        StatusMessage = "string"
      )
    )

### Request syntax

    svc$replace_route_table_association(
      AssociationId = "string",
      DryRun = TRUE|FALSE,
      RouteTableId = "string"
    )

### Examples

    ## Not run: 
    # This example associates the specified route table with the subnet for
    # the specified route table association.
    svc$replace_route_table_association(
      AssociationId = "rtbassoc-781d0d1a",
      RouteTableId = "rtb-22574640"
    )

    ## End(Not run)
