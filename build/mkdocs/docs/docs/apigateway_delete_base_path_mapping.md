<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_base_path_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the BasePathMapping resource

### Description

Deletes the BasePathMapping resource.

### Usage

    apigateway_delete_base_path_mapping(domainName, basePath)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_delete_base_path_mapping_:_domainName">domainName</code></td>
<td><p>[required] The domain name of the BasePathMapping resource to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_delete_base_path_mapping_:_basePath">basePath</code></td>
<td><p>[required] The base path name of the BasePathMapping resource to
delete.</p>
<p>To specify an empty base path, set this parameter to
<code>'(none)'</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_base_path_mapping(
      domainName = "string",
      basePath = "string"
    )
