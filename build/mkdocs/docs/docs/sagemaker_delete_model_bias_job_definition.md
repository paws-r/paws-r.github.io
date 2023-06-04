<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model_bias_job_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon SageMaker model bias job definition

### Description

Deletes an Amazon SageMaker model bias job definition.

### Usage

    sagemaker_delete_model_bias_job_definition(JobDefinitionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_model_bias_job_definition_:_JobDefinitionName">JobDefinitionName</code></td>
<td><p>[required] The name of the model bias job definition to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_bias_job_definition(
      JobDefinitionName = "string"
    )
