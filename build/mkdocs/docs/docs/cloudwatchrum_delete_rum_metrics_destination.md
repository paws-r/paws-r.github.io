<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_delete_rum_metrics_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a destination for CloudWatch RUM extended metrics, so that the specified app monitor stops sending extended metrics to that destination

### Description

Deletes a destination for CloudWatch RUM extended metrics, so that the
specified app monitor stops sending extended metrics to that
destination.

### Usage

    cloudwatchrum_delete_rum_metrics_destination(AppMonitorName,
      Destination, DestinationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_delete_rum_metrics_destination_:_AppMonitorName">AppMonitorName</code></td>
<td><p>[required] The name of the app monitor that is sending metrics to
the destination that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_delete_rum_metrics_destination_:_Destination">Destination</code></td>
<td><p>[required] The type of destination to delete. Valid values are
<code>CloudWatch</code> and <code>Evidently</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_delete_rum_metrics_destination_:_DestinationArn">DestinationArn</code></td>
<td><p>This parameter is required if <code>Destination</code> is
<code>Evidently</code>. If <code>Destination</code> is
<code>CloudWatch</code>, do not use this parameter. This parameter
specifies the ARN of the Evidently experiment that corresponds to the
destination to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rum_metrics_destination(
      AppMonitorName = "string",
      Destination = "CloudWatch"|"Evidently",
      DestinationArn = "string"
    )
