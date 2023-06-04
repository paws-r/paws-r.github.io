<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_delete_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified anomaly detection model from your account

### Description

Deletes the specified anomaly detection model from your account. For
more information about how to delete an anomaly detection model, see
[Deleting an anomaly detection
model](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model)
in the *CloudWatch User Guide*.

### Usage

    cloudwatch_delete_anomaly_detector(Namespace, MetricName, Dimensions,
      Stat, SingleMetricAnomalyDetector, MetricMathAnomalyDetector)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_delete_anomaly_detector_:_Namespace">Namespace</code></td>
<td><p>The namespace associated with the anomaly detection model to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_delete_anomaly_detector_:_MetricName">MetricName</code></td>
<td><p>The metric name associated with the anomaly detection model to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_delete_anomaly_detector_:_Dimensions">Dimensions</code></td>
<td><p>The metric dimensions associated with the anomaly detection model
to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_delete_anomaly_detector_:_Stat">Stat</code></td>
<td><p>The statistic associated with the anomaly detection model to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_delete_anomaly_detector_:_SingleMetricAnomalyDetector">SingleMetricAnomalyDetector</code></td>
<td><p>A single metric anomaly detector to be deleted.</p>
<p>When using <code>SingleMetricAnomalyDetector</code>, you cannot
include the following parameters in the same operation:</p>
<ul>
<li><p><code>Dimensions</code>,</p></li>
<li><p><code>MetricName</code></p></li>
<li><p><code>Namespace</code></p></li>
<li><p><code>Stat</code></p></li>
<li><p>the <code>MetricMathAnomalyDetector</code> parameters of
<code>DeleteAnomalyDetectorInput</code></p></li>
</ul>
<p>Instead, specify the single metric anomaly detector attributes as
part of the <code>SingleMetricAnomalyDetector</code> property.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_delete_anomaly_detector_:_MetricMathAnomalyDetector">MetricMathAnomalyDetector</code></td>
<td><p>The metric math anomaly detector to be deleted.</p>
<p>When using <code>MetricMathAnomalyDetector</code>, you cannot include
following parameters in the same operation:</p>
<ul>
<li><p><code>Dimensions</code>,</p></li>
<li><p><code>MetricName</code></p></li>
<li><p><code>Namespace</code></p></li>
<li><p><code>Stat</code></p></li>
<li><p>the <code>SingleMetricAnomalyDetector</code> parameters of
<code>DeleteAnomalyDetectorInput</code></p></li>
</ul>
<p>Instead, specify the metric math anomaly detector attributes as part
of the <code>MetricMathAnomalyDetector</code> property.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_anomaly_detector(
      Namespace = "string",
      MetricName = "string",
      Dimensions = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      Stat = "string",
      SingleMetricAnomalyDetector = list(
        Namespace = "string",
        MetricName = "string",
        Dimensions = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        Stat = "string"
      ),
      MetricMathAnomalyDetector = list(
        MetricDataQueries = list(
          list(
            Id = "string",
            MetricStat = list(
              Metric = list(
                Namespace = "string",
                MetricName = "string",
                Dimensions = list(
                  list(
                    Name = "string",
                    Value = "string"
                  )
                )
              ),
              Period = 123,
              Stat = "string",
              Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
            ),
            Expression = "string",
            Label = "string",
            ReturnData = TRUE|FALSE,
            Period = 123,
            AccountId = "string"
          )
        )
      )
    )
