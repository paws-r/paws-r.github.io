<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_route_calculator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties for a given route calculator resource

### Description

Updates the specified properties for a given route calculator resource.

### Usage

    locationservice_update_route_calculator(CalculatorName, Description,
      PricingPlan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_route_calculator_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_route_calculator_:_Description">Description</code></td>
<td><p>Updates the description for the route calculator
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_route_calculator_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CalculatorArn = "string",
      CalculatorName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_route_calculator(
      CalculatorName = "string",
      Description = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement"
    )
