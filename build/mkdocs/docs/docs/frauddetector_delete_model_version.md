<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_model_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model version

### Description

Deletes a model version.

You can delete models and model versions in Amazon Fraud Detector,
provided that they are not associated with a detector version.

When you delete a model version, Amazon Fraud Detector permanently
deletes that model version and the data is no longer stored in Amazon
Fraud Detector.

### Usage

    frauddetector_delete_model_version(modelId, modelType,
      modelVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_model_version_:_modelId">modelId</code></td>
<td><p>[required] The model ID of the model version to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_delete_model_version_:_modelType">modelType</code></td>
<td><p>[required] The model type of the model version to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_delete_model_version_:_modelVersionNumber">modelVersionNumber</code></td>
<td><p>[required] The model version number of the model version to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_version(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      modelVersionNumber = "string"
    )
