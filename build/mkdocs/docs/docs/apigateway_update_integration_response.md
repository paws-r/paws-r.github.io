<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_integration_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents an update integration response

### Description

Represents an update integration response.

### Usage

    apigateway_update_integration_response(restApiId, resourceId,
      httpMethod, statusCode, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_integration_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_integration_response_:_resourceId">resourceId</code></td>
<td><p>[required] Specifies an update integration response request's
resource identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_integration_response_:_httpMethod">httpMethod</code></td>
<td><p>[required] Specifies an update integration response request's
HTTP method.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_integration_response_:_statusCode">statusCode</code></td>
<td><p>[required] Specifies an update integration response request's
status code.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_integration_response_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
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

    svc$update_integration_response(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      statusCode = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
