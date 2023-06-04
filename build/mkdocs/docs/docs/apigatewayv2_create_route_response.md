<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_route_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a RouteResponse for a Route

### Description

Creates a RouteResponse for a Route.

### Usage

    apigatewayv2_create_route_response(ApiId, ModelSelectionExpression,
      ResponseModels, ResponseParameters, RouteId, RouteResponseKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_create_route_response_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_route_response_:_ModelSelectionExpression">ModelSelectionExpression</code></td>
<td><p>The model selection expression for the route response. Supported
only for WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_route_response_:_ResponseModels">ResponseModels</code></td>
<td><p>The response models for the route response.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_route_response_:_ResponseParameters">ResponseParameters</code></td>
<td><p>The route response parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_route_response_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_route_response_:_RouteResponseKey">RouteResponseKey</code></td>
<td><p>[required] The route response key.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelSelectionExpression = "string",
      ResponseModels = list(
        "string"
      ),
      ResponseParameters = list(
        list(
          Required = TRUE|FALSE
        )
      ),
      RouteResponseId = "string",
      RouteResponseKey = "string"
    )

### Request syntax

    svc$create_route_response(
      ApiId = "string",
      ModelSelectionExpression = "string",
      ResponseModels = list(
        "string"
      ),
      ResponseParameters = list(
        list(
          Required = TRUE|FALSE
        )
      ),
      RouteId = "string",
      RouteResponseKey = "string"
    )
