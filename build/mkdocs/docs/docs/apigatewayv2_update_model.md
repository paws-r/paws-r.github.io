<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_update_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a Model

### Description

Updates a Model.

### Usage

    apigatewayv2_update_model(ApiId, ContentType, Description, ModelId,
      Name, Schema)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigatewayv2_update_model_:_ApiId">ApiId</code></td>
<td><p>[required] The API identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="apigatewayv2_update_model_:_ContentType">ContentType</code></td>
<td><p>The content-type for the model, for example,
"application/json".</p></td>
</tr>
<tr class="odd">
<td><code
id="apigatewayv2_update_model_:_Description">Description</code></td>
<td><p>The description of the model.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_update_model_:_ModelId">ModelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="odd">
<td><code id="apigatewayv2_update_model_:_Name">Name</code></td>
<td><p>The name of the model.</p></td>
</tr>
<tr class="even">
<td><code id="apigatewayv2_update_model_:_Schema">Schema</code></td>
<td><p>The schema for the model. For application/json models, this
should be JSON schema draft 4 model.</p></td>
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

    svc$update_model(
      ApiId = "string",
      ContentType = "string",
      Description = "string",
      ModelId = "string",
      Name = "string",
      Schema = "string"
    )
