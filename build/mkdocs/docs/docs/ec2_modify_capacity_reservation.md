<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a Capacity Reservation's capacity and the conditions under which it is to be released

### Description

Modifies a Capacity Reservation's capacity and the conditions under
which it is to be released. You cannot change a Capacity Reservation's
instance type, EBS optimization, instance store settings, platform,
Availability Zone, or instance eligibility. If you need to modify any of
these attributes, we recommend that you cancel the Capacity Reservation,
and then create a new one with the required attributes.

### Usage

    ec2_modify_capacity_reservation(CapacityReservationId, InstanceCount,
      EndDate, EndDateType, Accept, DryRun, AdditionalInfo)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_:_CapacityReservationId">CapacityReservationId</code></td>
<td><p>[required] The ID of the Capacity Reservation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_capacity_reservation_:_InstanceCount">InstanceCount</code></td>
<td><p>The number of instances for which to reserve capacity. The number
of instances can't be increased or decreased by more than
<code>1000</code> in a single request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_:_EndDate">EndDate</code></td>
<td><p>The date and time at which the Capacity Reservation expires. When
a Capacity Reservation expires, the reserved capacity is released and
you can no longer launch instances into it. The Capacity Reservation's
state changes to <code>expired</code> when it reaches its end date and
time.</p>
<p>The Capacity Reservation is cancelled within an hour from the
specified time. For example, if you specify 5/31/2019, 13:30:55, the
Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55
on 5/31/2019.</p>
<p>You must provide an <code>EndDate</code> value if
<code>EndDateType</code> is <code>limited</code>. Omit
<code>EndDate</code> if <code>EndDateType</code> is
<code>unlimited</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_capacity_reservation_:_EndDateType">EndDateType</code></td>
<td><p>Indicates the way in which the Capacity Reservation ends. A
Capacity Reservation can have one of the following end types:</p>
<ul>
<li><p><code>unlimited</code> - The Capacity Reservation remains active
until you explicitly cancel it. Do not provide an <code>EndDate</code>
value if <code>EndDateType</code> is <code>unlimited</code>.</p></li>
<li><p><code>limited</code> - The Capacity Reservation expires
automatically at a specified date and time. You must provide an
<code>EndDate</code> value if <code>EndDateType</code> is
<code>limited</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_:_Accept">Accept</code></td>
<td><p>Reserved. Capacity Reservations you have created are accepted by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_capacity_reservation_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_capacity_reservation_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_capacity_reservation(
      CapacityReservationId = "string",
      InstanceCount = 123,
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDateType = "unlimited"|"limited",
      Accept = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      AdditionalInfo = "string"
    )
