<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_model_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a version of the model using the specified model type and model id

### Description

Creates a version of the model using the specified model type and model
id.

### Usage

    frauddetector_create_model_version(modelId, modelType,
      trainingDataSource, trainingDataSchema, externalEventsDetail,
      ingestedEventsDetail, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_create_model_version_:_modelId">modelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_model_version_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_model_version_:_trainingDataSource">trainingDataSource</code></td>
<td><p>[required] The training data source location in Amazon
S3.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_model_version_:_trainingDataSchema">trainingDataSchema</code></td>
<td><p>[required] The training data schema.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_model_version_:_externalEventsDetail">externalEventsDetail</code></td>
<td><p>Details of the external events data used for model version
training. Required if <code>trainingDataSource</code> is
<code>EXTERNAL_EVENTS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_model_version_:_ingestedEventsDetail">ingestedEventsDetail</code></td>
<td><p>Details of the ingested events data used for model version
training. Required if <code>trainingDataSource</code> is
<code>INGESTED_EVENTS</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_model_version_:_tags">tags</code></td>
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

    svc$create_model_version(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      trainingDataSource = "EXTERNAL_EVENTS"|"INGESTED_EVENTS",
      trainingDataSchema = list(
        modelVariables = list(
          "string"
        ),
        labelSchema = list(
          labelMapper = list(
            list(
              "string"
            )
          ),
          unlabeledEventsTreatment = "IGNORE"|"FRAUD"|"LEGIT"|"AUTO"
        )
      ),
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
