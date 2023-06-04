<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Model

### Description

Deletes a Model.

### Usage

    apigatewayv2_delete_model(ApiId, ModelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_delete_model_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_delete_model_:_ModelId">ModelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model(
      ApiId = "string",
      ModelId = "string"
    )
