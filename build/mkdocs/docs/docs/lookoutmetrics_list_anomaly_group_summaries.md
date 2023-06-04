<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_anomaly_group_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of anomaly groups

### Description

Returns a list of anomaly groups.

### Usage

    lookoutmetrics_list_anomaly_group_summaries(AnomalyDetectorArn,
      SensitivityThreshold, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_summaries_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_summaries_:_SensitivityThreshold">SensitivityThreshold</code></td>
<td><p>[required] The minimum severity score for inclusion in the
output.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_list_anomaly_group_summaries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_list_anomaly_group_summaries_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyGroupSummaryList = list(
        list(
          StartTime = "string",
          EndTime = "string",
          AnomalyGroupId = "string",
          AnomalyGroupScore = 123.0,
          PrimaryMetricName = "string"
        )
      ),
      AnomalyGroupStatistics = list(
        EvaluationStartDate = "string",
        TotalCount = 123,
        ItemizedMetricStatsList = list(
          list(
            MetricName = "string",
            OccurrenceCount = 123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_anomaly_group_summaries(
      AnomalyDetectorArn = "string",
      SensitivityThreshold = 123,
      MaxResults = 123,
      NextToken = "string"
    )
