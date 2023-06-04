<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_anomaly_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an anomaly detection model for a CloudWatch metric

### Description

Creates an anomaly detection model for a CloudWatch metric. You can use
the model to display a band of expected normal values when the metric is
graphed.

For more information, see [CloudWatch Anomaly
Detection](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html).

### Usage

    cloudwatch_put_anomaly_detector(Namespace, MetricName, Dimensions, Stat,
      Configuration, SingleMetricAnomalyDetector, MetricMathAnomalyDetector)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_anomaly_detector_:_Namespace">Namespace</code></td>
<td><p>The namespace of the metric to create the anomaly detection model
for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_anomaly_detector_:_MetricName">MetricName</code></td>
<td><p>The name of the metric to create the anomaly detection model
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_anomaly_detector_:_Dimensions">Dimensions</code></td>
<td><p>The metric dimensions to create the anomaly detection model
for.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_put_anomaly_detector_:_Stat">Stat</code></td>
<td><p>The statistic to use for the metric and the anomaly detection
model.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_anomaly_detector_:_Configuration">Configuration</code></td>
<td><p>The configuration specifies details about how the anomaly
detection model is to be trained, including time ranges to exclude when
training and updating the model. You can specify as many as 10 time
ranges.</p>
<p>The configuration can also include the time zone to use for the
metric.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_anomaly_detector_:_SingleMetricAnomalyDetector">SingleMetricAnomalyDetector</code></td>
<td><p>A single metric anomaly detector to be created.</p>
<p>When using <code>SingleMetricAnomalyDetector</code>, you cannot
include the following parameters in the same operation:</p>
<ul>
<li><p><code>Dimensions</code></p></li>
<li><p><code>MetricName</code></p></li>
<li><p><code>Namespace</code></p></li>
<li><p><code>Stat</code></p></li>
<li><p>the <code>MetricMatchAnomalyDetector</code> parameters of
<code>PutAnomalyDetectorInput</code></p></li>
</ul>
<p>Instead, specify the single metric anomaly detector attributes as
part of the property <code>SingleMetricAnomalyDetector</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_anomaly_detector_:_MetricMathAnomalyDetector">MetricMathAnomalyDetector</code></td>
<td><p>The metric math anomaly detector to be created.</p>
<p>When using <code>MetricMathAnomalyDetector</code>, you cannot include
the following parameters in the same operation:</p>
<ul>
<li><p><code>Dimensions</code></p></li>
<li><p><code>MetricName</code></p></li>
<li><p><code>Namespace</code></p></li>
<li><p><code>Stat</code></p></li>
<li><p>the <code>SingleMetricAnomalyDetector</code> parameters of
<code>PutAnomalyDetectorInput</code></p></li>
</ul>
<p>Instead, specify the metric math anomaly detector attributes as part
of the property <code>MetricMathAnomalyDetector</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_anomaly_detector(
      Namespace = "string",
      MetricName = "string",
      Dimensions = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      Stat = "string",
      Configuration = list(
        ExcludedTimeRanges = list(
          list(
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        MetricTimezone = "string"
      ),
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
