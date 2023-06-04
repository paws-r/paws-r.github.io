<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_base_path_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe a BasePathMapping resource

### Description

Describe a BasePathMapping resource.

### Usage

    apigateway_get_base_path_mapping(domainName, basePath)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_base_path_mapping_:_domainName">domainName</code></td>
<td><p>[required] The domain name of the BasePathMapping resource to be
described.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_base_path_mapping_:_basePath">basePath</code></td>
<td><p>[required] The base path name that callers of the API must
provide as part of the URL after the domain name. This value must be
unique for all of the mappings across a single API. Specify '(none)' if
you do not want callers to specify any base path name after the domain
name.</p></td>
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

    svc$get_base_path_mapping(
      domainName = "string",
      basePath = "string"
    )
