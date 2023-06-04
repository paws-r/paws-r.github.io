<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_batch_delete_rum_metric_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified metrics from being sent to an extended metrics destination

### Description

Removes the specified metrics from being sent to an extended metrics
destination.

If some metric definition IDs specified in a
`batch_delete_rum_metric_definitions` operations are not valid, those
metric definitions fail and return errors, but all valid metric
definition IDs in the same operation are still deleted.

The maximum number of metric definitions that you can specify in one
`batch_delete_rum_metric_definitions` operation is 200.

### Usage

    cloudwatchrum_batch_delete_rum_metric_definitions(AppMonitorName,
      Destination, DestinationArn, MetricDefinitionIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_delete_rum_metric_definitions_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the CloudWatch RUM app monitor that is
sending these metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_delete_rum_metric_definitions_:_Destination">Destination</code></td>
<td><p>[required] Defines the destination where you want to stop sending
the specified metrics. Valid values are <code>CloudWatch</code> and
<code>Evidently</code>. If you specify <code>Evidently</code>, you must
also specify the ARN of the CloudWatchEvidently experiment that is to be
the destination and an IAM role that has permission to write to the
experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_batch_delete_rum_metric_definitions_:_DestinationArn">DestinationArn</code></td>
<td><p>This parameter is required if <code>Destination</code> is
<code>Evidently</code>. If <code>Destination</code> is
<code>CloudWatch</code>, do not use this parameter.</p>
<p>This parameter specifies the ARN of the Evidently experiment that was
receiving the metrics that are being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_batch_delete_rum_metric_definitions_:_MetricDefinitionIds">MetricDefinitionIds</code></td>
<td><p>[required] An array of structures which define the metrics that
you want to stop sending.</p></td>
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
          MetricDefinitionId = "string"
        )
      ),
      MetricDefinitionIds = list(
        "string"
      )
    )

### Request syntax

    svc$batch_delete_rum_metric_definitions(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string",
      MetricDefinitionIds = list(
        "string"
      )
    )
