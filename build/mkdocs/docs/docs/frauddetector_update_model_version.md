<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_model_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a model version

### Description

Updates a model version. Updating a model version retrains an existing
model version using updated training data and produces a new minor
version of the model. You can update the training data set location and
data access role attributes using this action. This action creates and
trains a new minor version of the model, for example version 1.01, 1.02,
1.03.

### Usage

    frauddetector_update_model_version(modelId, modelType,
      majorVersionNumber, externalEventsDetail, ingestedEventsDetail, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_model_version_:_modelId">modelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_version_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_model_version_:_majorVersionNumber">majorVersionNumber</code></td>
<td><p>[required] The major version number.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_version_:_externalEventsDetail">externalEventsDetail</code></td>
<td><p>The details of the external events data used for training the
model version. Required if <code>trainingDataSource</code> is
<code>EXTERNAL_EVENTS</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_model_version_:_ingestedEventsDetail">ingestedEventsDetail</code></td>
<td><p>The details of the ingested event used for training the model
version. Required if your <code>trainingDataSource</code> is
<code>INGESTED_EVENTS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_model_version_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      modelVersionNumber = "string",
      status = "string"
    )

### Request syntax

    svc$update_model_version(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      majorVersionNumber = "string",
      externalEventsDetail = list(
        dataLocation = "string",
        dataAccessRoleArn = "string"
      ),
      ingestedEventsDetail = list(
        ingestedEventsTimeWindow = list(
          startTime = "string",
          endTime = "string"
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
