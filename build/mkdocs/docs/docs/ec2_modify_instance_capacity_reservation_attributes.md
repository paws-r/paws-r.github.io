<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_capacity_reservation_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the Capacity Reservation settings for a stopped instance

### Description

Modifies the Capacity Reservation settings for a stopped instance. Use
this action to configure an instance to target a specific Capacity
Reservation, run in any `open` Capacity Reservation with matching
attributes, or run On-Demand Instance capacity.

### Usage

    ec2_modify_instance_capacity_reservation_attributes(InstanceId,
      CapacityReservationSpecification, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_capacity_reservation_attributes_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance to be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_capacity_reservation_attributes_:_CapacityReservationSpecification">CapacityReservationSpecification</code></td>
<td><p>[required] Information about the Capacity Reservation targeting
option.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_capacity_reservation_attributes_:_DryRun">DryRun</code></td>
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

    svc$modify_instance_capacity_reservation_attributes(
      InstanceId = "string",
      CapacityReservationSpecification = list(
        CapacityReservationPreference = "open"|"none",
        CapacityReservationTarget = list(
          CapacityReservationId = "string",
          CapacityReservationResourceGroupArn = "string"
        )
      ),
      DryRun = TRUE|FALSE
    )
