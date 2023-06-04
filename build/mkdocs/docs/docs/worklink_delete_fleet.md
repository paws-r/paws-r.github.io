<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_delete_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a fleet

### Description

Deletes a fleet. Prevents users from accessing previously associated
websites.

### Usage

    worklink_delete_fleet(FleetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_delete_fleet_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_fleet(
      FleetArn = "string"
    )
