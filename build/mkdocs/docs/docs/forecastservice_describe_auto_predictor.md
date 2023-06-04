<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_auto_predictor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a predictor created using the CreateAutoPredictor operation

### Description

Describes a predictor created using the CreateAutoPredictor operation.

### Usage

    forecastservice_describe_auto_predictor(PredictorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_auto_predictor_:_PredictorArn">PredictorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
predictor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorArn = "string",
      PredictorName = "string",
      ForecastHorizon = 123,
      ForecastTypes = list(
        "string"
      ),
      ForecastFrequency = "string",
      ForecastDimensions = list(
        "string"
      ),
      DatasetImportJobArns = list(
        "string"
      ),
      DataConfig = list(
        DatasetGroupArn = "string",
        AttributeConfigs = list(
          list(
            AttributeName = "string",
            Transformations = list(
              "string"
            )
          )
        ),
        AdditionalDatasets = list(
          list(
            Name = "string",
            Configuration = list(
              list(
                "string"
              )
            )
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      ReferencePredictorSummary = list(
        Arn = "string",
        State = "Active"|"Deleted"
      ),
      EstimatedTimeRemainingInMinutes = 123,
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      OptimizationMetric = "WAPE"|"RMSE"|"AverageWeightedQuantileLoss"|"MASE"|"MAPE",
      ExplainabilityInfo = list(
        ExplainabilityArn = "string",
        Status = "string"
      ),
      MonitorInfo = list(
        MonitorArn = "string",
        Status = "string"
      ),
      TimeAlignmentBoundary = list(
        Month = "JANUARY"|"FEBRUARY"|"MARCH"|"APRIL"|"MAY"|"JUNE"|"JULY"|"AUGUST"|"SEPTEMBER"|"OCTOBER"|"NOVEMBER"|"DECEMBER",
        DayOfMonth = 123,
        DayOfWeek = "MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"|"SUNDAY",
        Hour = 123
      )
    )

### Request syntax

    svc$describe_auto_predictor(
      PredictorArn = "string"
    )
