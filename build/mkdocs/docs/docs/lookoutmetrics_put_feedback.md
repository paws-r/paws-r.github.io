<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_put_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add feedback for an anomalous metric

### Description

Add feedback for an anomalous metric.

### Usage

    lookoutmetrics_put_feedback(AnomalyDetectorArn,
      AnomalyGroupTimeSeriesFeedback)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_put_feedback_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the anomaly
detector.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_put_feedback_:_AnomalyGroupTimeSeriesFeedback">AnomalyGroupTimeSeriesFeedback</code></td>
<td><p>[required] Feedback for an anomalous metric.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_feedback(
      AnomalyDetectorArn = "string",
      AnomalyGroupTimeSeriesFeedback = list(
        AnomalyGroupId = "string",
        TimeSeriesId = "string",
        IsAnomaly = TRUE|FALSE
      )
    )
