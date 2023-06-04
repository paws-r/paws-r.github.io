<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_associate_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified fleet with the specified stack

### Description

Associates the specified fleet with the specified stack.

### Usage

    appstream_associate_fleet(FleetName, StackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_associate_fleet_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_associate_fleet_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_fleet(
      FleetName = "string",
      StackName = "string"
    )
