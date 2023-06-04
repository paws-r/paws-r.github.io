<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_route_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified route table

### Description

Deletes the specified route table. You must disassociate the route table
from any subnets before you can delete it. You can't delete the main
route table.

### Usage

    ec2_delete_route_table(DryRun, RouteTableId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_route_table_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_route_table_:_RouteTableId">RouteTableId</code></td>
<td><p>[required] The ID of the route table.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route_table(
      DryRun = TRUE|FALSE,
      RouteTableId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified route table.
    svc$delete_route_table(
      RouteTableId = "rtb-22574640"
    )

    ## End(Not run)
