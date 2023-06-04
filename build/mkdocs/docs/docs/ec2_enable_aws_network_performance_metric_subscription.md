<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_aws_network_performance_metric_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Infrastructure Performance subscriptions

### Description

Enables Infrastructure Performance subscriptions.

### Usage

    ec2_enable_aws_network_performance_metric_subscription(Source,
      Destination, Metric, Statistic, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_aws_network_performance_metric_subscription_:_Source">Source</code></td>
<td><p>The source Region or Availability Zone that the metric
subscription is enabled for. For example,
<code>us-east-1</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_aws_network_performance_metric_subscription_:_Destination">Destination</code></td>
<td><p>The target Region or Availability Zone that the metric
subscription is enabled for. For example,
<code>eu-west-1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_enable_aws_network_performance_metric_subscription_:_Metric">Metric</code></td>
<td><p>The metric used for the enabled subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_aws_network_performance_metric_subscription_:_Statistic">Statistic</code></td>
<td><p>The statistic used for the enabled subscription.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_enable_aws_network_performance_metric_subscription_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Output = TRUE|FALSE
    )

### Request syntax

    svc$enable_aws_network_performance_metric_subscription(
      Source = "string",
      Destination = "string",
      Metric = "aggregate-latency",
      Statistic = "p50",
      DryRun = TRUE|FALSE
    )
