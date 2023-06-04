<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds, updates, or removes the description of an experiment

### Description

Adds, updates, or removes the description of an experiment. Updates the
display name of an experiment.

### Usage

    sagemaker_update_experiment(ExperimentName, DisplayName, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_experiment_:_ExperimentName">ExperimentName</code></td>
<td><p>[required] The name of the experiment to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_experiment_:_DisplayName">DisplayName</code></td>
<td><p>The name of the experiment as displayed. The name doesn't need to
be unique. If <code>DisplayName</code> isn't specified,
<code>ExperimentName</code> is displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_experiment_:_Description">Description</code></td>
<td><p>The description of the experiment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExperimentArn = "string"
    )

### Request syntax

    svc$update_experiment(
      ExperimentName = "string",
      DisplayName = "string",
      Description = "string"
    )
