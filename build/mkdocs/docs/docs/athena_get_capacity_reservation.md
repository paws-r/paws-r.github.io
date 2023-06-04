<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the capacity reservation with the specified name

### Description

Returns information about the capacity reservation with the specified
name.

### Usage

    athena_get_capacity_reservation(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_get_capacity_reservation_:_Name">Name</code></td>
<td><p>[required] The name of the capacity reservation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CapacityReservation = list(
        Name = "string",
        Status = "PENDING"|"ACTIVE"|"CANCELLING"|"CANCELLED"|"FAILED"|"UPDATE_PENDING",
        TargetDpus = 123,
        AllocatedDpus = 123,
        LastAllocation = list(
          Status = "PENDING"|"SUCCEEDED"|"FAILED",
          StatusMessage = "string",
          RequestTime = as.POSIXct(
            "2015-01-01"
          ),
          RequestCompletionTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        LastSuccessfulAllocationTime = as.POSIXct(
          "2015-01-01"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_capacity_reservation(
      Name = "string"
    )
