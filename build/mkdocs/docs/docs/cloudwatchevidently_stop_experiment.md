<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_stop_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an experiment that is currently running

### Description

Stops an experiment that is currently running. If you stop an
experiment, you can't resume it or restart it.

### Usage

    cloudwatchevidently_stop_experiment(desiredState, experiment, project,
      reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_stop_experiment_:_desiredState">desiredState</code></td>
<td><p>Specify whether the experiment is to be considered
<code>COMPLETED</code> or <code>CANCELLED</code> after it
stops.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_stop_experiment_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment to stop.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_stop_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_stop_experiment_:_reason">reason</code></td>
<td><p>A string that describes why you are stopping the
experiment.</p></td>
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

    svc$stop_experiment(
      desiredState = "COMPLETED"|"CANCELLED",
      experiment = "string",
      project = "string",
      reason = "string"
    )
