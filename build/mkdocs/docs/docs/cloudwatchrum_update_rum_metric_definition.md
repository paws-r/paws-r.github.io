<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_update_rum_metric_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies one existing metric definition for CloudWatch RUM extended metrics

### Description

Modifies one existing metric definition for CloudWatch RUM extended
metrics. For more information about extended metrics, see
[BatchCreateRumMetricsDefinitions](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/).

### Usage

    cloudwatchrum_update_rum_metric_definition(AppMonitorName, Destination,
      DestinationArn, MetricDefinition, MetricDefinitionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_update_rum_metric_definition_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the CloudWatch RUM app monitor that sends
these metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_update_rum_metric_definition_:_Destination">Destination</code></td>
<td><p>[required] The destination to send the metrics to. Valid values
are <code>CloudWatch</code> and <code>Evidently</code>. If you specify
<code>Evidently</code>, you must also specify the ARN of the
CloudWatchEvidently experiment that will receive the metrics and an IAM
role that has permission to write to the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_update_rum_metric_definition_:_DestinationArn">DestinationArn</code></td>
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
id="cloudwatchrum_update_rum_metric_definition_:_MetricDefinition">MetricDefinition</code></td>
<td><p>[required] A structure that contains the new definition that you
want to use for this metric.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_update_rum_metric_definition_:_MetricDefinitionId">MetricDefinitionId</code></td>
<td><p>[required] The ID of the metric definition to update.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_rum_metric_definition(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string",
      MetricDefinition = list(
        DimensionKeys = list(
          "string"
        ),
        EventPattern = "string",
        Name = "string",
        Namespace = "string",
        UnitLabel = "string",
        ValueKey = "string"
      ),
      MetricDefinitionId = "string"
    )
