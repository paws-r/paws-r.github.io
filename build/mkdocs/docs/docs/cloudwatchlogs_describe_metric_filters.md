<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_metric_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified metric filters

### Description

Lists the specified metric filters. You can list all of the metric
filters or filter the results by log name, prefix, metric name, or
metric namespace. The results are ASCII-sorted by filter name.

### Usage

    cloudwatchlogs_describe_metric_filters(logGroupName, filterNamePrefix,
      nextToken, limit, metricName, metricNamespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_logGroupName">logGroupName</code></td>
<td><p>The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_filterNamePrefix">filterNamePrefix</code></td>
<td><p>The prefix to match. CloudWatch Logs uses the value that you set
here only if you also include the <code>logGroupName</code> parameter in
your request.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default is up to 50 items.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_metricName">metricName</code></td>
<td><p>Filters results to include only those with the specified metric
name. If you include this parameter in your request, you must also
include the <code>metricNamespace</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_metric_filters_:_metricNamespace">metricNamespace</code></td>
<td><p>Filters results to include only those in the specified namespace.
If you include this parameter in your request, you must also include the
<code>metricName</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      metricFilters = list(
        list(
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
          ),
          creationTime = 123,
          logGroupName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_metric_filters(
      logGroupName = "string",
      filterNamePrefix = "string",
      nextToken = "string",
      limit = 123,
      metricName = "string",
      metricNamespace = "string"
    )
