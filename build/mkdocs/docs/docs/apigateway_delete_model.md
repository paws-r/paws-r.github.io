<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_delete_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model

### Description

Deletes a model.

### Usage

    apigateway_delete_model(restApiId, modelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_delete_model_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_delete_model_:_modelName">modelName</code></td>
<td><p>[required] The name of the model to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model(
      restApiId = "string",
      modelName = "string"
    )
