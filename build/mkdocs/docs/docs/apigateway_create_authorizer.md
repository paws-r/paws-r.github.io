<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new Authorizer resource to an existing RestApi resource

### Description

Adds a new Authorizer resource to an existing RestApi resource.

### Usage

    apigateway_create_authorizer(restApiId, name, type, providerARNs,
      authType, authorizerUri, authorizerCredentials, identitySource,
      identityValidationExpression, authorizerResultTtlInSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_authorizer_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_authorizer_:_name">name</code></td>
<td><p>[required] The name of the authorizer.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_create_authorizer_:_type">type</code></td>
<td><p>[required] The authorizer type. Valid values are
<code>TOKEN</code> for a Lambda function using a single authorization
token submitted in a custom header, <code>REQUEST</code> for a Lambda
function using incoming request parameters, and
<code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user
pool.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_authorizer_:_providerARNs">providerARNs</code></td>
<td><p>A list of the Amazon Cognito user pool ARNs for the
<code>COGNITO_USER_POOLS</code> authorizer. Each element is of this
format:
<code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>.
For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not
defined.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_authorizer_:_authType">authType</code></td>
<td><p>Optional customer-defined field, used in OpenAPI imports and
exports without functional impact.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_authorizer_:_authorizerUri">authorizerUri</code></td>
<td><p>Specifies the authorizer's Uniform Resource Identifier (URI). For
<code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a
well-formed Lambda function URI, for example, <code
style="white-space: pre;">⁠arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations⁠</code>.
In general, the URI has this form
<code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>,
where <code>{region}</code> is the same as the region hosting the Lambda
function, <code>path</code> indicates that the remaining substring in
the URI should be treated as the path to the resource, including the
initial <code>/</code>. For Lambda functions, this is usually of the
form <code
style="white-space: pre;">⁠/2015-03-31/functions/[FunctionARN]/invocations⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_authorizer_:_authorizerCredentials">authorizerCredentials</code></td>
<td><p>Specifies the required credentials as an IAM role for API Gateway
to invoke the authorizer. To specify an IAM role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To use resource-based
permissions on the Lambda function, specify null.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_authorizer_:_identitySource">identitySource</code></td>
<td><p>The identity source for which authorization is requested. For a
<code>TOKEN</code> or <code>COGNITO_USER_POOLS</code> authorizer, this
is required and specifies the request header mapping expression for the
custom header holding the authorization token submitted by the client.
For example, if the token header name is <code>Auth</code>, the header
mapping expression is <code>method.request.header.Auth</code>. For the
<code>REQUEST</code> authorizer, this is required when authorization
caching is enabled. The value is a comma-separated string of one or more
mapping expressions of the specified request parameters. For example, if
an <code>Auth</code> header, a <code>Name</code> query string parameter
are defined as identity sources, this value is <code
style="white-space: pre;">⁠method.request.header.Auth, method.request.querystring.Name⁠</code>.
These parameters will be used to derive the authorization caching key
and to perform runtime validation of the <code>REQUEST</code> authorizer
by verifying all of the identity-related request parameters are present,
not null and non-empty. Only when this is true does the authorizer
invoke the authorizer Lambda function, otherwise, it returns a 401
Unauthorized response without calling the Lambda function. The valid
value is a string of comma-separated mapping expressions of the
specified request parameters. When the authorization caching is not
enabled, this property is optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_authorizer_:_identityValidationExpression">identityValidationExpression</code></td>
<td><p>A validation expression for the incoming identity token. For
<code>TOKEN</code> authorizers, this value is a regular expression. For
<code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the
<code>aud</code> field of the incoming token from the client against the
specified regular expression. It will invoke the authorizer's Lambda
function when there is a match. Otherwise, it will return a 401
Unauthorized response without calling the Lambda function. The
validation expression does not apply to the <code>REQUEST</code>
authorizer.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_authorizer_:_authorizerResultTtlInSeconds">authorizerResultTtlInSeconds</code></td>
<td><p>The TTL in seconds of cached authorizer results. If it equals 0,
authorization caching is disabled. If it is greater than 0, API Gateway
will cache authorizer responses. If this field is not set, the default
value is 300. The maximum value is 3600, or 1 hour.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      type = "TOKEN"|"REQUEST"|"COGNITO_USER_POOLS",
      providerARNs = list(
        "string"
      ),
      authType = "string",
      authorizerUri = "string",
      authorizerCredentials = "string",
      identitySource = "string",
      identityValidationExpression = "string",
      authorizerResultTtlInSeconds = 123
    )

### Request syntax

    svc$create_authorizer(
      restApiId = "string",
      name = "string",
      type = "TOKEN"|"REQUEST"|"COGNITO_USER_POOLS",
      providerARNs = list(
        "string"
      ),
      authType = "string",
      authorizerUri = "string",
      authorizerCredentials = "string",
      identitySource = "string",
      identityValidationExpression = "string",
      authorizerResultTtlInSeconds = 123
    )
