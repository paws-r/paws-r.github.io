<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Routes for an API

### Description

Gets the Routes for an API.

### Usage

    apigatewayv2_get_routes(ApiId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_routes_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_routes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_get_routes_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_routes(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string"
    )
