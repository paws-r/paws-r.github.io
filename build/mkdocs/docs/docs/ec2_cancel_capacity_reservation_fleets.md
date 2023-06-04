<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_capacity_reservation_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels one or more Capacity Reservation Fleets

### Description

Cancels one or more Capacity Reservation Fleets. When you cancel a
Capacity Reservation Fleet, the following happens:

-   The Capacity Reservation Fleet's status changes to `cancelled`.

-   The individual Capacity Reservations in the Fleet are cancelled.
    Instances running in the Capacity Reservations at the time of
    cancelling the Fleet continue to run in shared capacity.

-   The Fleet stops creating new Capacity Reservations.

### Usage

    ec2_cancel_capacity_reservation_fleets(DryRun,
      CapacityReservationFleetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_capacity_reservation_fleets_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_cancel_capacity_reservation_fleets_:_CapacityReservationFleetIds">CapacityReservationFleetIds</code></td>
<td><p>[required] The IDs of the Capacity Reservation Fleets to
cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulFleetCancellations = list(
        list(
          CurrentFleetState = "submitted"|"modifying"|"active"|"partially_fulfilled"|"expiring"|"expired"|"cancelling"|"cancelled"|"failed",
          PreviousFleetState = "submitted"|"modifying"|"active"|"partially_fulfilled"|"expiring"|"expired"|"cancelling"|"cancelled"|"failed",
          CapacityReservationFleetId = "string"
        )
      ),
      FailedFleetCancellations = list(
        list(
          CapacityReservationFleetId = "string",
          CancelCapacityReservationFleetError = list(
            Code = "string",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$cancel_capacity_reservation_fleets(
      DryRun = TRUE|FALSE,
      CapacityReservationFleetIds = list(
        "string"
      )
    )
