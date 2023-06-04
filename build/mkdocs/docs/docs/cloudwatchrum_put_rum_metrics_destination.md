<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_put_rum_metrics_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a destination to receive extended metrics from CloudWatch RUM

### Description

Creates or updates a destination to receive extended metrics from
CloudWatch RUM. You can send extended metrics to CloudWatch or to a
CloudWatch Evidently experiment.

For more information about extended metrics, see
`batch_create_rum_metric_definitions`.

### Usage

    cloudwatchrum_put_rum_metrics_destination(AppMonitorName, Destination,
      DestinationArn, IamRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_put_rum_metrics_destination_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the CloudWatch RUM app monitor that will
send the metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_put_rum_metrics_destination_:_Destination">Destination</code></td>
<td><p>[required] Defines the destination to send the metrics to. Valid
values are <code>CloudWatch</code> and <code>Evidently</code>. If you
specify <code>Evidently</code>, you must also specify the ARN of the
CloudWatchEvidently experiment that is to be the destination and an IAM
role that has permission to write to the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_put_rum_metrics_destination_:_DestinationArn">DestinationArn</code></td>
<td><p>Use this parameter only if <code>Destination</code> is
<code>Evidently</code>. This parameter specifies the ARN of the
Evidently experiment that will receive the extended metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_put_rum_metrics_destination_:_IamRoleArn">IamRoleArn</code></td>
<td><p>This parameter is required if <code>Destination</code> is
<code>Evidently</code>. If <code>Destination</code> is
<code>CloudWatch</code>, do not use this parameter.</p>
<p>This parameter specifies the ARN of an IAM role that RUM will assume
to write to the Evidently experiment that you are sending metrics to.
This role must have permission to write to that experiment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_rum_metrics_destination(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string",
      IamRoleArn = "string"
    )
