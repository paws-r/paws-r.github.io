<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_model_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a sample mapping template that can be used to transform a payload into the structure of a model

### Description

Generates a sample mapping template that can be used to transform a
payload into the structure of a model.

### Usage

    apigateway_get_model_template(restApiId, modelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_model_template_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_model_template_:_modelName">modelName</code></td>
<td><p>[required] The name of the model for which to generate a
template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      value = "string"
    )

### Request syntax

    svc$get_model_template(
      restApiId = "string",
      modelName = "string"
    )
