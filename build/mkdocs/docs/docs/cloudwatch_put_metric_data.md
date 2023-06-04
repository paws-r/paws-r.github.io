<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes metric data points to Amazon CloudWatch

### Description

Publishes metric data points to Amazon CloudWatch. CloudWatch associates
the data points with the specified metric. If the specified metric does
not exist, CloudWatch creates the metric. When CloudWatch creates a
metric, it can take up to fifteen minutes for the metric to appear in
calls to `list_metrics`.

You can publish either individual data points in the `Value` field, or
arrays of values and the number of times each value occurred during the
period by using the `Values` and `Counts` fields in the `MetricDatum`
structure. Using the `Values` and `Counts` method enables you to publish
up to 150 values per metric with one `put_metric_data` request, and
supports retrieving percentile statistics on this data.

Each `put_metric_data` request is limited to 1 MB in size for HTTP POST
requests. You can send a payload compressed by gzip. Each request is
also limited to no more than 1000 different metrics.

Although the `Value` parameter accepts numbers of type `Double`,
CloudWatch rejects values that are either too small or too large. Values
must be in the range of -2^360 to 2^360. In addition, special values
(for example, NaN, +Infinity, -Infinity) are not supported.

You can use up to 30 dimensions per metric to further clarify what data
the metric collects. Each dimension consists of a Name and Value pair.
For more information about specifying dimensions, see [Publishing
Metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
in the *Amazon CloudWatch User Guide*.

You specify the time stamp to be associated with each data point. You
can specify time stamps that are as much as two weeks before the current
date, and as much as 2 hours after the current day and time.

Data points with time stamps from 24 hours ago or longer can take at
least 48 hours to become available for `get_metric_data` or
`get_metric_statistics` from the time they are submitted. Data points
with time stamps between 3 and 24 hours ago can take as much as 2 hours
to become available for for `get_metric_data` or
`get_metric_statistics`.

CloudWatch needs raw data points to calculate percentile statistics. If
you publish data using a statistic set instead, you can only retrieve
percentile statistics for this data if one of the following conditions
is true:

-   The `SampleCount` value of the statistic set is 1 and `Min`, `Max`,
    and `Sum` are all equal.

-   The `Min` and `Max` are equal, and `Sum` is equal to `Min`
    multiplied by `SampleCount`.

### Usage

    cloudwatch_put_metric_data(Namespace, MetricData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_data_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace for the metric data. You can use ASCII
characters for the namespace, except for control characters which are
not supported.</p>
<p>To avoid conflicts with Amazon Web Services service namespaces, you
should not specify a namespace that begins with <code
style="white-space: pre;">⁠AWS/⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_data_:_MetricData">MetricData</code></td>
<td><p>[required] The data for the metric. The array can include no more
than 1000 metrics per call.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_metric_data(
      Namespace = "string",
      MetricData = list(
        list(
          MetricName = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          Value = 123.0,
          StatisticValues = list(
            SampleCount = 123.0,
            Sum = 123.0,
            Minimum = 123.0,
            Maximum = 123.0
          ),
          Values = list(
            123.0
          ),
          Counts = list(
            123.0
          ),
          Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
          StorageResolution = 123
        )
      )
    )
