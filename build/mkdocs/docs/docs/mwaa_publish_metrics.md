<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_publish_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Internal only

### Description

**Internal only**. Publishes environment health metrics to Amazon
CloudWatch.

### Usage

    mwaa_publish_metrics(EnvironmentName, MetricData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mwaa_publish_metrics_:_EnvironmentName">EnvironmentName</code></td>
<td><p>[required] <strong>Internal only</strong>. The name of the
environment.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_publish_metrics_:_MetricData">MetricData</code></td>
<td><p>[required] <strong>Internal only</strong>. Publishes metrics to
Amazon CloudWatch. To learn more about the metrics published to Amazon
CloudWatch, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon
MWAA performance metrics in Amazon CloudWatch</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$publish_metrics(
      EnvironmentName = "string",
      MetricData = list(
        list(
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          MetricName = "string",
          StatisticValues = list(
            Maximum = 123.0,
            Minimum = 123.0,
            SampleCount = 123,
            Sum = 123.0
          ),
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
          Value = 123.0
        )
      )
    )
