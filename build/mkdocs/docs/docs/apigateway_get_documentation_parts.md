<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_documentation_parts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets documentation parts

### Description

Gets documentation parts.

### Usage

    apigateway_get_documentation_parts(restApiId, type, nameQuery, path,
      position, limit, locationStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_documentation_parts_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_documentation_parts_:_type">type</code></td>
<td><p>The type of API entities of the to-be-retrieved documentation
parts.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_documentation_parts_:_nameQuery">nameQuery</code></td>
<td><p>The name of API entities of the to-be-retrieved documentation
parts.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_documentation_parts_:_path">path</code></td>
<td><p>The path of API entities of the to-be-retrieved documentation
parts.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_documentation_parts_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_documentation_parts_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_documentation_parts_:_locationStatus">locationStatus</code></td>
<td><p>The status of the API documentation parts to retrieve. Valid
values are <code>DOCUMENTED</code> for retrieving DocumentationPart
resources with content and <code>UNDOCUMENTED</code> for
DocumentationPart resources without content.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
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
      )
    )

### Request syntax

    svc$get_documentation_parts(
      restApiId = "string",
      type = "API"|"AUTHORIZER"|"MODEL"|"RESOURCE"|"METHOD"|"PATH_PARAMETER"|"QUERY_PARAMETER"|"REQUEST_HEADER"|"REQUEST_BODY"|"RESPONSE"|"RESPONSE_HEADER"|"RESPONSE_BODY",
      nameQuery = "string",
      path = "string",
      position = "string",
      limit = 123,
      locationStatus = "DOCUMENTED"|"UNDOCUMENTED"
    )
