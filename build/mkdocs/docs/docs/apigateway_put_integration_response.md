<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_put_integration_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents a put integration

### Description

Represents a put integration.

### Usage

    apigateway_put_integration_response(restApiId, resourceId, httpMethod,
      statusCode, selectionPattern, responseParameters, responseTemplates,
      contentHandling)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_put_integration_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_response_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a put integration response request's
resource identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_response_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies a put integration response request's HTTP
method.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_response_:_statusCode">statusCode</code></td>
<td><p>[required] Specifies the status code that is used to map the
integration response to an existing MethodResponse.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_response_:_selectionPattern">selectionPattern</code></td>
<td><p>Specifies the selection pattern of a put integration
response.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_response_:_responseParameters">responseParameters</code></td>
<td><p>A key-value map specifying response parameters that are passed to
the method response from the back end. The key is a method response
header parameter name and the mapped value is an integration response
header value, a static value enclosed within a pair of single quotes, or
a JSON expression from the integration response body. The mapping key
must match the pattern of <code
style="white-space: pre;">⁠method.response.header.{name}⁠</code>, where
<code>name</code> is a valid and unique header name. The mapped
non-static value must match the pattern of <code
style="white-space: pre;">⁠integration.response.header.{name}⁠</code> or
<code
style="white-space: pre;">⁠integration.response.body.{JSON-expression}⁠</code>,
where <code>name</code> must be a valid and unique response header name
and <code>JSON-expression</code> a valid JSON expression without the
<code>$</code> prefix.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_put_integration_response_:_responseTemplates">responseTemplates</code></td>
<td><p>Specifies a put integration response's templates.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_put_integration_response_:_contentHandling">contentHandling</code></td>
<td><p>Specifies how to handle response payload content type
conversions. Supported values are <code>CONVERT_TO_BINARY</code> and
<code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
<p>If this property is not defined, the response payload will be passed
through from the integration response to the method response without
modification.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      statusCode = "string",
      selectionPattern = "string",
      responseParameters = list(
        "string"
      ),
      responseTemplates = list(
        "string"
      ),
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
    )

### Request syntax

    svc$put_integration_response(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      statusCode = "string",
      selectionPattern = "string",
      responseParameters = list(
        "string"
      ),
      responseTemplates = list(
        "string"
      ),
      contentHandling = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT"
    )
