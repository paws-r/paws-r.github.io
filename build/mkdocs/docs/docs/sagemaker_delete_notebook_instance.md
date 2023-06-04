<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_notebook_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an SageMaker notebook instance

### Description

Deletes an SageMaker notebook instance. Before you can delete a notebook
instance, you must call the `stop_notebook_instance` API.

When you delete a notebook instance, you lose all of your data.
SageMaker removes the ML compute instance, and deletes the ML storage
volume and the network interface associated with the notebook instance.

### Usage

    sagemaker_delete_notebook_instance(NotebookInstanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_notebook_instance_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the SageMaker notebook instance to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notebook_instance(
      NotebookInstanceName = "string"
    )
