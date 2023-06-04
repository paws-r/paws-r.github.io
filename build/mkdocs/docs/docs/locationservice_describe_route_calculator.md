<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_route_calculator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the route calculator resource details

### Description

Retrieves the route calculator resource details.

### Usage

    locationservice_describe_route_calculator(CalculatorName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_route_calculator_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CalculatorArn = "string",
      CalculatorName = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      DataSource = "string",
      Description = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      Tags = list(
        "string"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_route_calculator(
      CalculatorName = "string"
    )
