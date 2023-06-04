<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_apis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a collection of Api resources

### Description

Gets a collection of Api resources.

### Usage

    apigatewayv2_get_apis(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_apis_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of elements to be returned for this
resource.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_get_apis_:_NextToken">NextToken</code></td>
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
          ApiEndpoint = "string",
          ApiGatewayManaged = TRUE|FALSE,
          ApiId = "string",
          ApiKeySelectionExpression = "string",
          CorsConfiguration = list(
            AllowCredentials = TRUE|FALSE,
            AllowHeaders = list(
              "string"
            ),
            AllowMethods = list(
              "string"
            ),
            AllowOrigins = list(
              "string"
            ),
            ExposeHeaders = list(
              "string"
            ),
            MaxAge = 123
          ),
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          DisableSchemaValidation = TRUE|FALSE,
          DisableExecuteApiEndpoint = TRUE|FALSE,
          ImportInfo = list(
            "string"
          ),
          Name = "string",
          ProtocolType = "WEBSOCKET"|"HTTP",
          RouteSelectionExpression = "string",
          Tags = list(
            "string"
          ),
          Version = "string",
          Warnings = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_apis(
      MaxResults = "string",
      NextToken = "string"
    )
