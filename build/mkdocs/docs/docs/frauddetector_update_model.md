<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates model description

### Description

Updates model description.

### Usage

    frauddetector_update_model(modelId, modelType, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_update_model_:_modelId">modelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_model_:_description">description</code></td>
<td><p>The new model description.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_model(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      description = "string"
    )
