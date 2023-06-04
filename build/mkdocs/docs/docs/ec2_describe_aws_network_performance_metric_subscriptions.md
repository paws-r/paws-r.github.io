<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_aws_network_performance_metric_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Infrastructure Performance metric subscriptions

### Description

Describes the current Infrastructure Performance metric subscriptions.

### Usage

    ec2_describe_aws_network_performance_metric_subscriptions(MaxResults,
      NextToken, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_aws_network_performance_metric_subscriptions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_aws_network_performance_metric_subscriptions_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_aws_network_performance_metric_subscriptions_:_Filters">Filters</code></td>
<td><p>One or more filters.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_aws_network_performance_metric_subscriptions_:_DryRun">DryRun</code></td>
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
      NextToken = "string",
      Subscriptions = list(
        list(
          Source = "string",
          Destination = "string",
          Metric = "aggregate-latency",
          Statistic = "p50",
          Period = "five-minutes"|"fifteen-minutes"|"one-hour"|"three-hours"|"one-day"|"one-week"
        )
      )
    )

### Request syntax

    svc$describe_aws_network_performance_metric_subscriptions(
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
