<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_describe_anomaly_detectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the anomaly detection models that you have created in your account

### Description

Lists the anomaly detection models that you have created in your
account. For single metric anomaly detectors, you can list all of the
models in your account or filter the results to only the models that are
related to a certain namespace, metric name, or metric dimension. For
metric math anomaly detectors, you can list them by adding `METRIC_MATH`
to the `AnomalyDetectorTypes` array. This will return all metric math
anomaly detectors in your account.

### Usage

    cloudwatch_describe_anomaly_detectors(NextToken, MaxResults, Namespace,
      MetricName, Dimensions, AnomalyDetectorTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_NextToken">NextToken</code></td>
<td><p>Use the token returned by the previous operation to request the
next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one operation. The
maximum value that you can specify is 100.</p>
<p>To retrieve the remaining results, make another call with the
returned <code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_Namespace">Namespace</code></td>
<td><p>Limits the results to only the anomaly detection models that are
associated with the specified namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_MetricName">MetricName</code></td>
<td><p>Limits the results to only the anomaly detection models that are
associated with the specified metric name. If there are multiple metrics
with this name in different namespaces that have anomaly detection
models, they're all returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_Dimensions">Dimensions</code></td>
<td><p>Limits the results to only the anomaly detection models that are
associated with the specified metric dimensions. If there are multiple
metrics that have these dimensions and have anomaly detection models
associated, they're all returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_describe_anomaly_detectors_:_AnomalyDetectorTypes">AnomalyDetectorTypes</code></td>
<td><p>The anomaly detector types to request when using
<code>DescribeAnomalyDetectorsInput</code>. If empty, defaults to
<code>SINGLE_METRIC</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyDetectors = list(
        list(
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
          StateValue = "PENDING_TRAINING"|"TRAINED_INSUFFICIENT_DATA"|"TRAINED",
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_anomaly_detectors(
      NextToken = "string",
      MaxResults = 123,
      Namespace = "string",
      MetricName = "string",
      Dimensions = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      AnomalyDetectorTypes = list(
        "SINGLE_METRIC"|"METRIC_MATH"
      )
    )
