<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_documentation_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a documentation version

### Description

Creates a documentation version

### Usage

    apigateway_create_documentation_version(restApiId, documentationVersion,
      stageName, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_documentation_version_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_documentation_version_:_documentationVersion">documentationVersion</code></td>
<td><p>[required] The version identifier of the new snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_documentation_version_:_stageName">stageName</code></td>
<td><p>The stage name to be associated with the new documentation
snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_documentation_version_:_description">description</code></td>
<td><p>A description about the new documentation snapshot.</p></td>
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

    svc$create_documentation_version(
      restApiId = "string",
      documentationVersion = "string",
      stageName = "string",
      description = "string"
    )
