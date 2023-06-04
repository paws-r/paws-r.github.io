<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_api_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The API mapping

### Description

The API mapping.

### Usage

    apigatewayv2_update_api_mapping(ApiId, ApiMappingId, ApiMappingKey,
      DomainName, Stage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_api_mapping_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_mapping_:_ApiMappingId">ApiMappingId</code></td>
<td><p>[required] The API mapping identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_api_mapping_:_ApiMappingKey">ApiMappingKey</code></td>
<td><p>The API mapping key.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_api_mapping_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_update_api_mapping_:_Stage">Stage</code></td>
<td><p>The API stage.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiId = "string",
      ApiMappingId = "string",
      ApiMappingKey = "string",
      Stage = "string"
    )

### Request syntax

    svc$update_api_mapping(
      ApiId = "string",
      ApiMappingId = "string",
      ApiMappingKey = "string",
      DomainName = "string",
      Stage = "string"
    )
