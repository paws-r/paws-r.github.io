<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_route_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a subnet or gateway from a route table

### Description

Disassociates a subnet or gateway from a route table.

After you perform this action, the subnet no longer uses the routes in
the route table. Instead, it uses the routes in the VPC's main route
table. For more information about route tables, see [Route
tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_disassociate_route_table(AssociationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_route_table_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID representing the current
association between the route table and subnet or gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disassociate_route_table_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_route_table(
      AssociationId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example disassociates the specified route table from its associated
    # subnet.
    svc$disassociate_route_table(
      AssociationId = "rtbassoc-781d0d1a"
    )

    ## End(Not run)
