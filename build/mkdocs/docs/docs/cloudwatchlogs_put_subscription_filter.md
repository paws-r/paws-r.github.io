<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_subscription_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a subscription filter and associates it with the specified log group

### Description

Creates or updates a subscription filter and associates it with the
specified log group. With subscription filters, you can subscribe to a
real-time stream of log events ingested through `put_log_events` and
have them delivered to a specific destination. When log events are sent
to the receiving service, they are Base64 encoded and compressed with
the GZIP format.

The following destinations are supported for subscription filters:

-   An Amazon Kinesis data stream belonging to the same account as the
    subscription filter, for same-account delivery.

-   A logical destination that belongs to a different account, for
    cross-account delivery.

-   An Amazon Kinesis Data Firehose delivery stream that belongs to the
    same account as the subscription filter, for same-account delivery.

-   An Lambda function that belongs to the same account as the
    subscription filter, for same-account delivery.

Each log group can have up to two subscription filters associated with
it. If you are updating an existing filter, you must specify the correct
name in `filterName`.

To perform a `put_subscription_filter` operation, you must also have the
`iam:PassRole` permission.

### Usage

    cloudwatchlogs_put_subscription_filter(logGroupName, filterName,
      filterPattern, destinationArn, roleArn, distribution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_filterName">filterName</code></td>
<td><p>[required] A name for the subscription filter. If you are
updating an existing filter, you must specify the correct name in
<code>filterName</code>. To find the name of the filter currently
associated with a log group, use
<code>describe_subscription_filters</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_filterPattern">filterPattern</code></td>
<td><p>[required] A filter pattern for subscribing to a filtered stream
of log events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_destinationArn">destinationArn</code></td>
<td><p>[required] The ARN of the destination to deliver matching log
events to. Currently, the supported destinations are:</p>
<ul>
<li><p>An Amazon Kinesis stream belonging to the same account as the
subscription filter, for same-account delivery.</p></li>
<li><p>A logical destination (specified using an ARN) belonging to a
different account, for cross-account delivery.</p>
<p>If you're setting up a cross-account subscription, the destination
must have an IAM policy associated with it. The IAM policy must allow
the sender to send logs to the destination. For more information, see
<code>put_destination_policy</code>.</p></li>
<li><p>A Kinesis Data Firehose delivery stream belonging to the same
account as the subscription filter, for same-account delivery.</p></li>
<li><p>A Lambda function belonging to the same account as the
subscription filter, for same-account delivery.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_roleArn">roleArn</code></td>
<td><p>The ARN of an IAM role that grants CloudWatch Logs permissions to
deliver ingested log events to the destination stream. You don't need to
provide the ARN when you are working with a logical destination for
cross-account delivery.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_subscription_filter_:_distribution">distribution</code></td>
<td><p>The method used to distribute log data to the destination. By
default, log data is grouped by log stream, but the grouping can be set
to random for a more even distribution. This property is only applicable
when the destination is an Amazon Kinesis data stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_subscription_filter(
      logGroupName = "string",
      filterName = "string",
      filterPattern = "string",
      destinationArn = "string",
      roleArn = "string",
      distribution = "Random"|"ByLogStream"
    )
