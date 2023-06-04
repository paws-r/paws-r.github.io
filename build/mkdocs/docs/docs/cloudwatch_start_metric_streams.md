<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_start_metric_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the streaming of metrics for one or more of your metric streams

### Description

Starts the streaming of metrics for one or more of your metric streams.

### Usage

    cloudwatch_start_metric_streams(Names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_start_metric_streams_:_Names">Names</code></td>
<td><p>[required] The array of the names of metric streams to start
streaming.</p>
<p>This is an "all or nothing" operation. If you do not have permission
to access all of the metric streams that you list here, then none of the
streams that you list in the operation will start streaming.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_metric_streams(
      Names = list(
        "string"
      )
    )
