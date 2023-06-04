<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_describe_model_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all of the model versions for the specified model type or for the specified model type and model ID

### Description

Gets all of the model versions for the specified model type or for the
specified model type and model ID. You can also get details for a
single, specified model version.

### Usage

    frauddetector_describe_model_versions(modelId, modelVersionNumber,
      modelType, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_describe_model_versions_:_modelId">modelId</code></td>
<td><p>The model ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_describe_model_versions_:_modelVersionNumber">modelVersionNumber</code></td>
<td><p>The model version number.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_describe_model_versions_:_modelType">modelType</code></td>
<td><p>The model type.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_describe_model_versions_:_nextToken">nextToken</code></td>
<td><p>The next token from the previous results.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_describe_model_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      modelVersionDetails = list(
        list(
          modelId = "string",
          modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
          modelVersionNumber = "string",
          status = "string",
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
          trainingResult = list(
            dataValidationMetrics = list(
              fileLevelMessages = list(
                list(
                  title = "string",
                  content = "string",
                  type = "string"
                )
              ),
              fieldLevelMessages = list(
                list(
                  fieldName = "string",
                  identifier = "string",
                  title = "string",
                  content = "string",
                  type = "string"
                )
              )
            ),
            trainingMetrics = list(
              auc = 123.0,
              metricDataPoints = list(
                list(
                  fpr = 123.0,
                  precision = 123.0,
                  tpr = 123.0,
                  threshold = 123.0
                )
              )
            ),
            variableImportanceMetrics = list(
              logOddsMetrics = list(
                list(
                  variableName = "string",
                  variableType = "string",
                  variableImportance = 123.0
                )
              )
            )
          ),
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string",
          trainingResultV2 = list(
            dataValidationMetrics = list(
              fileLevelMessages = list(
                list(
                  title = "string",
                  content = "string",
                  type = "string"
                )
              ),
              fieldLevelMessages = list(
                list(
                  fieldName = "string",
                  identifier = "string",
                  title = "string",
                  content = "string",
                  type = "string"
                )
              )
            ),
            trainingMetricsV2 = list(
              ofi = list(
                metricDataPoints = list(
                  list(
                    fpr = 123.0,
                    precision = 123.0,
                    tpr = 123.0,
                    threshold = 123.0
                  )
                ),
                modelPerformance = list(
                  auc = 123.0,
                  uncertaintyRange = list(
                    lowerBoundValue = 123.0,
                    upperBoundValue = 123.0
                  )
                )
              ),
              tfi = list(
                metricDataPoints = list(
                  list(
                    fpr = 123.0,
                    precision = 123.0,
                    tpr = 123.0,
                    threshold = 123.0
                  )
                ),
                modelPerformance = list(
                  auc = 123.0,
                  uncertaintyRange = list(
                    lowerBoundValue = 123.0,
                    upperBoundValue = 123.0
                  )
                )
              ),
              ati = list(
                metricDataPoints = list(
                  list(
                    cr = 123.0,
                    adr = 123.0,
                    threshold = 123.0,
                    atodr = 123.0
                  )
                ),
                modelPerformance = list(
                  asi = 123.0
                )
              )
            ),
            variableImportanceMetrics = list(
              logOddsMetrics = list(
                list(
                  variableName = "string",
                  variableType = "string",
                  variableImportance = 123.0
                )
              )
            ),
            aggregatedVariablesImportanceMetrics = list(
              logOddsMetrics = list(
                list(
                  variableNames = list(
                    "string"
                  ),
                  aggregatedVariablesImportance = 123.0
                )
              )
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_model_versions(
      modelId = "string",
      modelVersionNumber = "string",
      modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
      nextToken = "string",
      maxResults = 123
    )
