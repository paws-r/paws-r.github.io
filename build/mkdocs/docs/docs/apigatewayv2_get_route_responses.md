<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_route_responses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the RouteResponses for a Route

### Description

Gets the RouteResponses for a Route.

### Usage

    apigatewayv2_get_route_responses(ApiId, MaxResults, NextToken, RouteId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_get_route_responses_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_route_responses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_get_route_responses_:_NextToken">NextToken</code></td>
<td><p>The next page of elements from this collection. Not valid for the
last element of the collection.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_get_route_responses_:_RouteId">RouteId</code></td>
<td><p>[required] The route ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_route_responses(
      ApiId = "string",
      MaxResults = "string",
      NextToken = "string",
      RouteId = "string"
    )
