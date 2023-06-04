<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_api</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Api resource

### Description

Creates an Api resource.

### Usage

    apigatewayv2_create_api(ApiKeySelectionExpression, CorsConfiguration,
      CredentialsArn, Description, DisableSchemaValidation,
      DisableExecuteApiEndpoint, Name, ProtocolType, RouteKey,
      RouteSelectionExpression, Tags, Target, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_create_api_:_ApiKeySelectionExpression">ApiKeySelectionExpression</code></td>
<td><p>An API key selection expression. Supported only for WebSocket
APIs. See <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API
Key Selection Expressions</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_api_:_CorsConfiguration">CorsConfiguration</code></td>
<td><p>A CORS configuration. Supported only for HTTP APIs. See <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html">Configuring
CORS</a> for more information.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_api_:_CredentialsArn">CredentialsArn</code></td>
<td><p>This property is part of quick create. It specifies the
credentials required for the integration, if any. For a Lambda
integration, three options are available. To specify an IAM Role for API
Gateway to assume, use the role's Amazon Resource Name (ARN). To require
that the caller's identity be passed through from the request, specify
arn:aws:iam::<em>:user/</em>. To use resource-based permissions on
supported AWS services, specify null. Currently, this property is not
used for HTTP integrations. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_api_:_Description">Description</code></td>
<td><p>The description of the API.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_api_:_DisableSchemaValidation">DisableSchemaValidation</code></td>
<td><p>Avoid validating models when creating a deployment. Supported
only for WebSocket APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_api_:_DisableExecuteApiEndpoint">DisableExecuteApiEndpoint</code></td>
<td><p>Specifies whether clients can invoke your API by using the
default execute-api endpoint. By default, clients can invoke your API
with the default https://{api_id}.execute-api.{region}.amazonaws.com
endpoint. To require that clients use a custom domain name to invoke
your API, disable the default endpoint.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_create_api_:_Name">Name</code></td>
<td><p>[required] The name of the API.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_api_:_ProtocolType">ProtocolType</code></td>
<td><p>[required] The API protocol.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_create_api_:_RouteKey">RouteKey</code></td>
<td><p>This property is part of quick create. If you don't specify a
routeKey, a default route of $default is created. The $default route
acts as a catch-all for any request made to your API, for a particular
stage. The $default route key can't be modified. You can add routes
after creating the API, and you can update the route keys of additional
routes. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_api_:_RouteSelectionExpression">RouteSelectionExpression</code></td>
<td><p>The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_create_api_:_Tags">Tags</code></td>
<td><p>The collection of tags. Each tag element is associated with a
given resource.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_create_api_:_Target">Target</code></td>
<td><p>This property is part of quick create. Quick create produces an
API with an integration, a default catch-all route, and a default stage
which is configured to automatically deploy changes. For HTTP
integrations, specify a fully qualified URL. For Lambda integrations,
specify a function ARN. The type of the integration will be HTTP_PROXY
or AWS_PROXY, respectively. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_create_api_:_Version">Version</code></td>
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

    svc$create_api(
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
      ProtocolType = "WEBSOCKET"|"HTTP",
      RouteKey = "string",
      RouteSelectionExpression = "string",
      Tags = list(
        "string"
      ),
      Target = "string",
      Version = "string"
    )
