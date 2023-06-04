<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_delete_route_calculator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a route calculator resource from your Amazon Web Services account

### Description

Deletes a route calculator resource from your Amazon Web Services
account.

This operation deletes the resource permanently.

### Usage

    locationservice_delete_route_calculator(CalculatorName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_delete_route_calculator_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route_calculator(
      CalculatorName = "string"
    )
