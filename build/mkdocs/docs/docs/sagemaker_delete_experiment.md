<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an SageMaker experiment

### Description

Deletes an SageMaker experiment. All trials associated with the
experiment must be deleted first. Use the `list_trials` API to get a
list of the trials associated with the experiment.

### Usage

    sagemaker_delete_experiment(ExperimentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_experiment_:_ExperimentName">ExperimentName</code></td>
<td><p>[required] The name of the experiment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExperimentArn = "string"
    )

### Request syntax

    svc$delete_experiment(
      ExperimentName = "string"
    )
