<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_start_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an existing experiment

### Description

Starts an existing experiment. To create an experiment, use
`create_experiment`.

### Usage

    cloudwatchevidently_start_experiment(analysisCompleteTime, experiment,
      project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_start_experiment_:_analysisCompleteTime">analysisCompleteTime</code></td>
<td><p>[required] The date and time to end the experiment. This must be
no more than 30 days after the experiment starts.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_start_experiment_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment to start.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_start_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment to start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      startedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_experiment(
      analysisCompleteTime = as.POSIXct(
        "2015-01-01"
      ),
      experiment = "string",
      project = "string"
    )
