<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_map</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the map resource details

### Description

Retrieves the map resource details.

### Usage

    locationservice_describe_map(MapName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_map_:_MapName">MapName</code></td>
<td><p>[required] The name of the map resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Configuration = list(
        Style = "string"
      ),
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      DataSource = "string",
      Description = "string",
      MapArn = "string",
      MapName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_map(
      MapName = "string"
    )
