<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_cancel_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the capacity reservation with the specified name

### Description

Cancels the capacity reservation with the specified name.

### Usage

    athena_cancel_capacity_reservation(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_cancel_capacity_reservation_:_Name">Name</code></td>
<td><p>[required] The name of the capacity reservation to
cancel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_capacity_reservation(
      Name = "string"
    )
