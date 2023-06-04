<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_service_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data points of a specific metric of your Amazon Lightsail container service

### Description

Returns the data points of a specific metric of your Amazon Lightsail
container service.

Metrics report the utilization of your resources. Monitor and collect
metric data regularly to maintain the reliability, availability, and
performance of your resources.

### Usage

    lightsail_get_container_service_metric_data(serviceName, metricName,
      startTime, endTime, period, statistics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_container_service_metric_data_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to get
metric data.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_container_service_metric_data_:_metricName">metricName</code></td>
<td><p>[required] The metric for which you want to return
information.</p>
<p>Valid container service metric names are listed below, along with the
most useful statistics to include in your request, and the published
unit value.</p>
<ul>
<li><p><code>CPUUtilization</code> - The average percentage of compute
units that are currently in use across all nodes of the container
service. This metric identifies the processing power required to run
containers on each node of the container service.</p>
<p>Statistics: The most useful statistics are <code>Maximum</code> and
<code>Average</code>.</p>
<p>Unit: The published unit is <code>Percent</code>.</p></li>
<li><p><code>MemoryUtilization</code> - The average percentage of
available memory that is currently in use across all nodes of the
container service. This metric identifies the memory required to run
containers on each node of the container service.</p>
<p>Statistics: The most useful statistics are <code>Maximum</code> and
<code>Average</code>.</p>
<p>Unit: The published unit is <code>Percent</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_container_service_metric_data_:_startTime">startTime</code></td>
<td><p>[required] The start time of the time period.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_container_service_metric_data_:_endTime">endTime</code></td>
<td><p>[required] The end time of the time period.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_container_service_metric_data_:_period">period</code></td>
<td><p>[required] The granularity, in seconds, of the returned data
points.</p>
<p>All container service metric data is available in 5-minute (300
seconds) granularity.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_container_service_metric_data_:_statistics">statistics</code></td>
<td><p>[required] The statistic for the metric.</p>
<p>The following statistics are available:</p>
<ul>
<li><p><code>Minimum</code> - The lowest value observed during the
specified period. Use this value to determine low volumes of activity
for your application.</p></li>
<li><p><code>Maximum</code> - The highest value observed during the
specified period. Use this value to determine high volumes of activity
for your application.</p></li>
<li><p><code>Sum</code> - All values submitted for the matching metric
added together. You can use this statistic to determine the total volume
of a metric.</p></li>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricName = "CPUUtilization"|"MemoryUtilization",
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

    svc$get_container_service_metric_data(
      serviceName = "string",
      metricName = "CPUUtilization"|"MemoryUtilization",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      period = 123,
      statistics = list(
        "Minimum"|"Maximum"|"Sum"|"Average"|"SampleCount"
      )
    )
