<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpc_peering_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a VPC peering connection

### Description

Deletes a VPC peering connection. Either the owner of the requester VPC
or the owner of the accepter VPC can delete the VPC peering connection
if it's in the `active` state. The owner of the requester VPC can delete
a VPC peering connection in the `pending-acceptance` state. You cannot
delete a VPC peering connection that's in the `failed` state.

### Usage

    ec2_delete_vpc_peering_connection(DryRun, VpcPeeringConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_vpc_peering_connection_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_vpc_peering_connection_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
<td><p>[required] The ID of the VPC peering connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$delete_vpc_peering_connection(
      DryRun = TRUE|FALSE,
      VpcPeeringConnectionId = "string"
    )
