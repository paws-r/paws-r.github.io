<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model

### Description

Deletes a model. The `delete_model` API deletes only the model entry
that was created in SageMaker when you called the `create_model` API. It
does not delete model artifacts, inference code, or the IAM role that
you specified when creating the model.

### Usage

    sagemaker_delete_model(ModelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the model to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model(
      ModelName = "string"
    )
