<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Authorizer

### Description

Updates an Authorizer.

### Usage

    apigatewayv2_update_authorizer(ApiId, AuthorizerCredentialsArn,
      AuthorizerId, AuthorizerPayloadFormatVersion,
      AuthorizerResultTtlInSeconds, AuthorizerType, AuthorizerUri,
      EnableSimpleResponses, IdentitySource, IdentityValidationExpression,
      JwtConfiguration, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_authorizer_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerCredentialsArn">AuthorizerCredentialsArn</code></td>
<td><p>Specifies the required credentials as an IAM role for API Gateway
to invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use resource-based
permissions on the Lambda function, don't specify this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerId">AuthorizerId</code></td>
<td><p>[required] The authorizer identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerPayloadFormatVersion">AuthorizerPayloadFormatVersion</code></td>
<td><p>Specifies the format of the payload sent to an HTTP API Lambda
authorizer. Required for HTTP API Lambda authorizers. Supported values
are 1.0 and 2.0. To learn more, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working
with AWS Lambda authorizers for HTTP APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerResultTtlInSeconds">AuthorizerResultTtlInSeconds</code></td>
<td><p>The time to live (TTL) for cached authorizer results, in seconds.
If it equals 0, authorization caching is disabled. If it is greater than
0, API Gateway caches authorizer responses. The maximum value is 3600,
or 1 hour. Supported only for HTTP API Lambda authorizers.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerType">AuthorizerType</code></td>
<td><p>The authorizer type. Specify REQUEST for a Lambda function using
incoming request parameters. Specify JWT to use JSON Web Tokens
(supported only for HTTP APIs).</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_authorizer_:_AuthorizerUri">AuthorizerUri</code></td>
<td><p>The authorizer's Uniform Resource Identifier (URI). For REQUEST
authorizers, this must be a well-formed Lambda function URI, for
example,
arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations.
In general, the URI has this form:
arn:aws:apigateway:{region}:lambda:path/{service_api} , where {region}
is the same as the region hosting the Lambda function, path indicates
that the remaining substring in the URI should be treated as the path to
the resource, including the initial /. For Lambda functions, this is
usually of the form /2015-03-31/functions/[FunctionARN]/invocations.
Supported only for REQUEST authorizers.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_authorizer_:_EnableSimpleResponses">EnableSimpleResponses</code></td>
<td><p>Specifies whether a Lambda authorizer returns a response in a
simple format. By default, a Lambda authorizer must return an IAM
policy. If enabled, the Lambda authorizer can return a boolean value
instead of an IAM policy. Supported only for HTTP APIs. To learn more,
see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working
with AWS Lambda authorizers for HTTP APIs</a></p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_authorizer_:_IdentitySource">IdentitySource</code></td>
<td><p>The identity source for which authorization is requested.</p>
<p>For a REQUEST authorizer, this is optional. The value is a set of one
or more mapping expressions of the specified request parameters. The
identity source can be headers, query string parameters, stage
variables, and context parameters. For example, if an Auth header and a
Name query string parameter are defined as identity sources, this value
is route.request.header.Auth, route.request.querystring.Name for
WebSocket APIs. For HTTP APIs, use selection expressions prefixed with
$, for example, $request.header.Auth, $request.querystring.Name. These
parameters are used to perform runtime validation for Lambda-based
authorizers by verifying all of the identity-related request parameters
are present in the request, not null, and non-empty. Only when this is
true does the authorizer invoke the authorizer Lambda function.
Otherwise, it returns a 401 Unauthorized response without calling the
Lambda function. For HTTP APIs, identity sources are also used as the
cache key when caching is enabled. To learn more, see <a
href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working
with AWS Lambda authorizers for HTTP APIs</a>.</p>
<p>For JWT, a single entry that specifies where to extract the JSON Web
Token (JWT) from inbound requests. Currently only header-based and query
parameter-based selections are supported, for example
$request.header.Authorization.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_authorizer_:_IdentityValidationExpression">IdentityValidationExpression</code></td>
<td><p>This parameter is not used.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_authorizer_:_JwtConfiguration">JwtConfiguration</code></td>
<td><p>Represents the configuration of a JWT authorizer. Required for
the JWT authorizer type. Supported only for HTTP APIs.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_update_authorizer_:_Name">Name</code></td>
<td><p>The name of the authorizer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizerCredentialsArn = "string",
      AuthorizerId = "string",
      AuthorizerPayloadFormatVersion = "string",
      AuthorizerResultTtlInSeconds = 123,
      AuthorizerType = "REQUEST"|"JWT",
      AuthorizerUri = "string",
      EnableSimpleResponses = TRUE|FALSE,
      IdentitySource = list(
        "string"
      ),
      IdentityValidationExpression = "string",
      JwtConfiguration = list(
        Audience = list(
          "string"
        ),
        Issuer = "string"
      ),
      Name = "string"
    )

### Request syntax

    svc$update_authorizer(
      ApiId = "string",
      AuthorizerCredentialsArn = "string",
      AuthorizerId = "string",
      AuthorizerPayloadFormatVersion = "string",
      AuthorizerResultTtlInSeconds = 123,
      AuthorizerType = "REQUEST"|"JWT",
      AuthorizerUri = "string",
      EnableSimpleResponses = TRUE|FALSE,
      IdentitySource = list(
        "string"
      ),
      IdentityValidationExpression = "string",
      JwtConfiguration = list(
        Audience = list(
          "string"
        ),
        Issuer = "string"
      ),
      Name = "string"
    )
