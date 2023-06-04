<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_subnet_cidr_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a subnet CIDR reservation

### Description

Deletes a subnet CIDR reservation.

### Usage

    ec2_delete_subnet_cidr_reservation(SubnetCidrReservationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_subnet_cidr_reservation_:_SubnetCidrReservationId">SubnetCidrReservationId</code></td>
<td><p>[required] The ID of the subnet CIDR reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_subnet_cidr_reservation_:_DryRun">DryRun</code></td>
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
      DeletedSubnetCidrReservation = list(
        SubnetCidrReservationId = "string",
        SubnetId = "string",
        Cidr = "string",
        ReservationType = "prefix"|"explicit",
        OwnerId = "string",
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_subnet_cidr_reservation(
      SubnetCidrReservationId = "string",
      DryRun = TRUE|FALSE
    )
