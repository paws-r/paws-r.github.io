<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_associate_application_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified application with the specified fleet

### Description

Associates the specified application with the specified fleet. This is
only supported for Elastic fleets.

### Usage

    appstream_associate_application_fleet(FleetName, ApplicationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_associate_application_fleet_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_associate_application_fleet_:_ApplicationArn">ApplicationArn</code></td>
<td><p>[required] The ARN of the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationFleetAssociation = list(
        FleetName = "string",
        ApplicationArn = "string"
      )
    )

### Request syntax

    svc$associate_application_fleet(
      FleetName = "string",
      ApplicationArn = "string"
    )
