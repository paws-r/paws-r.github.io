<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_anomaly_group_time_series</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of anomalous metrics for a measure in an anomaly group

### Description

Gets a list of anomalous metrics for a measure in an anomaly group.

### Usage

    lookoutmetrics_list_anomaly_group_time_series(AnomalyDetectorArn,
      AnomalyGroupId, MetricName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_time_series_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_time_series_:_AnomalyGroupId">AnomalyGroupId</code></td>
<td><p>[required] The ID of the anomaly group.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_time_series_:_MetricName">MetricName</code></td>
<td><p>[required] The name of the measure field.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_time_series_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_time_series_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyGroupId = "string",
      MetricName = "string",
      TimestampList = list(
        "string"
      ),
      NextToken = "string",
      TimeSeriesList = list(
        list(
          TimeSeriesId = "string",
          DimensionList = list(
            list(
              DimensionName = "string",
              DimensionValue = "string"
            )
          ),
          MetricValueList = list(
            123.0
          )
        )
      )
    )

### Request syntax

    svc$list_anomaly_group_time_series(
      AnomalyDetectorArn = "string",
      AnomalyGroupId = "string",
      MetricName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
