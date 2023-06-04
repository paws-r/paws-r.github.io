<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_fleet_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details

### Description

Provides basic information for the specified fleet, excluding identity
provider, networking, and device configuration details.

### Usage

    worklink_describe_fleet_metadata(FleetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_describe_fleet_metadata_:_FleetArn">FleetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
      FleetName = "string",
      DisplayName = "string",
      OptimizeForEndUserLocation = TRUE|FALSE,
      CompanyCode = "string",
      FleetStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED"|"FAILED_TO_CREATE"|"FAILED_TO_DELETE",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_fleet_metadata(
      FleetArn = "string"
    )
