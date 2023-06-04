<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_capacity_reservation_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a Capacity Reservation Fleet

### Description

Modifies a Capacity Reservation Fleet.

When you modify the total target capacity of a Capacity Reservation
Fleet, the Fleet automatically creates new Capacity Reservations, or
modifies or cancels existing Capacity Reservations in the Fleet to meet
the new total target capacity. When you modify the end date for the
Fleet, the end dates for all of the individual Capacity Reservations in
the Fleet are updated accordingly.

### Usage

    ec2_modify_capacity_reservation_fleet(CapacityReservationFleetId,
      TotalTargetCapacity, EndDate, DryRun, RemoveEndDate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_fleet_:_CapacityReservationFleetId">CapacityReservationFleetId</code></td>
<td><p>[required] The ID of the Capacity Reservation Fleet to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_capacity_reservation_fleet_:_TotalTargetCapacity">TotalTargetCapacity</code></td>
<td><p>The total number of capacity units to be reserved by the Capacity
Reservation Fleet. This value, together with the instance type weights
that you assign to each instance type used by the Fleet determine the
number of instances for which the Fleet reserves capacity. Both values
are based on units that make sense for your workload. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity">Total
target capacity</a> in the Amazon EC2 User Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_fleet_:_EndDate">EndDate</code></td>
<td><p>The date and time at which the Capacity Reservation Fleet
expires. When the Capacity Reservation Fleet expires, its state changes
to <code>expired</code> and all of the Capacity Reservations in the
Fleet expire.</p>
<p>The Capacity Reservation Fleet expires within an hour after the
specified time. For example, if you specify <code>5/31/2019</code>,
<code>13:30:55</code>, the Capacity Reservation Fleet is guaranteed to
expire between <code>13:30:55</code> and <code>14:30:55</code> on
<code>5/31/2019</code>.</p>
<p>You can't specify <strong>EndDate</strong> and
<strong>RemoveEndDate</strong> in the same request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_capacity_reservation_fleet_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_fleet_:_RemoveEndDate">RemoveEndDate</code></td>
<td><p>Indicates whether to remove the end date from the Capacity
Reservation Fleet. If you remove the end date, the Capacity Reservation
Fleet does not expire and it remains active until you explicitly cancel
it using the <strong>CancelCapacityReservationFleet</strong> action.</p>
<p>You can't specify <strong>RemoveEndDate</strong> and
<strong>EndDate</strong> in the same request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_capacity_reservation_fleet(
      CapacityReservationFleetId = "string",
      TotalTargetCapacity = 123,
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      DryRun = TRUE|FALSE,
      RemoveEndDate = TRUE|FALSE
    )
