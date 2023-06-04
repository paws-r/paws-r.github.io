<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_integration_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents a get integration response

### Description

Represents a get integration response.

### Usage

    apigateway_get_integration_response(restApiId, resourceId, httpMethod,
      statusCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_integration_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_integration_response_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies a get integration response request's
resource identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_integration_response_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies a get integration response request's HTTP
method.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_integration_response_:_statusCode">statusCode</code></td>
<td><p>[required] Specifies a get integration response request's status
code.</p></td>
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

    svc$get_integration_response(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      statusCode = "string"
    )
