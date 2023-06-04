<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_import_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports an API

### Description

Imports an API.

### Usage

    apigatewayv2_import_api(Basepath, Body, FailOnWarnings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_import_api_:_Basepath">Basepath</code></td>
<td><p>Specifies how to interpret the base path of the API during
import. Valid values are ignore, prepend, and split. The default value
is ignore. To learn more, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set
the OpenAPI basePath Property</a>. Supported only for HTTP
APIs.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_import_api_:_Body">Body</code></td>
<td><p>[required] The OpenAPI definition. Supported only for HTTP
APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_import_api_:_FailOnWarnings">FailOnWarnings</code></td>
<td><p>Specifies whether to rollback the API creation when a warning is
encountered. By default, API creation continues if a warning is
encountered.</p></td>
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

    svc$import_api(
      Basepath = "string",
      Body = "string",
      FailOnWarnings = TRUE|FALSE
    )
