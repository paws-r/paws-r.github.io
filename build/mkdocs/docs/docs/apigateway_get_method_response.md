<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_method_response</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a MethodResponse resource

### Description

Describes a MethodResponse resource.

### Usage

    apigateway_get_method_response(restApiId, resourceId, httpMethod,
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
id="apigateway_get_method_response_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_method_response_:_resourceId">resourceId</code></td>
<td><p>[required] The Resource identifier for the MethodResponse
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_method_response_:_httpMethod">httpMethod</code></td>
<td><p>[required] The HTTP verb of the Method resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_method_response_:_statusCode">statusCode</code></td>
<td><p>[required] The status code for the MethodResponse
resource.</p></td>
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

    svc$get_method_response(
      restApiId = "string",
      resourceId = "string",
      httpMethod = "string",
      statusCode = "string"
    )
