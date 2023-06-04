<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a model using the specified model type

### Description

Creates a model using the specified model type.

### Usage

    frauddetector_create_model(modelId, modelType, description,
      eventTypeName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_create_model_:_modelId">modelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_model_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_model_:_description">description</code></td>
<td><p>The model description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_model_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_create_model_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_model(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      description = "string",
      eventTypeName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
