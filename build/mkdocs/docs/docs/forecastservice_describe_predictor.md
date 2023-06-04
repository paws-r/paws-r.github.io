<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_predictor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation is only valid for legacy predictors created with CreatePredictor

### Description

This operation is only valid for legacy predictors created with
CreatePredictor. If you are not using a legacy predictor, use
`describe_auto_predictor`.

Describes a predictor created using the `create_predictor` operation.

In addition to listing the properties provided in the `create_predictor`
request, this operation lists the following properties:

-   `DatasetImportJobArns` - The dataset import jobs used to import
    training data.

-   `AutoMLAlgorithmArns` - If AutoML is performed, the algorithms that
    were evaluated.

-   `CreationTime`

-   `LastModificationTime`

-   `Status`

-   `Message` - If an error occurred, information about the error.

### Usage

    forecastservice_describe_predictor(PredictorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_predictor_:_PredictorArn">PredictorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the predictor that
you want information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorArn = "string",
      PredictorName = "string",
      AlgorithmArn = "string",
      AutoMLAlgorithmArns = list(
        "string"
      ),
      ForecastHorizon = 123,
      ForecastTypes = list(
        "string"
      ),
      PerformAutoML = TRUE|FALSE,
      AutoMLOverrideStrategy = "LatencyOptimized"|"AccuracyOptimized",
      PerformHPO = TRUE|FALSE,
      TrainingParameters = list(
        "string"
      ),
      EvaluationParameters = list(
        NumberOfBacktestWindows = 123,
        BackTestWindowOffset = 123
      ),
      HPOConfig = list(
        ParameterRanges = list(
          CategoricalParameterRanges = list(
            list(
              Name = "string",
              Values = list(
                "string"
              )
            )
          ),
          ContinuousParameterRanges = list(
            list(
              Name = "string",
              MaxValue = 123.0,
              MinValue = 123.0,
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          IntegerParameterRanges = list(
            list(
              Name = "string",
              MaxValue = 123,
              MinValue = 123,
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          )
        )
      ),
      InputDataConfig = list(
        DatasetGroupArn = "string",
        SupplementaryFeatures = list(
          list(
            Name = "string",
            Value = "string"
          )
        )
      ),
      FeaturizationConfig = list(
        ForecastFrequency = "string",
        ForecastDimensions = list(
          "string"
        ),
        Featurizations = list(
          list(
            AttributeName = "string",
            FeaturizationPipeline = list(
              list(
                FeaturizationMethodName = "filling",
                FeaturizationMethodParameters = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      PredictorExecutionDetails = list(
        PredictorExecutions = list(
          list(
            AlgorithmArn = "string",
            TestWindows = list(
              list(
                TestWindowStart = as.POSIXct(
                  "2015-01-01"
                ),
                TestWindowEnd = as.POSIXct(
                  "2015-01-01"
                ),
                Status = "string",
                Message = "string"
              )
            )
          )
        )
      ),
      EstimatedTimeRemainingInMinutes = 123,
      IsAutoPredictor = TRUE|FALSE,
      DatasetImportJobArns = list(
        "string"
      ),
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      OptimizationMetric = "WAPE"|"RMSE"|"AverageWeightedQuantileLoss"|"MASE"|"MAPE"
    )

### Request syntax

    svc$describe_predictor(
      PredictorArn = "string"
    )
