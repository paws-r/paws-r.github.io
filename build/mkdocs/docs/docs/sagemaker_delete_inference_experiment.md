<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_inference_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an inference experiment

### Description

Deletes an inference experiment.

This operation does not delete your endpoint, variants, or any
underlying resources. This operation only deletes the metadata of your
experiment.

### Usage

    sagemaker_delete_inference_experiment(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_inference_experiment_:_Name">Name</code></td>
<td><p>[required] The name of the inference experiment you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceExperimentArn = "string"
    )

### Request syntax

    svc$delete_inference_experiment(
      Name = "string"
    )
