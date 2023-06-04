<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_documentation_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a documentation version

### Description

Updates a documentation version.

### Usage

    apigateway_update_documentation_version(restApiId, documentationVersion,
      patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_update_documentation_version_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi..</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_documentation_version_:_documentationVersion">documentationVersion</code></td>
<td><p>[required] The version identifier of the to-be-updated
documentation version.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_documentation_version_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
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

    svc$update_documentation_version(
      restApiId = "string",
      documentationVersion = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
