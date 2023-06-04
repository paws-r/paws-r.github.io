<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a monitor resource

### Description

Deletes a monitor resource. You can only delete a monitor resource with
a status of `ACTIVE`, `ACTIVE_STOPPED`, `CREATE_FAILED`, or
`CREATE_STOPPED`.

### Usage

    forecastservice_delete_monitor(MonitorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_monitor_:_MonitorArn">MonitorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the monitor resource
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_monitor(
      MonitorArn = "string"
    )
