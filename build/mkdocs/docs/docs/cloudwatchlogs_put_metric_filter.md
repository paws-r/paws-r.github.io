<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_metric_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a metric filter and associates it with the specified log group

### Description

Creates or updates a metric filter and associates it with the specified
log group. With metric filters, you can configure rules to extract
metric data from log events ingested through `put_log_events`.

The maximum number of metric filters that can be associated with a log
group is 100.

When you create a metric filter, you can also optionally assign a unit
and dimensions to the metric that is created.

Metrics extracted from log events are charged as custom metrics. To
prevent unexpected high charges, do not specify high-cardinality fields
such as `IPAddress` or `requestID` as dimensions. Each different value
found for a dimension is treated as a separate metric and accrues
charges as a separate custom metric.

CloudWatch Logs disables a metric filter if it generates 1,000 different
name/value pairs for your specified dimensions within a certain amount
of time. This helps to prevent accidental high charges.

You can also set up a billing alarm to alert you if your charges are
higher than expected. For more information, see [Creating a Billing
Alarm to Monitor Your Estimated Amazon Web Services
Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).

### Usage

    cloudwatchlogs_put_metric_filter(logGroupName, filterName,
      filterPattern, metricTransformations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_metric_filter_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_metric_filter_:_filterName">filterName</code></td>
<td><p>[required] A name for the metric filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_metric_filter_:_filterPattern">filterPattern</code></td>
<td><p>[required] A filter pattern for extracting metric data out of
ingested log events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_metric_filter_:_metricTransformations">metricTransformations</code></td>
<td><p>[required] A collection of information that defines how metric
data gets emitted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_metric_filter(
      logGroupName = "string",
      filterName = "string",
      filterPattern = "string",
      metricTransformations = list(
        list(
          metricName = "string",
          metricNamespace = "string",
          metricValue = "string",
          defaultValue = 123.0,
          dimensions = list(
            "string"
          ),
          unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None"
        )
      )
    )
