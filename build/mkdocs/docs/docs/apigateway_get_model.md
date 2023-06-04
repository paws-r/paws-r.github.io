<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing model defined for a RestApi resource

### Description

Describes an existing model defined for a RestApi resource.

### Usage

    apigateway_get_model(restApiId, modelName, flatten)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_model_:_restApiId">restApiId</code></td>
<td><p>[required] The RestApi identifier under which the Model
exists.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_model_:_modelName">modelName</code></td>
<td><p>[required] The name of the model as an identifier.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_model_:_flatten">flatten</code></td>
<td><p>A query parameter of a Boolean value to resolve
(<code>true</code>) all external model references and returns a
flattened model schema or not (<code>false</code>) The default is
<code>false</code>.</p></td>
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

    svc$get_model(
      restApiId = "string",
      modelName = "string",
      flatten = TRUE|FALSE
    )
