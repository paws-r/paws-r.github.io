<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_model_version_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status of a model version

### Description

Updates the status of a model version.

You can perform the following status updates:

1.  Change the `TRAINING_IN_PROGRESS` status to `TRAINING_CANCELLED`.

2.  Change the `TRAINING_COMPLETE` status to `ACTIVE`.

3.  Change `ACTIVE` to `INACTIVE`.

### Usage

    frauddetector_update_model_version_status(modelId, modelType,
      modelVersionNumber, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_model_version_status_:_modelId">modelId</code></td>
<td><p>[required] The model ID of the model version to update.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_version_status_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_model_version_status_:_modelVersionNumber">modelVersionNumber</code></td>
<td><p>[required] The model version number.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_version_status_:_status">status</code></td>
<td><p>[required] The model version status.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_model_version_status(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      modelVersionNumber = "string",
      status = "ACTIVE"|"INACTIVE"|"TRAINING_CANCELLED"
    )
