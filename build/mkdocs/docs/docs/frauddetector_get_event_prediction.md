<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_event_prediction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Evaluates an event against a detector version

### Description

Evaluates an event against a detector version. If a version ID is not
provided, the detector’s (`ACTIVE`) version is used.

### Usage

    frauddetector_get_event_prediction(detectorId, detectorVersionId,
      eventId, eventTypeName, entities, eventTimestamp, eventVariables,
      externalModelEndpointDataBlobs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_:_detectorVersionId">detectorVersionId</code></td>
<td><p>The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_:_eventId">eventId</code></td>
<td><p>[required] The unique ID used to identify the event.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The event type associated with the detector specified
for the prediction.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_:_entities">entities</code></td>
<td><p>[required] The entity type (associated with the detector's event
type) and specific entity ID representing who performed the event. If an
entity id is not available, use "UNKNOWN."</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_:_eventTimestamp">eventTimestamp</code></td>
<td><p>[required] Timestamp that defines when the event under evaluation
occurred. The timestamp must be specified using ISO 8601 standard in
UTC.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_:_eventVariables">eventVariables</code></td>
<td><p>[required] Names of the event type's variables you defined in
Amazon Fraud Detector to represent data elements and their corresponding
values for the event you are sending for evaluation.</p>
<p>You must provide at least one eventVariable</p>
<p>To ensure most accurate fraud prediction and to simplify your data
preparation, Amazon Fraud Detector will replace all missing variables or
values as follows:</p>
<p><strong>For Amazon Fraud Detector trained models:</strong></p>
<p>If a null value is provided explicitly for a variable or if a
variable is missing, model will replace the null value or the missing
variable (no variable name in the eventVariables map) with calculated
default mean/medians for numeric variables and with special values for
categorical variables.</p>
<p><strong>For imported SageMaker models:</strong></p>
<p>If a null value is provided explicitly for a variable, the model and
rules will use “null” as the value. If a variable is not provided (no
variable name in the eventVariables map), model and rules will use the
default value that is provided for the variable.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_:_externalModelEndpointDataBlobs">externalModelEndpointDataBlobs</code></td>
<td><p>The Amazon SageMaker model endpoint input data blobs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      modelScores = list(
        list(
          modelVersion = list(
            modelId = "string",
            modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
            modelVersionNumber = "string",
            arn = "string"
          ),
          scores = list(
            123.0
          )
        )
      ),
      ruleResults = list(
        list(
          ruleId = "string",
          outcomes = list(
            "string"
          )
        )
      ),
      externalModelOutputs = list(
        list(
          externalModel = list(
            modelEndpoint = "string",
            modelSource = "SAGEMAKER"
          ),
          outputs = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_event_prediction(
      detectorId = "string",
      detectorVersionId = "string",
      eventId = "string",
      eventTypeName = "string",
      entities = list(
        list(
          entityType = "string",
          entityId = "string"
        )
      ),
      eventTimestamp = "string",
      eventVariables = list(
        "string"
      ),
      externalModelEndpointDataBlobs = list(
        list(
          byteBuffer = raw,
          contentType = "string"
        )
      )
    )
