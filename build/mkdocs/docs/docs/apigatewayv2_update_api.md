<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Api resource

### Description

Updates an Api resource.

### Usage

    apigatewayv2_update_api(ApiId, ApiKeySelectionExpression,
      CorsConfiguration, CredentialsArn, Description, DisableSchemaValidation,
      DisableExecuteApiEndpoint, Name, RouteKey, RouteSelectionExpression,
      Target, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_api_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_:_ApiKeySelectionExpression">ApiKeySelectionExpression</code></td>
<td><p>An API key selection expression. Supported only for WebSocket
APIs. See <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API
Key Selection Expressions</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_api_:_CorsConfiguration">CorsConfiguration</code></td>
<td><p>A CORS configuration. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_:_CredentialsArn">CredentialsArn</code></td>
<td><p>This property is part of quick create. It specifies the
credentials required for the integration, if any. For a Lambda
integration, three options are available. To specify an IAM Role for API
Gateway to assume, use the role's Amazon Resource Name (ARN). To require
that the caller's identity be passed through from the request, specify
arn:aws:iam::<em>:user/</em>. To use resource-based permissions on
supported AWS services, don't specify this parameter. Currently, this
property is not used for HTTP integrations. If provided, this value
replaces the credentials associated with the quick create integration.
Supported only for HTTP APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_api_:_Description">Description</code></td>
<td><p>The description of the API.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_:_DisableSchemaValidation">DisableSchemaValidation</code></td>
<td><p>Avoid validating models when creating a deployment. Supported
only for WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_api_:_DisableExecuteApiEndpoint">DisableExecuteApiEndpoint</code></td>
<td><p>Specifies whether clients can invoke your API by using the
default execute-api endpoint. By default, clients can invoke your API
with the default https://{api_id}.execute-api.{region}.amazonaws.com
endpoint. To require that clients use a custom domain name to invoke
your API, disable the default endpoint.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_update_api_:_Name">Name</code></td>
<td><p>The name of the API.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_update_api_:_RouteKey">RouteKey</code></td>
<td><p>This property is part of quick create. If not specified, the
route created using quick create is kept. Otherwise, this value replaces
the route key of the quick create route. Additional routes may still be
added after the API is updated. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_:_RouteSelectionExpression">RouteSelectionExpression</code></td>
<td><p>The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_update_api_:_Target">Target</code></td>
<td><p>This property is part of quick create. For HTTP integrations,
specify a fully qualified URL. For Lambda integrations, specify a
function ARN. The type of the integration will be HTTP_PROXY or
AWS_PROXY, respectively. The value provided updates the integration URI
and integration type. You can update a quick-created target, but you
can't remove it from an API. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_update_api_:_Version">Version</code></td>
<td><p>A version identifier for the API.</p></td>
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

    svc$update_api(
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
      CredentialsArn = "string",
      Description = "string",
      DisableSchemaValidation = TRUE|FALSE,
      DisableExecuteApiEndpoint = TRUE|FALSE,
      Name = "string",
      RouteKey = "string",
      RouteSelectionExpression = "string",
      Target = "string",
      Version = "string"
    )
