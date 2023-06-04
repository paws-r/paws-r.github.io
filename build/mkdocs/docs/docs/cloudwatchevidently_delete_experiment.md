<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_delete_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Evidently experiment

### Description

Deletes an Evidently experiment. The feature used for the experiment is
not deleted.

To stop an experiment without deleting it, use `stop_experiment`.

### Usage

    cloudwatchevidently_delete_experiment(experiment, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_delete_experiment_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_delete_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_experiment(
      experiment = "string",
      project = "string"
    )
