<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_create_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a fleet

### Description

Creates a fleet. A fleet consists of resources and the configuration
that delivers associated websites to authorized users who download and
set up the Amazon WorkLink app.

### Usage

    worklink_create_fleet(FleetName, DisplayName,
      OptimizeForEndUserLocation, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_create_fleet_:_FleetName">FleetName</code></td>
<td><p>[required] A unique name for the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_create_fleet_:_DisplayName">DisplayName</code></td>
<td><p>The fleet name to display.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_create_fleet_:_OptimizeForEndUserLocation">OptimizeForEndUserLocation</code></td>
<td><p>The option to optimize for better performance by routing traffic
through the closest AWS Region to users, which may be outside of your
home Region.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_create_fleet_:_Tags">Tags</code></td>
<td><p>The tags to add to the resource. A tag is a key-value
pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FleetArn = "string"
    )

### Request syntax

    svc$create_fleet(
      FleetName = "string",
      DisplayName = "string",
      OptimizeForEndUserLocation = TRUE|FALSE,
      Tags = list(
        "string"
      )
    )
