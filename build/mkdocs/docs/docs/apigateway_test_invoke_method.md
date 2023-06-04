<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_test_invoke_method</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body

### Description

Simulate the invocation of a Method in your RestApi with headers,
parameters, and an incoming request body.

### Usage

    apigateway_test_invoke_method(restApiId, resourceId, httpMethod,
      pathWithQueryString, body, headers, multiValueHeaders,
      clientCertificateId, stageVariables)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_test_invoke_method_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_method_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a test invoke method request's resource
ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_method_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies a test invoke method request's HTTP
method.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_method_:_pathWithQueryString">pathWithQueryString</code></td>
<td><p>The URI path, including query string, of the simulated invocation
request. Use this to specify path parameters and query string
parameters.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_test_invoke_method_:_body">body</code></td>
<td><p>The simulated request body of an incoming invocation
request.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_method_:_headers">headers</code></td>
<td><p>A key-value map of headers to simulate an incoming invocation
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_method_:_multiValueHeaders">multiValueHeaders</code></td>
<td><p>The headers as a map from string to list of values to simulate an
incoming invocation request.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_test_invoke_method_:_clientCertificateId">clientCertificateId</code></td>
<td><p>A ClientCertificate identifier to use in the test invocation. API
Gateway will use the certificate when making the HTTPS request to the
defined back-end endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_test_invoke_method_:_stageVariables">stageVariables</code></td>
<td><p>A key-value map of stage variables to simulate an invocation on a
deployed Stage.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = 123,
      body = "string",
      headers = list(
        "string"
      ),
      multiValueHeaders = list(
        list(
          "string"
        )
      ),
      log = "string",
      latency = 123
    )

### Request syntax

    svc$test_invoke_method(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      pathWithQueryString = "string",
      body = "string",
      headers = list(
        "string"
      ),
      multiValueHeaders = list(
        list(
          "string"
        )
      ),
      clientCertificateId = "string",
      stageVariables = list(
        "string"
      )
    )
