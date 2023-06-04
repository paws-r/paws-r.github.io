<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_api_mapping</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an API mapping

### Description

Deletes an API mapping.

### Usage

    apigatewayv2_delete_api_mapping(ApiMappingId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_api_mapping_:_ApiMappingId">ApiMappingId</code></td>
<td><p>[required] The API mapping identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_api_mapping_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_api_mapping(
      ApiMappingId = "string",
      DomainName = "string"
    )
