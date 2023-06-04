<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_base_path_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about the BasePathMapping resource

### Description

Changes information about the BasePathMapping resource.

### Usage

    apigateway_update_base_path_mapping(domainName, basePath,
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
id="apigateway_update_base_path_mapping_:_domainName">domainName</code></td>
<td><p>[required] The domain name of the BasePathMapping resource to
change.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_update_base_path_mapping_:_basePath">basePath</code></td>
<td><p>[required] The base path of the BasePathMapping resource to
change.</p>
<p>To specify an empty base path, set this parameter to
<code>'(none)'</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_base_path_mapping_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      basePath = "string",
      restApiId = "string",
      stage = "string"
    )

### Request syntax

    svc$update_base_path_mapping(
      domainName = "string",
      basePath = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
