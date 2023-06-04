<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_update_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about a model

### Description

Changes information about a model.

### Usage

    apigateway_update_model(restApiId, modelName, patchOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_update_model_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_update_model_:_modelName">modelName</code></td>
<td><p>[required] The name of the model to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_update_model_:_patchOperations">patchOperations</code></td>
<td><p>For more information about supported patch operations, see <a
href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch
Operations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      schema = "string",
      contentType = "string"
    )

### Request syntax

    svc$update_model(
      restApiId = "string",
      modelName = "string",
      patchOperations = list(
        list(
          op = "add"|"remove"|"replace"|"move"|"copy"|"test",
          path = "string",
          value = "string",
          from = "string"
        )
      )
    )
