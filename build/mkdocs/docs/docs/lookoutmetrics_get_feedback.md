<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_get_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get feedback for an anomaly group

### Description

Get feedback for an anomaly group.

### Usage

    lookoutmetrics_get_feedback(AnomalyDetectorArn,
      AnomalyGroupTimeSeriesFeedback, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_get_feedback_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_get_feedback_:_AnomalyGroupTimeSeriesFeedback">AnomalyGroupTimeSeriesFeedback</code></td>
<td><p>[required] The anomalous metric and group ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_get_feedback_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_get_feedback_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyGroupTimeSeriesFeedback = list(
        list(
          TimeSeriesId = "string",
          IsAnomaly = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_feedback(
      AnomalyDetectorArn = "string",
      AnomalyGroupTimeSeriesFeedback = list(
        AnomalyGroupId = "string",
        TimeSeriesId = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
