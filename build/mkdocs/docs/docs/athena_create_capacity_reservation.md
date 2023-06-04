<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_capacity_reservation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a capacity reservation with the specified name and number of requested data processing units

### Description

Creates a capacity reservation with the specified name and number of
requested data processing units.

### Usage

    athena_create_capacity_reservation(TargetDpus, Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_create_capacity_reservation_:_TargetDpus">TargetDpus</code></td>
<td><p>[required] The number of requested data processing
units.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_capacity_reservation_:_Name">Name</code></td>
<td><p>[required] The name of the capacity reservation to
create.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_create_capacity_reservation_:_Tags">Tags</code></td>
<td><p>The tags for the capacity reservation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_capacity_reservation(
      TargetDpus = 123,
      Name = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
