<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Integration

### Description

Updates an Integration.

### Usage

    apigatewayv2_update_integration(ApiId, ConnectionId, ConnectionType,
      ContentHandlingStrategy, CredentialsArn, Description, IntegrationId,
      IntegrationMethod, IntegrationSubtype, IntegrationType, IntegrationUri,
      PassthroughBehavior, PayloadFormatVersion, RequestParameters,
      RequestTemplates, ResponseParameters, TemplateSelectionExpression,
      TimeoutInMillis, TlsConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_integration_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_ConnectionId">ConnectionId</code></td>
<td><p>The ID of the VPC link for a private integration. Supported only
for HTTP APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_ConnectionType">ConnectionType</code></td>
<td><p>The type of the network connection to the integration endpoint.
Specify INTERNET for connections through the public routable internet or
VPC_LINK for private connections between API Gateway and resources in a
VPC. The default value is INTERNET.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_ContentHandlingStrategy">ContentHandlingStrategy</code></td>
<td><p>Supported only for WebSocket APIs. Specifies how to handle
response payload content type conversions. Supported values are
CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p>
<p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.</p>
<p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
Base64-encoded string.</p>
<p>If this property is not defined, the response payload will be passed
through from the integration response to the route response or method
response without modification.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_CredentialsArn">CredentialsArn</code></td>
<td><p>Specifies the credentials required for the integration, if any.
For AWS integrations, three options are available. To specify an IAM
Role for API Gateway to assume, use the role's Amazon Resource Name
(ARN). To require that the caller's identity be passed through from the
request, specify the string arn:aws:iam::<em>:user/</em>. To use
resource-based permissions on supported AWS services, specify
null.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_Description">Description</code></td>
<td><p>The description of the integration</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_IntegrationMethod">IntegrationMethod</code></td>
<td><p>Specifies the integration's HTTP method type.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_IntegrationSubtype">IntegrationSubtype</code></td>
<td><p>Supported only for HTTP API AWS_PROXY integrations. Specifies the
AWS service action to invoke. To learn more, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration
subtype reference</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_IntegrationType">IntegrationType</code></td>
<td><p>The integration type of an integration. One of the following:</p>
<p>AWS: for integrating the route or method request with an AWS service
action, including the Lambda function-invoking action. With the Lambda
function-invoking action, this is referred to as the Lambda custom
integration. With any other AWS service action, this is known as AWS
integration. Supported only for WebSocket APIs.</p>
<p>AWS_PROXY: for integrating the route or method request with a Lambda
function or other AWS service action. This integration is also referred
to as a Lambda proxy integration.</p>
<p>HTTP: for integrating the route or method request with an HTTP
endpoint. This integration is also referred to as the HTTP custom
integration. Supported only for WebSocket APIs.</p>
<p>HTTP_PROXY: for integrating the route or method request with an HTTP
endpoint, with the client request passed through as-is. This is also
referred to as HTTP proxy integration. For HTTP API private
integrations, use an HTTP_PROXY integration.</p>
<p>MOCK: for integrating the route or method request with API Gateway as
a "loopback" endpoint without invoking any backend. Supported only for
WebSocket APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_IntegrationUri">IntegrationUri</code></td>
<td><p>For a Lambda integration, specify the URI of a Lambda
function.</p>
<p>For an HTTP integration, specify a fully-qualified URL.</p>
<p>For an HTTP API private integration, specify the ARN of an
Application Load Balancer listener, Network Load Balancer listener, or
AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map
service, API Gateway uses DiscoverInstances to identify resources. You
can use query parameters to target specific resources. To learn more,
see <a
href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>.
For private integrations, all resources must be owned by the same AWS
account.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_PassthroughBehavior">PassthroughBehavior</code></td>
<td><p>Specifies the pass-through behavior for incoming requests based
on the Content-Type header in the request, and the available mapping
templates specified as the requestTemplates property on the Integration
resource. There are three valid values: WHEN_NO_MATCH,
WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p>
<p>WHEN_NO_MATCH passes the request body for unmapped content types
through to the integration backend without transformation.</p>
<p>NEVER rejects unmapped content types with an HTTP 415 Unsupported
Media Type response.</p>
<p>WHEN_NO_TEMPLATES allows pass-through when the integration has no
content types mapped to templates. However, if there is at least one
content type defined, unmapped content types will be rejected with the
same HTTP 415 Unsupported Media Type response.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_PayloadFormatVersion">PayloadFormatVersion</code></td>
<td><p>Specifies the format of the payload sent to an integration.
Required for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_RequestParameters">RequestParameters</code></td>
<td><p>For WebSocket APIs, a key-value map specifying request parameters
that are passed from the method request to the backend. The key is an
integration request parameter name and the associated value is a method
request parameter value or static value that must be enclosed within
single quotes and pre-encoded as required by the backend. The method
request parameter value must match the pattern of
method.request.{location}.{name} , where {location} is querystring,
path, or header; and {name} must be a valid and unique method request
parameter name.</p>
<p>For HTTP API integrations with a specified integrationSubtype,
request parameters are a key-value map specifying parameters that are
passed to AWS_PROXY integrations. You can provide static values, or map
request data, stage variables, or context variables that are evaluated
at runtime. To learn more, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working
with AWS service integrations for HTTP APIs</a>.</p>
<p>For HTTP API integrations, without a specified integrationSubtype
request parameters are a key-value map specifying how to transform HTTP
requests before sending them to the backend. The key should follow the
pattern
\&lt;action\&gt;:\&lt;header|querystring|path\&gt;.\&lt;location\&gt;
where action can be append, overwrite or remove. For values, you can
provide static values, or map request data, stage variables, or context
variables that are evaluated at runtime. To learn more, see Transforming
API requests and responses.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_RequestTemplates">RequestTemplates</code></td>
<td><p>Represents a map of Velocity templates that are applied on the
request payload based on the value of the Content-Type header sent by
the client. The content type value is the key in this map, and the
template (as a String) is the value. Supported only for WebSocket
APIs.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_ResponseParameters">ResponseParameters</code></td>
<td><p>Supported only for HTTP APIs. You use response parameters to
transform the HTTP response from a backend integration before returning
the response to clients. Specify a key-value map from a selection key to
response parameters. The selection key must be a valid HTTP status code
within the range of 200-599. Response parameters are a key-value map.
The key must match pattern
\&lt;action\&gt;:\&lt;header\&gt;.\&lt;location\&gt; or
overwrite.statuscode. The action can be append, overwrite or remove. The
value can be a static value, or map to response data, stage variables,
or context variables that are evaluated at runtime. To learn more, see
<a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming
API requests and responses</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_TemplateSelectionExpression">TemplateSelectionExpression</code></td>
<td><p>The template selection expression for the integration.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_integration_:_TimeoutInMillis">TimeoutInMillis</code></td>
<td><p>Custom timeout between 50 and 29,000 milliseconds for WebSocket
APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default
timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP
APIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_integration_:_TlsConfig">TlsConfig</code></td>
<td><p>The TLS configuration for a private integration. If you specify a
TLS configuration, private integration traffic uses the HTTPS protocol.
Supported only for HTTP APIs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiGatewayManaged = TRUE|FALSE,
      ConnectionId = "string",
      ConnectionType = "INTERNET"|"VPC_LINK",
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      CredentialsArn = "string",
      Description = "string",
      IntegrationId = "string",
      IntegrationMethod = "string",
      IntegrationResponseSelectionExpression = "string",
      IntegrationSubtype = "string",
      IntegrationType = "AWS"|"HTTP"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
      IntegrationUri = "string",
      PassthroughBehavior = "WHEN_NO_MATCH"|"NEVER"|"WHEN_NO_TEMPLATES",
      PayloadFormatVersion = "string",
      RequestParameters = list(
        "string"
      ),
      RequestTemplates = list(
        "string"
      ),
      ResponseParameters = list(
        list(
          "string"
        )
      ),
      TemplateSelectionExpression = "string",
      TimeoutInMillis = 123,
      TlsConfig = list(
        ServerNameToVerify = "string"
      )
    )

### Request syntax

    svc$update_integration(
      ApiId = "string",
      ConnectionId = "string",
      ConnectionType = "INTERNET"|"VPC_LINK",
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      CredentialsArn = "string",
      Description = "string",
      IntegrationId = "string",
      IntegrationMethod = "string",
      IntegrationSubtype = "string",
      IntegrationType = "AWS"|"HTTP"|"MOCK"|"HTTP_PROXY"|"AWS_PROXY",
      IntegrationUri = "string",
      PassthroughBehavior = "WHEN_NO_MATCH"|"NEVER"|"WHEN_NO_TEMPLATES",
      PayloadFormatVersion = "string",
      RequestParameters = list(
        "string"
      ),
      RequestTemplates = list(
        "string"
      ),
      ResponseParameters = list(
        list(
          "string"
        )
      ),
      TemplateSelectionExpression = "string",
      TimeoutInMillis = 123,
      TlsConfig = list(
        ServerNameToVerify = "string"
      )
    )
