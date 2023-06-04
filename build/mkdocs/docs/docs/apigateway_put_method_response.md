<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_put_method_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a MethodResponse to an existing Method resource

### Description

Adds a MethodResponse to an existing Method resource.

### Usage

    apigateway_put_method_response(restApiId, resourceId, httpMethod,
      statusCode, responseParameters, responseModels)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_put_method_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_method_response_:_resourceId">resourceId</code></td>
<td><p>[required] The Resource identifier for the Method
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_method_response_:_httpMethod">httpMethod</code></td>
<td><p>[required] The HTTP verb of the Method resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_method_response_:_statusCode">statusCode</code></td>
<td><p>[required] The method response's status code.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_method_response_:_responseParameters">responseParameters</code></td>
<td><p>A key-value map specifying required or optional response
parameters that API Gateway can send back to the caller. A key defines a
method response header name and the associated value is a Boolean flag
indicating whether the method response parameter is required or not. The
method response header names must match the pattern of <code
style="white-space: pre;">⁠method.response.header.{name}⁠</code>, where
<code>name</code> is a valid and unique header name. The response
parameter names defined here are available in the integration response
to be mapped from an integration response header expressed in <code
style="white-space: pre;">⁠integration.response.header.{name}⁠</code>, a
static value enclosed within a pair of single quotes (e.g.,
<code>'application/json'</code>), or a JSON expression from the back-end
response payload in the form of <code
style="white-space: pre;">⁠integration.response.body.{JSON-expression}⁠</code>,
where <code>JSON-expression</code> is a valid JSON expression without
the <code>$</code> prefix.)</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_method_response_:_responseModels">responseModels</code></td>
<td><p>Specifies the Model resources used for the response's content
type. Response models are represented as a key/value map, with a content
type as the key and a Model name as the value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      statusCode = "string",
      responseParameters = list(
        TRUE|FALSE
      ),
      responseModels = list(
        "string"
      )
    )

### Request syntax

    svc$put_method_response(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      statusCode = "string",
      responseParameters = list(
        TRUE|FALSE
      ),
      responseModels = list(
        "string"
      )
    )
