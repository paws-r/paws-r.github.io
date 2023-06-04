<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_delete_metric_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes the metric stream that you specify

### Description

Permanently deletes the metric stream that you specify.

### Usage

    cloudwatch_delete_metric_stream(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_delete_metric_stream_:_Name">Name</code></td>
<td><p>[required] The name of the metric stream to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_metric_stream(
      Name = "string"
    )
