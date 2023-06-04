<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_get_accuracy_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides metrics on the accuracy of the models that were trained by the CreatePredictor operation

### Description

Provides metrics on the accuracy of the models that were trained by the
`create_predictor` operation. Use metrics to see how well the model
performed and to decide whether to use the predictor to generate a
forecast. For more information, see [Predictor
Metrics](https://docs.aws.amazon.com/forecast/latest/dg/metrics.html).

This operation generates metrics for each backtest window that was
evaluated. The number of backtest windows (`NumberOfBacktestWindows`) is
specified using the EvaluationParameters object, which is optionally
included in the `create_predictor` request. If `NumberOfBacktestWindows`
isn't specified, the number defaults to one.

The parameters of the `filling` method determine which items contribute
to the metrics. If you want all items to contribute, specify `zero`. If
you want only those items that have complete data in the range being
evaluated to contribute, specify `nan`. For more information, see
FeaturizationMethod.

Before you can get accuracy metrics, the `Status` of the predictor must
be `ACTIVE`, signifying that training has completed. To get the status,
use the `describe_predictor` operation.

### Usage

    forecastservice_get_accuracy_metrics(PredictorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_get_accuracy_metrics_:_PredictorArn">PredictorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the predictor to get
metrics for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PredictorEvaluationResults = list(
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
              ItemCount = 123,
              EvaluationType = "SUMMARY"|"COMPUTED",
              Metrics = list(
                RMSE = 123.0,
                WeightedQuantileLosses = list(
                  list(
                    Quantile = 123.0,
                    LossValue = 123.0
                  )
                ),
                ErrorMetrics = list(
                  list(
                    ForecastType = "string",
                    WAPE = 123.0,
                    RMSE = 123.0,
                    MASE = 123.0,
                    MAPE = 123.0
                  )
                ),
                AverageWeightedQuantileLoss = 123.0
              )
            )
          )
        )
      ),
      IsAutoPredictor = TRUE|FALSE,
      AutoMLOverrideStrategy = "LatencyOptimized"|"AccuracyOptimized",
      OptimizationMetric = "WAPE"|"RMSE"|"AverageWeightedQuantileLoss"|"MASE"|"MAPE"
    )

### Request syntax

    svc$get_accuracy_metrics(
      PredictorArn = "string"
    )
