<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a Route

### Description

Gets a Route.

### Usage

    apigatewayv2_get_route(ApiId, RouteId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_route_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_get_route_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiGatewayManaged = TRUE|FALSE,
      ApiKeyRequired = TRUE|FALSE,
      AuthorizationScopes = list(
        "string"
      ),
      AuthorizationType = "NONE"|"AWS_IAM"|"CUSTOM"|"JWT",
      AuthorizerId = "string",
      ModelSelectionExpression = "string",
      OperationName = "string",
      RequestModels = list(
        "string"
      ),
      RequestParameters = list(
        list(
          Required = TRUE|FALSE
        )
      ),
      RouteId = "string",
      RouteKey = "string",
      RouteResponseSelectionExpression = "string",
      Target = "string"
    )

### Request syntax

    svc$get_route(
      ApiId = "string",
      RouteId = "string"
    )
