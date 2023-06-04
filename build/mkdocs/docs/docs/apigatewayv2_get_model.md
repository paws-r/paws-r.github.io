<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_get_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a Model

### Description

Gets a Model.

### Usage

    apigatewayv2_get_model(ApiId, ModelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_get_model_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_get_model_:_ModelId">ModelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContentType = "string",
      Description = "string",
      ModelId = "string",
      Name = "string",
      Schema = "string"
    )

### Request syntax

    svc$get_model(
      ApiId = "string",
      ModelId = "string"
    )
