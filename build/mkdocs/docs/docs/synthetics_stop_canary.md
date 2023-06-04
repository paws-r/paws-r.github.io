<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_stop_canary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the canary to prevent all future runs

### Description

Stops the canary to prevent all future runs. If the canary is currently
running,the run that is in progress completes on its own, publishes
metrics, and uploads artifacts, but it is not recorded in Synthetics as
a completed run.

You can use `start_canary` to start it running again with the canary’s
current schedule at any point in the future.

### Usage

    synthetics_stop_canary(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_stop_canary_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want to stop. To find
the names of your canaries, use <a
href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">ListCanaries</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_canary(
      Name = "string"
    )
