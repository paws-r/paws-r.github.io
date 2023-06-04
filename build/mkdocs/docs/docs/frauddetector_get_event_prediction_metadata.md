<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_event_prediction_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details of the past fraud predictions for the specified event ID, event type, detector ID, and detector version ID that was generated in the specified time period

### Description

Gets details of the past fraud predictions for the specified event ID,
event type, detector ID, and detector version ID that was generated in
the specified time period.

### Usage

    frauddetector_get_event_prediction_metadata(eventId, eventTypeName,
      detectorId, detectorVersionId, predictionTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_metadata_:_eventId">eventId</code></td>
<td><p>[required] The event ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_metadata_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The event type associated with the detector specified
for the prediction.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_metadata_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_event_prediction_metadata_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_event_prediction_metadata_:_predictionTimestamp">predictionTimestamp</code></td>
<td><p>[required] The timestamp that defines when the prediction was
generated. The timestamp must be specified using ISO 8601 standard in
UTC.</p>
<p>We recommend calling <code>list_event_predictions</code> first, and
using the <code>predictionTimestamp</code> value in the response to
provide an accurate prediction timestamp value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventId = "string",
      eventTypeName = "string",
      entityId = "string",
      entityType = "string",
      eventTimestamp = "string",
      detectorId = "string",
      detectorVersionId = "string",
      detectorVersionStatus = "string",
      eventVariables = list(
        list(
          name = "string",
          value = "string",
          source = "string"
        )
      ),
      rules = list(
        list(
          ruleId = "string",
          ruleVersion = "string",
          expression = "string",
          expressionWithValues = "string",
          outcomes = list(
            "string"
          ),
          evaluated = TRUE|FALSE,
          matched = TRUE|FALSE
        )
      ),
      ruleExecutionMode = "ALL_MATCHED"|"FIRST_MATCHED",
      outcomes = list(
        "string"
      ),
      evaluatedModelVersions = list(
        list(
          modelId = "string",
          modelVersion = "string",
          modelType = "string",
          evaluations = list(
            list(
              outputVariableName = "string",
              evaluationScore = "string",
              predictionExplanations = list(
                variableImpactExplanations = list(
                  list(
                    eventVariableName = "string",
                    relativeImpact = "string",
                    logOddsImpact = 123.0
                  )
                ),
                aggregatedVariablesImpactExplanations = list(
                  list(
                    eventVariableNames = list(
                      "string"
                    ),
                    relativeImpact = "string",
                    logOddsImpact = 123.0
                  )
                )
              )
            )
          )
        )
      ),
      evaluatedExternalModels = list(
        list(
          modelEndpoint = "string",
          useEventVariables = TRUE|FALSE,
          inputVariables = list(
            "string"
          ),
          outputVariables = list(
            "string"
          )
        )
      ),
      predictionTimestamp = "string"
    )

### Request syntax

    svc$get_event_prediction_metadata(
      eventId = "string",
      eventTypeName = "string",
      detectorId = "string",
      detectorVersionId = "string",
      predictionTimestamp = "string"
    )
