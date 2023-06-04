<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_import_documentation_parts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports documentation parts

### Description

Imports documentation parts

### Usage

    apigateway_import_documentation_parts(restApiId, mode, failOnWarnings,
      body)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_import_documentation_parts_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_import_documentation_parts_:_mode">mode</code></td>
<td><p>A query parameter to indicate whether to overwrite
(<code>OVERWRITE</code>) any existing DocumentationParts definition or
to merge (<code>MERGE</code>) the new definition into the existing one.
The default value is <code>MERGE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_import_documentation_parts_:_failOnWarnings">failOnWarnings</code></td>
<td><p>A query parameter to specify whether to rollback the
documentation importation (<code>true</code>) or not
(<code>false</code>) when a warning is encountered. The default value is
<code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_import_documentation_parts_:_body">body</code></td>
<td><p>[required] Raw byte array representing the to-be-imported
documentation parts. To import from an OpenAPI file, this is a JSON
object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ids = list(
        "string"
      ),
      warnings = list(
        "string"
      )
    )

### Request syntax

    svc$import_documentation_parts(
      restApiId = "string",
      mode = "merge"|"overwrite",
      failOnWarnings = TRUE|FALSE,
      body = raw
    )
