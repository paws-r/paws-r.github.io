<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_batch_create_rum_metric_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies the extended metrics and custom metrics that you want a CloudWatch RUM app monitor to send to a destination

### Description

Specifies the extended metrics and custom metrics that you want a
CloudWatch RUM app monitor to send to a destination. Valid destinations
include CloudWatch and Evidently.

By default, RUM app monitors send some metrics to CloudWatch. These
default metrics are listed in [CloudWatch metrics that you can collect
with CloudWatch
RUM](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html).

In addition to these default metrics, you can choose to send extended
metrics or custom metrics or both.

-   Extended metrics enable you to send metrics with additional
    dimensions not included in the default metrics. You can also send
    extended metrics to Evidently as well as CloudWatch. The valid
    dimension names for the additional dimensions for extended metrics
    are `BrowserName`, `CountryCode`, `DeviceType`, `FileType`,
    `OSName`, and `PageId`. For more information, see [Extended metrics
    that you can send to CloudWatch and CloudWatch
    Evidently](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/).

-   Custom metrics are metrics that you define. You can send custom
    metrics to CloudWatch or to CloudWatch Evidently or to both. With
    custom metrics, you can use any metric name and namespace, and to
    derive the metrics you can use any custom events, built-in events,
    custom attributes, or default attributes.

    You can't send custom metrics to the `AWS/RUM` namespace. You must
    send custom metrics to a custom namespace that you define. The
    namespace that you use can't start with `⁠AWS/⁠`. CloudWatch RUM
    prepends `⁠RUM/CustomMetrics/⁠` to the custom namespace that you
    define, so the final namespace for your metrics in CloudWatch is
    `RUM/CustomMetrics/your-custom-namespace `.

The maximum number of metric definitions that you can specify in one
`batch_create_rum_metric_definitions` operation is 200.

The maximum number of metric definitions that one destination can
contain is 2000.

Extended metrics sent to CloudWatch and RUM custom metrics are charged
as CloudWatch custom metrics. Each combination of additional dimension
name and dimension value counts as a custom metric. For more
information, see [Amazon CloudWatch
Pricing](https://aws.amazon.com/cloudwatch/pricing/).

You must have already created a destination for the metrics before you
send them. For more information, see `put_rum_metrics_destination`.

If some metric definitions specified in a
`batch_create_rum_metric_definitions` operations are not valid, those
metric definitions fail and return errors, but all valid metric
definitions in the same operation still succeed.

### Usage

    cloudwatchrum_batch_create_rum_metric_definitions(AppMonitorName,
      Destination, DestinationArn, MetricDefinitions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_create_rum_metric_definitions_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the CloudWatch RUM app monitor that is to
send the metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_create_rum_metric_definitions_:_Destination">Destination</code></td>
<td><p>[required] The destination to send the metrics to. Valid values
are <code>CloudWatch</code> and <code>Evidently</code>. If you specify
<code>Evidently</code>, you must also specify the ARN of the
CloudWatchEvidently experiment that will receive the metrics and an IAM
role that has permission to write to the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_create_rum_metric_definitions_:_DestinationArn">DestinationArn</code></td>
<td><p>This parameter is required if <code>Destination</code> is
<code>Evidently</code>. If <code>Destination</code> is
<code>CloudWatch</code>, do not use this parameter.</p>
<p>This parameter specifies the ARN of the Evidently experiment that is
to receive the metrics. You must have already defined this experiment as
a valid destination. For more information, see
<code>put_rum_metrics_destination</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_create_rum_metric_definitions_:_MetricDefinitions">MetricDefinitions</code></td>
<td><p>[required] An array of structures which define the metrics that
you want to send.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          ErrorCode = "string",
          ErrorMessage = "string",
          MetricDefinition = list(
            DimensionKeys = list(
              "string"
            ),
            EventPattern = "string",
            Name = "string",
            Namespace = "string",
            UnitLabel = "string",
            ValueKey = "string"
          )
        )
      ),
      MetricDefinitions = list(
        list(
          DimensionKeys = list(
            "string"
          ),
          EventPattern = "string",
          MetricDefinitionId = "string",
          Name = "string",
          Namespace = "string",
          UnitLabel = "string",
          ValueKey = "string"
        )
      )
    )

### Request syntax

    svc$batch_create_rum_metric_definitions(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string",
      MetricDefinitions = list(
        list(
          DimensionKeys = list(
            "string"
          ),
          EventPattern = "string",
          Name = "string",
          Namespace = "string",
          UnitLabel = "string",
          ValueKey = "string"
        )
      )
    )
