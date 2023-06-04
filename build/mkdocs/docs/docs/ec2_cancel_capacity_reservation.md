<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to cancelled

### Description

Cancels the specified Capacity Reservation, releases the reserved
capacity, and changes the Capacity Reservation's state to `cancelled`.

Instances running in the reserved capacity continue running until you
stop them. Stopped instances that target the Capacity Reservation can no
longer launch. Modify these instances to either target a different
Capacity Reservation, launch On-Demand Instance capacity, or run in any
open Capacity Reservation that has matching attributes and sufficient
capacity.

### Usage

    ec2_cancel_capacity_reservation(CapacityReservationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_capacity_reservation_:_CapacityReservationId">CapacityReservationId</code></td>
<td><p>[required] The ID of the Capacity Reservation to be
cancelled.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_cancel_capacity_reservation_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$cancel_capacity_reservation(
      CapacityReservationId = "string",
      DryRun = TRUE|FALSE
    )
