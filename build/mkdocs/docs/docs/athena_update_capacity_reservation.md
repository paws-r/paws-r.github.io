<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the number of requested data processing units for the capacity reservation with the specified name

### Description

Updates the number of requested data processing units for the capacity
reservation with the specified name.

### Usage

    athena_update_capacity_reservation(TargetDpus, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_update_capacity_reservation_:_TargetDpus">TargetDpus</code></td>
<td><p>[required] The new number of requested data processing
units.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_update_capacity_reservation_:_Name">Name</code></td>
<td><p>[required] The name of the capacity reservation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_capacity_reservation(
      TargetDpus = 123,
      Name = "string"
    )
