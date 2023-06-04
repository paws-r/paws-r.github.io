<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_place_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the place index resource details

### Description

Retrieves the place index resource details.

### Usage

    locationservice_describe_place_index(IndexName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_place_index_:_IndexName">IndexName</code></td>
<td><p>[required] The name of the place index resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      DataSource = "string",
      DataSourceConfiguration = list(
        IntendedUse = "SingleUse"|"Storage"
      ),
      Description = "string",
      IndexArn = "string",
      IndexName = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_place_index(
      IndexName = "string"
    )
