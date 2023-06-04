<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_get_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use the GetMetricData API to retrieve CloudWatch metric values

### Description

You can use the `get_metric_data` API to retrieve CloudWatch metric
values. The operation can also include a CloudWatch Metrics Insights
query, and one or more metric math functions.

A `get_metric_data` operation that does not include a query can retrieve
as many as 500 different metrics in a single request, with a total of as
many as 100,800 data points. You can also optionally perform metric math
expressions on the values of the returned statistics, to create new time
series that represent new insights into your data. For example, using
Lambda metrics, you could divide the Errors metric by the Invocations
metric to get an error rate time series. For more information about
metric math expressions, see [Metric Math Syntax and
Functions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
in the *Amazon CloudWatch User Guide*.

If you include a Metrics Insights query, each `get_metric_data`
operation can include only one query. But the same `get_metric_data`
operation can also retrieve other metrics. Metrics Insights queries can
query only the most recent three hours of metric data. For more
information about Metrics Insights, see [Query your metrics with
CloudWatch Metrics
Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html).

Calls to the `get_metric_data` API have a different pricing structure
than calls to `get_metric_statistics`. For more information about
pricing, see [Amazon CloudWatch
Pricing](https://aws.amazon.com/cloudwatch/pricing/).

Amazon CloudWatch retains metric data as follows:

-   Data points with a period of less than 60 seconds are available for
    3 hours. These data points are high-resolution metrics and are
    available only for custom metrics that have been defined with a
    `StorageResolution` of 1.

-   Data points with a period of 60 seconds (1-minute) are available for
    15 days.

-   Data points with a period of 300 seconds (5-minute) are available
    for 63 days.

-   Data points with a period of 3600 seconds (1 hour) are available for
    455 days (15 months).

Data points that are initially published with a shorter period are
aggregated together for long-term storage. For example, if you collect
data using a period of 1 minute, the data remains available for 15 days
with 1-minute resolution. After 15 days, this data is still available,
but is aggregated and retrievable only with a resolution of 5 minutes.
After 63 days, the data is further aggregated and is available with a
resolution of 1 hour.

If you omit `Unit` in your request, all data that was collected with any
unit is returned, along with the corresponding units that were specified
when the data was reported to CloudWatch. If you specify a unit, the
operation returns only data that was collected with that unit specified.
If you specify a unit that does not match the data collected, the
results of the operation are null. CloudWatch does not perform unit
conversions.

**Using Metrics Insights queries with metric math**

You can't mix a Metric Insights query and metric math syntax in the same
expression, but you can reference results from a Metrics Insights query
within other Metric math expressions. A Metrics Insights query without a
**GROUP BY** clause returns a single time-series (TS), and can be used
as input for a metric math expression that expects a single time series.
A Metrics Insights query with a **GROUP BY** clause returns an array of
time-series (TS\[\]), and can be used as input for a metric math
expression that expects an array of time series.

### Usage

    cloudwatch_get_metric_data(MetricDataQueries, StartTime, EndTime,
      NextToken, ScanBy, MaxDatapoints, LabelOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_get_metric_data_:_MetricDataQueries">MetricDataQueries</code></td>
<td><p>[required] The metric queries to be returned. A single
<code>get_metric_data</code> call can include as many as 500
<code>MetricDataQuery</code> structures. Each of these structures can
specify either a metric to retrieve, a Metrics Insights query, or a math
expression to perform on retrieved data.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_metric_data_:_StartTime">StartTime</code></td>
<td><p>[required] The time stamp indicating the earliest data to be
returned.</p>
<p>The value specified is inclusive; results include data points with
the specified time stamp.</p>
<p>CloudWatch rounds the specified time stamp as follows:</p>
<ul>
<li><p>Start time less than 15 days ago - Round down to the nearest
whole minute. For example, 12:32:34 is rounded down to
12:32:00.</p></li>
<li><p>Start time between 15 and 63 days ago - Round down to the nearest
5-minute clock interval. For example, 12:32:34 is rounded down to
12:30:00.</p></li>
<li><p>Start time greater than 63 days ago - Round down to the nearest
1-hour clock interval. For example, 12:32:34 is rounded down to
12:00:00.</p></li>
</ul>
<p>If you set <code>Period</code> to 5, 10, or 30, the start time of
your request is rounded down to the nearest time that corresponds to
even 5-, 10-, or 30-second divisions of a minute. For example, if you
make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period,
the start time of your request is rounded down and you receive data from
01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5
minutes of data, using a period of 5 seconds, you receive data
timestamped between 15:02:15 and 15:07:15.</p>
<p>For better performance, specify <code>StartTime</code> and
<code>EndTime</code> values that align with the value of the metric's
<code>Period</code> and sync up with the beginning and end of an hour.
For example, if the <code>Period</code> of a metric is 5 minutes,
specifying 12:05 or 12:30 as <code>StartTime</code> can get a faster
response from CloudWatch than setting 12:07 or 12:29 as the
<code>StartTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatch_get_metric_data_:_EndTime">EndTime</code></td>
<td><p>[required] The time stamp indicating the latest data to be
returned.</p>
<p>The value specified is exclusive; results include data points up to
the specified time stamp.</p>
<p>For better performance, specify <code>StartTime</code> and
<code>EndTime</code> values that align with the value of the metric's
<code>Period</code> and sync up with the beginning and end of an hour.
For example, if the <code>Period</code> of a metric is 5 minutes,
specifying 12:05 or 12:30 as <code>EndTime</code> can get a faster
response from CloudWatch than setting 12:07 or 12:29 as the
<code>EndTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_metric_data_:_NextToken">NextToken</code></td>
<td><p>Include this value, if it was returned by the previous
<code>get_metric_data</code> operation, to get the next set of data
points.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatch_get_metric_data_:_ScanBy">ScanBy</code></td>
<td><p>The order in which data points should be returned.
<code>TimestampDescending</code> returns the newest data first and
paginates when the <code>MaxDatapoints</code> limit is reached.
<code>TimestampAscending</code> returns the oldest data first and
paginates when the <code>MaxDatapoints</code> limit is reached.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_metric_data_:_MaxDatapoints">MaxDatapoints</code></td>
<td><p>The maximum number of data points the request should return
before paginating. If you omit this, the default of 100,800 is
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_get_metric_data_:_LabelOptions">LabelOptions</code></td>
<td><p>This structure includes the <code>Timezone</code> parameter,
which you can use to specify your time zone so that the labels of
returned data display the correct time for your time zone.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricDataResults = list(
        list(
          Id = "string",
          Label = "string",
          Timestamps = list(
            as.POSIXct(
              "2015-01-01"
            )
          ),
          Values = list(
            123.0
          ),
          StatusCode = "Complete"|"InternalError"|"PartialData"|"Forbidden",
          Messages = list(
            list(
              Code = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string",
      Messages = list(
        list(
          Code = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_metric_data(
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
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      ScanBy = "TimestampDescending"|"TimestampAscending",
      MaxDatapoints = 123,
      LabelOptions = list(
        Timezone = "string"
      )
    )
