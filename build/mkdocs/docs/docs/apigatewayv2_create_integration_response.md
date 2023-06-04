<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_create_integration_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IntegrationResponses

### Description

Creates an IntegrationResponses.

### Usage

    apigatewayv2_create_integration_response(ApiId, ContentHandlingStrategy,
      IntegrationId, IntegrationResponseKey, ResponseParameters,
      ResponseTemplates, TemplateSelectionExpression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_create_integration_response_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_integration_response_:_ContentHandlingStrategy">ContentHandlingStrategy</code></td>
<td><p>Specifies how to handle response payload content type
conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT,
with the following behaviors:</p>
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
id="apigatewayv2_create_integration_response_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_integration_response_:_IntegrationResponseKey">IntegrationResponseKey</code></td>
<td><p>[required] The integration response key.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_integration_response_:_ResponseParameters">ResponseParameters</code></td>
<td><p>A key-value map specifying response parameters that are passed to
the method response from the backend. The key is a method response
header parameter name and the mapped value is an integration response
header value, a static value enclosed within a pair of single quotes, or
a JSON expression from the integration response body. The mapping key
must match the pattern of method.response.header.{name}, where {name} is
a valid and unique header name. The mapped non-static value must match
the pattern of integration.response.header.{name} or
integration.response.body.{JSON-expression}, where {name} is a valid and
unique response header name and {JSON-expression} is a valid JSON
expression without the $ prefix.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_create_integration_response_:_ResponseTemplates">ResponseTemplates</code></td>
<td><p>The collection of response templates for the integration response
as a string-to-string map of key-value pairs. Response templates are
represented as a key/value map, with a content-type as the key and a
template as the value.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_create_integration_response_:_TemplateSelectionExpression">TemplateSelectionExpression</code></td>
<td><p>The template selection expression for the integration response.
Supported only for WebSocket APIs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      IntegrationResponseId = "string",
      IntegrationResponseKey = "string",
      ResponseParameters = list(
        "string"
      ),
      ResponseTemplates = list(
        "string"
      ),
      TemplateSelectionExpression = "string"
    )

### Request syntax

    svc$create_integration_response(
      ApiId = "string",
      ContentHandlingStrategy = "CONVERT_TO_BINARY"|"CONVERT_TO_TEXT",
      IntegrationId = "string",
      IntegrationResponseKey = "string",
      ResponseParameters = list(
        "string"
      ),
      ResponseTemplates = list(
        "string"
      ),
      TemplateSelectionExpression = "string"
    )
