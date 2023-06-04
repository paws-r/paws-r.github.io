<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_documentation_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a documentation part

### Description

Gets a documentation part.

### Usage

    apigateway_get_documentation_part(restApiId, documentationPartId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_documentation_part_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_documentation_part_:_documentationPartId">documentationPartId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      location = list(
        type = "API"|"AUTHORIZER"|"MODEL"|"RESOURCE"|"METHOD"|"PATH_PARAMETER"|"QUERY_PARAMETER"|"REQUEST_HEADER"|"REQUEST_BODY"|"RESPONSE"|"RESPONSE_HEADER"|"RESPONSE_BODY",
        path = "string",
        method = "string",
        statusCode = "string",
        name = "string"
      ),
      properties = "string"
    )

### Request syntax

    svc$get_documentation_part(
      restApiId = "string",
      documentationPartId = "string"
    )
