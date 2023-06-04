<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_put_capacity_assignment_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts a new capacity assignment configuration for a specified capacity reservation

### Description

Puts a new capacity assignment configuration for a specified capacity
reservation. If a capacity assignment configuration already exists for
the capacity reservation, replaces the existing capacity assignment
configuration.

### Usage

    athena_put_capacity_assignment_configuration(CapacityReservationName,
      CapacityAssignments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_put_capacity_assignment_configuration_:_CapacityReservationName">CapacityReservationName</code></td>
<td><p>[required] The name of the capacity reservation to put a capacity
assignment configuration for.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_put_capacity_assignment_configuration_:_CapacityAssignments">CapacityAssignments</code></td>
<td><p>[required] The list of assignments for the capacity assignment
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_capacity_assignment_configuration(
      CapacityReservationName = "string",
      CapacityAssignments = list(
        list(
          WorkGroupNames = list(
            "string"
          )
        )
      )
    )
