<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_disassociate_application_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified application from the fleet

### Description

Disassociates the specified application from the fleet.

### Usage

    appstream_disassociate_application_fleet(FleetName, ApplicationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_disassociate_application_fleet_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_disassociate_application_fleet_:_ApplicationArn">ApplicationArn</code></td>
<td><p>[required] The ARN of the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_application_fleet(
      FleetName = "string",
      ApplicationArn = "string"
    )
