<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_model_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the details of the specified model version

### Description

Gets the details of the specified model version.

### Usage

    frauddetector_get_model_version(modelId, modelType, modelVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_model_version_:_modelId">modelId</code></td>
<td><p>[required] The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_model_version_:_modelType">modelType</code></td>
<td><p>[required] The model type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_model_version_:_modelVersionNumber">modelVersionNumber</code></td>
<td><p>[required] The model version number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      modelVersionNumber = "string",
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
      status = "string",
      arn = "string"
    )

### Request syntax

    svc$get_model_version(
      modelId = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      modelVersionNumber = "string"
    )
