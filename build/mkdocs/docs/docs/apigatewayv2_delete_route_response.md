<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_route_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a RouteResponse

### Description

Deletes a RouteResponse.

### Usage

    apigatewayv2_delete_route_response(ApiId, RouteId, RouteResponseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_response_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_route_response_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_response_:_RouteResponseId">RouteResponseId</code></td>
<td><p>[required] The route response ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route_response(
      ApiId = "string",
      RouteId = "string",
      RouteResponseId = "string"
    )
