<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_start_notebook_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume

### Description

Launches an ML compute instance with the latest version of the libraries
and attaches your ML storage volume. After configuring the notebook
instance, SageMaker sets the notebook instance status to `InService`. A
notebook instance's status must be `InService` before you can connect to
your Jupyter notebook.

### Usage

    sagemaker_start_notebook_instance(NotebookInstanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_start_notebook_instance_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the notebook instance to start.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_notebook_instance(
      NotebookInstanceName = "string"
    )
