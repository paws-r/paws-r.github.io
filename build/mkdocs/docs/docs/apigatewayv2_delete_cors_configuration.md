<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_cors_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a CORS configuration

### Description

Deletes a CORS configuration.

### Usage

    apigatewayv2_delete_cors_configuration(ApiId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_cors_configuration_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cors_configuration(
      ApiId = "string"
    )
