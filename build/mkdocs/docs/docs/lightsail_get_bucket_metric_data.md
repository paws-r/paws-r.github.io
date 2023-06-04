<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_bucket_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data points of a specific metric for an Amazon Lightsail bucket

### Description

Returns the data points of a specific metric for an Amazon Lightsail
bucket.

Metrics report the utilization of a bucket. View and collect metric data
regularly to monitor the number of objects stored in a bucket (including
object versions) and the storage space used by those objects.

### Usage

    lightsail_get_bucket_metric_data(bucketName, metricName, startTime,
      endTime, period, statistics, unit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_bucket_metric_data_:_bucketName">bucketName</code></td>
<td><p>[required] The name of the bucket for which to get metric
data.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_bucket_metric_data_:_metricName">metricName</code></td>
<td><p>[required] The metric for which you want to return
information.</p>
<p>Valid bucket metric names are listed below, along with the most
useful statistics to include in your request, and the published unit
value.</p>
<p>These bucket metrics are reported once per day.</p>
<ul>
<li><p><strong><code>BucketSizeBytes</code></strong> - The amount of
data in bytes stored in a bucket. This value is calculated by summing
the size of all objects in the bucket (including object versions),
including the size of all parts for all incomplete multipart uploads to
the bucket.</p>
<p>Statistics: The most useful statistic is <code>Maximum</code>.</p>
<p>Unit: The published unit is <code>Bytes</code>.</p></li>
<li><p><strong><code>NumberOfObjects</code></strong> - The total number
of objects stored in a bucket. This value is calculated by counting all
objects in the bucket (including object versions) and the total number
of parts for all incomplete multipart uploads to the bucket.</p>
<p>Statistics: The most useful statistic is <code>Average</code>.</p>
<p>Unit: The published unit is <code>Count</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_bucket_metric_data_:_startTime">startTime</code></td>
<td><p>[required] The timestamp indicating the earliest data to be
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_bucket_metric_data_:_endTime">endTime</code></td>
<td><p>[required] The timestamp indicating the latest data to be
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_bucket_metric_data_:_period">period</code></td>
<td><p>[required] The granularity, in seconds, of the returned data
points.</p>
<p>Bucket storage metrics are reported once per day. Therefore, you
should specify a period of 86400 seconds, which is the number of seconds
in a day.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_bucket_metric_data_:_statistics">statistics</code></td>
<td><p>[required] The statistic for the metric.</p>
<p>The following statistics are available:</p>
<ul>
<li><p><code>Minimum</code> - The lowest value observed during the
specified period. Use this value to determine low volumes of activity
for your application.</p></li>
<li><p><code>Maximum</code> - The highest value observed during the
specified period. Use this value to determine high volumes of activity
for your application.</p></li>
<li><p><code>Sum</code> - The sum of all values submitted for the
matching metric. You can use this statistic to determine the total
volume of a metric.</p></li>
<li><p><code>Average</code> - The value of <code>Sum</code> /
<code>SampleCount</code> during the specified period. By comparing this
statistic with the <code>Minimum</code> and <code>Maximum</code> values,
you can determine the full scope of a metric and how close the average
use is to the <code>Minimum</code> and <code>Maximum</code> values. This
comparison helps you to know when to increase or decrease your
resources.</p></li>
<li><p><code>SampleCount</code> - The count, or number, of data points
used for the statistical calculation.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="lightsail_get_bucket_metric_data_:_unit">unit</code></td>
<td><p>[required] The unit for the metric data request.</p>
<p>Valid units depend on the metric data being requested. For the valid
units with each available metric, see the <code>metricName</code>
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricName = "BucketSizeBytes"|"NumberOfObjects",
      metricData = list(
        list(
          average = 123.0,
          maximum = 123.0,
          minimum = 123.0,
          sampleCount = 123.0,
          sum = 123.0,
          timestamp = as.POSIXct(
            "2015-01-01"
          ),
          unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
        )
      )
    )

### Request syntax

    svc$get_bucket_metric_data(
      bucketName = "string",
      metricName = "BucketSizeBytes"|"NumberOfObjects",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      period = 123,
      statistics = list(
        "Minimum"|"Maximum"|"Sum"|"Average"|"SampleCount"
      ),
      unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
    )
