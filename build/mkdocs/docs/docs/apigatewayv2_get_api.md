<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Api resource

### Description

Gets an Api resource.

### Usage

    apigatewayv2_get_api(ApiId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_api_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$get_api(
      ApiId = "string"
    )
