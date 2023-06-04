<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reject_vpc_peering_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rejects a VPC peering connection request

### Description

Rejects a VPC peering connection request. The VPC peering connection
must be in the `pending-acceptance` state. Use the
`describe_vpc_peering_connections` request to view your outstanding VPC
peering connection requests. To delete an active VPC peering connection,
or to delete a VPC peering connection request that you initiated, use
`delete_vpc_peering_connection`.

### Usage

    ec2_reject_vpc_peering_connection(DryRun, VpcPeeringConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reject_vpc_peering_connection_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reject_vpc_peering_connection_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
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

    svc$reject_vpc_peering_connection(
      DryRun = TRUE|FALSE,
      VpcPeeringConnectionId = "string"
    )
