<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Route

### Description

Deletes a Route.

### Usage

    apigatewayv2_delete_route(ApiId, RouteId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_delete_route_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_delete_route_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route(
      ApiId = "string",
      RouteId = "string"
    )
