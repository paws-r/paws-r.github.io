<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_metric_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a metric stream

### Description

Creates or updates a metric stream. Metric streams can automatically
stream CloudWatch metrics to Amazon Web Services destinations, including
Amazon S3, and to many third-party solutions.

For more information, see [Using Metric
Streams](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html).

To create a metric stream, you must be signed in to an account that has
the `iam:PassRole` permission and either the `CloudWatchFullAccess`
policy or the `cloudwatch:PutMetricStream` permission.

When you create or update a metric stream, you choose one of the
following:

-   Stream metrics from all metric namespaces in the account.

-   Stream metrics from all metric namespaces in the account, except for
    the namespaces that you list in `ExcludeFilters`.

-   Stream metrics from only the metric namespaces that you list in
    `IncludeFilters`.

By default, a metric stream always sends the `MAX`, `MIN`, `SUM`, and
`SAMPLECOUNT` statistics for each metric that is streamed. You can use
the `StatisticsConfigurations` parameter to have the metric stream send
additional statistics in the stream. Streaming additional statistics
incurs additional costs. For more information, see [Amazon CloudWatch
Pricing](https://aws.amazon.com/cloudwatch/pricing/).

When you use `put_metric_stream` to create a new metric stream, the
stream is created in the `running` state. If you use it to update an
existing stream, the state of the stream is not changed.

If you are using CloudWatch cross-account observability and you create a
metric stream in a monitoring account, you can choose whether to include
metrics from source accounts in the stream. For more information, see
[CloudWatch cross-account
observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

### Usage

    cloudwatch_put_metric_stream(Name, IncludeFilters, ExcludeFilters,
      FirehoseArn, RoleArn, OutputFormat, Tags, StatisticsConfigurations,
      IncludeLinkedAccountsMetrics)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_put_metric_stream_:_Name">Name</code></td>
<td><p>[required] If you are creating a new metric stream, this is the
name for the new stream. The name must be different than the names of
other metric streams in this account and Region.</p>
<p>If you are updating a metric stream, specify the name of that stream
here.</p>
<p>Valid characters are A-Z, a-z, 0-9, "-" and "_".</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_stream_:_IncludeFilters">IncludeFilters</code></td>
<td><p>If you specify this parameter, the stream sends only the metrics
from the metric namespaces that you specify here.</p>
<p>You cannot include <code>IncludeFilters</code> and
<code>ExcludeFilters</code> in the same operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_stream_:_ExcludeFilters">ExcludeFilters</code></td>
<td><p>If you specify this parameter, the stream sends metrics from all
metric namespaces except for the namespaces that you specify here.</p>
<p>You cannot include <code>ExcludeFilters</code> and
<code>IncludeFilters</code> in the same operation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_stream_:_FirehoseArn">FirehoseArn</code></td>
<td><p>[required] The ARN of the Amazon Kinesis Data Firehose delivery
stream to use for this metric stream. This Amazon Kinesis Data Firehose
delivery stream must already exist and must be in the same account as
the metric stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_stream_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of an IAM role that this metric stream will
use to access Amazon Kinesis Data Firehose resources. This IAM role must
already exist and must be in the same account as the metric stream. This
IAM role must include the following permissions:</p>
<ul>
<li><p>firehose:PutRecord</p></li>
<li><p>firehose:PutRecordBatch</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_stream_:_OutputFormat">OutputFormat</code></td>
<td><p>[required] The output format for the stream. Valid values are
<code>json</code> and <code>opentelemetry0.7</code>. For more
information about metric stream output formats, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html">Metric
streams output formats</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatch_put_metric_stream_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to associate with the metric stream.
You can associate as many as 50 tags with a metric stream.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>You can use this parameter only when you are creating a new metric
stream. If you are using this operation to update an existing metric
stream, any tags you specify in this parameter are ignored. To change
the tags of an existing metric stream, use <code>tag_resource</code> or
<code>untag_resource</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_metric_stream_:_StatisticsConfigurations">StatisticsConfigurations</code></td>
<td><p>By default, a metric stream always sends the <code>MAX</code>,
<code>MIN</code>, <code>SUM</code>, and <code>SAMPLECOUNT</code>
statistics for each metric that is streamed. You can use this parameter
to have the metric stream also send additional statistics in the stream.
This array can have up to 100 members.</p>
<p>For each entry in this array, you specify one or more metrics and the
list of additional statistics to stream for those metrics. The
additional statistics that you can stream depend on the stream's
<code>OutputFormat</code>. If the <code>OutputFormat</code> is
<code>json</code>, you can stream any additional statistic that is
supported by CloudWatch, listed in <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/">CloudWatch
statistics definitions</a>. If the <code>OutputFormat</code> is
<code>opentelemetry0.7</code>, you can stream percentile statistics such
as p95, p99.9, and so on.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatch_put_metric_stream_:_IncludeLinkedAccountsMetrics">IncludeLinkedAccountsMetrics</code></td>
<td><p>If you are creating a metric stream in a monitoring account,
specify <code>true</code> to include metrics from source accounts in the
metric stream.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$put_metric_stream(
      Name = "string",
      IncludeFilters = list(
        list(
          Namespace = "string",
          MetricNames = list(
            "string"
          )
        )
      ),
      ExcludeFilters = list(
        list(
          Namespace = "string",
          MetricNames = list(
            "string"
          )
        )
      ),
      FirehoseArn = "string",
      RoleArn = "string",
      OutputFormat = "json"|"opentelemetry0.7",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      StatisticsConfigurations = list(
        list(
          IncludeMetrics = list(
            list(
              Namespace = "string",
              MetricName = "string"
            )
          ),
          AdditionalStatistics = list(
            "string"
          )
        )
      ),
      IncludeLinkedAccountsMetrics = TRUE|FALSE
    )
