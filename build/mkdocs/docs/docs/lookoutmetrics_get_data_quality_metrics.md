<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_get_data_quality_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about the requested data quality metrics

### Description

Returns details about the requested data quality metrics.

### Usage

    lookoutmetrics_get_data_quality_metrics(AnomalyDetectorArn,
      MetricSetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_get_data_quality_metrics_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly detector
that you want to investigate.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_get_data_quality_metrics_:_MetricSetArn">MetricSetArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a specific data quality metric
set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectorDataQualityMetricList = list(
        list(
          StartTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          MetricSetDataQualityMetricList = list(
            list(
              MetricSetArn = "string",
              DataQualityMetricList = list(
                list(
                  MetricType = "COLUMN_COMPLETENESS"|"DIMENSION_UNIQUENESS"|"TIME_SERIES_COUNT"|"ROWS_PROCESSED"|"ROWS_PARTIAL_COMPLIANCE"|"INVALID_ROWS_COMPLIANCE"|"BACKTEST_TRAINING_DATA_START_TIME_STAMP"|"BACKTEST_TRAINING_DATA_END_TIME_STAMP"|"BACKTEST_INFERENCE_DATA_START_TIME_STAMP"|"BACKTEST_INFERENCE_DATA_END_TIME_STAMP",
                  MetricDescription = "string",
                  RelatedColumnName = "string",
                  MetricValue = 123.0
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_data_quality_metrics(
      AnomalyDetectorArn = "string",
      MetricSetArn = "string"
    )
