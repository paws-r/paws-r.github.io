<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_start_inference_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an inference experiment

### Description

Starts an inference experiment.

### Usage

    sagemaker_start_inference_experiment(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_start_inference_experiment_:_Name">Name</code></td>
<td><p>[required] The name of the inference experiment to
start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceExperimentArn = "string"
    )

### Request syntax

    svc$start_inference_experiment(
      Name = "string"
    )
