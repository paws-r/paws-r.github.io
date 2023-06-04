<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_stop_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a launch that is currently running

### Description

Stops a launch that is currently running. After you stop a launch, you
will not be able to resume it or restart it. Also, it will not be
evaluated as a rule for traffic allocation, and the traffic that was
allocated to the launch will instead be available to the feature's
experiment, if there is one. Otherwise, all traffic will be served the
default variation after the launch is stopped.

### Usage

    cloudwatchevidently_stop_launch(desiredState, launch, project, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_stop_launch_:_desiredState">desiredState</code></td>
<td><p>Specify whether to consider the launch as <code>COMPLETED</code>
or <code>CANCELLED</code> after it stops.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_stop_launch_:_launch">launch</code></td>
<td><p>[required] The name of the launch to stop.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_stop_launch_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
launch that you want to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_stop_launch_:_reason">reason</code></td>
<td><p>A string that describes why you are stopping the launch.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$stop_launch(
      desiredState = "COMPLETED"|"CANCELLED",
      launch = "string",
      project = "string",
      reason = "string"
    )
