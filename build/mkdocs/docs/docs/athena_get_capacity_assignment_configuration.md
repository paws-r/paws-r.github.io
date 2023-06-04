<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_capacity_assignment_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the capacity assignment configuration for a capacity reservation, if one exists

### Description

Gets the capacity assignment configuration for a capacity reservation,
if one exists.

### Usage

    athena_get_capacity_assignment_configuration(CapacityReservationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_capacity_assignment_configuration_:_CapacityReservationName">CapacityReservationName</code></td>
<td><p>[required] The name of the capacity reservation to retrieve the
capacity assignment configuration for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CapacityAssignmentConfiguration = list(
        CapacityReservationName = "string",
        CapacityAssignments = list(
          list(
            WorkGroupNames = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_capacity_assignment_configuration(
      CapacityReservationName = "string"
    )
