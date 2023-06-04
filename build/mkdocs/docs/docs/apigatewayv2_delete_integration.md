<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Integration

### Description

Deletes an Integration.

### Usage

    apigatewayv2_delete_integration(ApiId, IntegrationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_delete_integration_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_delete_integration_:_IntegrationId">IntegrationId</code></td>
<td><p>[required] The integration ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_integration(
      ApiId = "string",
      IntegrationId = "string"
    )
