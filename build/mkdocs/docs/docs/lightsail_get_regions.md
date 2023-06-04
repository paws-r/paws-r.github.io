<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all valid regions for Amazon Lightsail

### Description

Returns a list of all valid regions for Amazon Lightsail. Use the
`⁠include availability zones⁠` parameter to also return the Availability
Zones in a region.

### Usage

    lightsail_get_regions(includeAvailabilityZones,
      includeRelationalDatabaseAvailabilityZones)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_regions_:_includeAvailabilityZones">includeAvailabilityZones</code></td>
<td><p>A Boolean value indicating whether to also include Availability
Zones in your get regions request. Availability Zones are indicated with
a letter: e.g., <code
style="white-space: pre;">⁠us-east-2a⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_regions_:_includeRelationalDatabaseAvailabilityZones">includeRelationalDatabaseAvailabilityZones</code></td>
<td><p>A Boolean value indicating whether to also include Availability
Zones for databases in your get regions request. Availability Zones are
indicated with a letter (e.g., <code
style="white-space: pre;">⁠us-east-2a⁠</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      regions = list(
        list(
          continentCode = "string",
          description = "string",
          displayName = "string",
          name = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1",
          availabilityZones = list(
            list(
              zoneName = "string",
              state = "string"
            )
          ),
          relationalDatabaseAvailabilityZones = list(
            list(
              zoneName = "string",
              state = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_regions(
      includeAvailabilityZones = TRUE|FALSE,
      includeRelationalDatabaseAvailabilityZones = TRUE|FALSE
    )
