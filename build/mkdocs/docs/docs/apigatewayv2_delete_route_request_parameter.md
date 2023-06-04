<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_route_request_parameter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a route request parameter

### Description

Deletes a route request parameter.

### Usage

    apigatewayv2_delete_route_request_parameter(ApiId, RequestParameterKey,
      RouteId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_request_parameter_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_route_request_parameter_:_RequestParameterKey">RequestParameterKey</code></td>
<td><p>[required] The route request parameter key.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_delete_route_request_parameter_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_route_request_parameter(
      ApiId = "string",
      RequestParameterKey = "string",
      RouteId = "string"
    )
