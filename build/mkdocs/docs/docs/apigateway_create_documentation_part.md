<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_documentation_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a documentation part

### Description

Creates a documentation part.

### Usage

    apigateway_create_documentation_part(restApiId, location, properties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_documentation_part_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_documentation_part_:_location">location</code></td>
<td><p>[required] The location of the targeted API entity of the
to-be-created documentation part.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_documentation_part_:_properties">properties</code></td>
<td><p>[required] The new documentation content map of the targeted API
entity. Enclosed key-value pairs are API-specific, but only
OpenAPI-compliant key-value pairs can be exported and, hence,
published.</p></td>
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

    svc$create_documentation_part(
      restApiId = "string",
      location = list(
        type = "API"|"AUTHORIZER"|"MODEL"|"RESOURCE"|"METHOD"|"PATH_PARAMETER"|"QUERY_PARAMETER"|"REQUEST_HEADER"|"REQUEST_BODY"|"RESPONSE"|"RESPONSE_HEADER"|"RESPONSE_BODY",
        path = "string",
        method = "string",
        statusCode = "string",
        name = "string"
      ),
      properties = "string"
    )
