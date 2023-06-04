<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_route_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a RouteResponse

### Description

Gets a RouteResponse.

### Usage

    apigatewayv2_get_route_response(ApiId, RouteId, RouteResponseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_route_response_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_route_response_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_route_response_:_RouteResponseId">RouteResponseId</code></td>
<td><p>[required] The route response ID.</p></td>
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

    svc$get_route_response(
      ApiId = "string",
      RouteId = "string",
      RouteResponseId = "string"
    )
