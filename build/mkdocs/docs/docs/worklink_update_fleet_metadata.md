<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_fleet_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates fleet metadata, such as DisplayName

### Description

Updates fleet metadata, such as DisplayName.

### Usage

    worklink_update_fleet_metadata(FleetArn, DisplayName,
      OptimizeForEndUserLocation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_fleet_metadata_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_fleet_metadata_:_DisplayName">DisplayName</code></td>
<td><p>The fleet name to display. The existing DisplayName is unset if
null is passed.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_update_fleet_metadata_:_OptimizeForEndUserLocation">OptimizeForEndUserLocation</code></td>
<td><p>The option to optimize for better performance by routing traffic
through the closest AWS Region to users, which may be outside of your
home Region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_fleet_metadata(
      FleetArn = "string",
      DisplayName = "string",
      OptimizeForEndUserLocation = TRUE|FALSE
    )
