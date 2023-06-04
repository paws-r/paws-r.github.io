<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_list_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the specified metrics

### Description

List the specified metrics. You can use the returned metrics with
`get_metric_data` or `get_metric_statistics` to get statistical data.

Up to 500 results are returned for any one call. To retrieve additional
results, use the returned token with subsequent calls.

After you create a metric, allow up to 15 minutes for the metric to
appear. To see metric statistics sooner, use `get_metric_data` or
`get_metric_statistics`.

If you are using CloudWatch cross-account observability, you can use
this operation in a monitoring account and view metrics from the linked
source accounts. For more information, see [CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

`list_metrics` doesn't return information about metrics if those metrics
haven't reported data in the past two weeks. To retrieve those metrics,
use `get_metric_data` or `get_metric_statistics`.

### Usage

    cloudwatch_list_metrics(Namespace, MetricName, Dimensions, NextToken,
      RecentlyActive, IncludeLinkedAccounts, OwningAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_list_metrics_:_Namespace">Namespace</code></td>
<td><p>The metric namespace to filter against. Only the namespace that
matches exactly will be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_list_metrics_:_MetricName">MetricName</code></td>
<td><p>The name of the metric to filter against. Only the metrics with
names that match exactly will be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_list_metrics_:_Dimensions">Dimensions</code></td>
<td><p>The dimensions to filter against. Only the dimensions that match
exactly will be returned.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatch_list_metrics_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to indicate that there is
more data available.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_list_metrics_:_RecentlyActive">RecentlyActive</code></td>
<td><p>To filter the results to show only metrics that have had data
points published in the past three hours, specify this parameter with a
value of <code>PT3H</code>. This is the only valid value for this
parameter.</p>
<p>The results that are returned are an approximation of the value you
specify. There is a low probability that the returned results include
metrics with last published data as much as 40 minutes more than the
specified time interval.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_list_metrics_:_IncludeLinkedAccounts">IncludeLinkedAccounts</code></td>
<td><p>If you are using this operation in a monitoring account, specify
<code>true</code> to include metrics from source accounts in the
returned data.</p>
<p>The default is <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_list_metrics_:_OwningAccount">OwningAccount</code></td>
<td><p>When you use this operation in a monitoring account, use this
field to return metrics only from one source account. To do so, specify
that source account ID in this field, and also specify <code>true</code>
for <code>IncludeLinkedAccounts</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metrics = list(
        list(
          Namespace = "string",
          MetricName = "string",
          Dimensions = list(
            list(
              Name = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string",
      OwningAccounts = list(
        "string"
      )
    )

### Request syntax

    svc$list_metrics(
      Namespace = "string",
      MetricName = "string",
      Dimensions = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      NextToken = "string",
      RecentlyActive = "PT3H",
      IncludeLinkedAccounts = TRUE|FALSE,
      OwningAccount = "string"
    )
