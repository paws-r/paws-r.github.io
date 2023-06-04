<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_stop_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the specified fleet

### Description

Stops the specified fleet.

### Usage

    appstream_stop_fleet(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_stop_fleet_:_Name">Name</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_fleet(
      Name = "string"
    )
