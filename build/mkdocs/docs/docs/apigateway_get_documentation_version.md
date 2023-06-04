<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_documentation_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a documentation version

### Description

Gets a documentation version.

### Usage

    apigateway_get_documentation_version(restApiId, documentationVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_documentation_version_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_documentation_version_:_documentationVersion">documentationVersion</code></td>
<td><p>[required] The version identifier of the to-be-retrieved
documentation snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      version = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      description = "string"
    )

### Request syntax

    svc$get_documentation_version(
      restApiId = "string",
      documentationVersion = "string"
    )
