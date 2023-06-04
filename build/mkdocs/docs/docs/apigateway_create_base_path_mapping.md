<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_base_path_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new BasePathMapping resource

### Description

Creates a new BasePathMapping resource.

### Usage

    apigateway_create_base_path_mapping(domainName, basePath, restApiId,
      stage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_create_base_path_mapping_:_domainName">domainName</code></td>
<td><p>[required] The domain name of the BasePathMapping resource to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_base_path_mapping_:_basePath">basePath</code></td>
<td><p>The base path name that callers of the API must provide as part
of the URL after the domain name. This value must be unique for all of
the mappings across a single API. Specify '(none)' if you do not want
callers to specify a base path name after the domain name.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_base_path_mapping_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_base_path_mapping_:_stage">stage</code></td>
<td><p>The name of the API's stage that you want to use for this
mapping. Specify '(none)' if you want callers to explicitly specify the
stage name after any base path name.</p></td>
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

    svc$create_base_path_mapping(
      domainName = "string",
      basePath = "string",
      restApiId = "string",
      stage = "string"
    )
