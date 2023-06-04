<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new Model resource to an existing RestApi resource

### Description

Adds a new Model resource to an existing RestApi resource.

### Usage

    apigateway_create_model(restApiId, name, description, schema,
      contentType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_model_:_restApiId">restApiId</code></td>
<td><p>[required] The RestApi identifier under which the Model will be
created.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_model_:_name">name</code></td>
<td><p>[required] The name of the model. Must be alphanumeric.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_model_:_description">description</code></td>
<td><p>The description of the model.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_model_:_schema">schema</code></td>
<td><p>The schema for the model. For <code>application/json</code>
models, this should be JSON schema draft 4 model.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_model_:_contentType">contentType</code></td>
<td><p>[required] The content-type for the model.</p></td>
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

    svc$create_model(
      restApiId = "string",
      name = "string",
      description = "string",
      schema = "string",
      contentType = "string"
    )
