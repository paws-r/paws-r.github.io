<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_delete_app_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing app monitor

### Description

Deletes an existing app monitor. This immediately stops the collection
of data.

### Usage

    cloudwatchrum_delete_app_monitor(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchrum_delete_app_monitor_:_Name">Name</code></td>
<td><p>[required] The name of the app monitor to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_app_monitor(
      Name = "string"
    )
