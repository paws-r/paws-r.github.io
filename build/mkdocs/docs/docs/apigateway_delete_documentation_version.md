<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_documentation_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a documentation version

### Description

Deletes a documentation version.

### Usage

    apigateway_delete_documentation_version(restApiId, documentationVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_documentation_version_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_documentation_version_:_documentationVersion">documentationVersion</code></td>
<td><p>[required] The version identifier of a to-be-deleted
documentation snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_documentation_version(
      restApiId = "string",
      documentationVersion = "string"
    )
