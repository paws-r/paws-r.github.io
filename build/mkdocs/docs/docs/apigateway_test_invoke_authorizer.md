<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_test_invoke_authorizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body

### Description

Simulate the execution of an Authorizer in your RestApi with headers,
parameters, and an incoming request body.

### Usage

    apigateway_test_invoke_authorizer(restApiId, authorizerId, headers,
      multiValueHeaders, pathWithQueryString, body, stageVariables,
      additionalContext)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_test_invoke_authorizer_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_authorizer_:_authorizerId">authorizerId</code></td>
<td><p>[required] Specifies a test invoke authorizer request's
Authorizer ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_authorizer_:_headers">headers</code></td>
<td><p>A key-value map of headers to simulate an incoming invocation
request. This is where the incoming authorization token, or identity
source, should be specified.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_authorizer_:_multiValueHeaders">multiValueHeaders</code></td>
<td><p>The headers as a map from string to list of values to simulate an
incoming invocation request. This is where the incoming authorization
token, or identity source, may be specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_authorizer_:_pathWithQueryString">pathWithQueryString</code></td>
<td><p>The URI path, including query string, of the simulated invocation
request. Use this to specify path parameters and query string
parameters.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_test_invoke_authorizer_:_body">body</code></td>
<td><p>The simulated request body of an incoming invocation
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_authorizer_:_stageVariables">stageVariables</code></td>
<td><p>A key-value map of stage variables to simulate an invocation on a
deployed Stage.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_authorizer_:_additionalContext">additionalContext</code></td>
<td><p>A key-value map of additional context variables.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clientStatus = 123,
      log = "string",
      latency = 123,
      principalId = "string",
      policy = "string",
      authorization = list(
        list(
          "string"
        )
      ),
      claims = list(
        "string"
      )
    )

### Request syntax

    svc$test_invoke_authorizer(
      restApiId = "string",
      authorizerId = "string",
      headers = list(
        "string"
      ),
      multiValueHeaders = list(
        list(
          "string"
        )
      ),
      pathWithQueryString = "string",
      body = "string",
      stageVariables = list(
        "string"
      ),
      additionalContext = list(
        "string"
      )
    )
