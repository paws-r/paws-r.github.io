<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_notebook_instance_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a notebook instance lifecycle configuration

### Description

Deletes a notebook instance lifecycle configuration.

### Usage

    sagemaker_delete_notebook_instance_lifecycle_config(
      NotebookInstanceLifecycleConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_notebook_instance_lifecycle_config_:_NotebookInstanceLifecycleConfigName">NotebookInstanceLifecycleConfigName</code></td>
<td><p>[required] The name of the lifecycle configuration to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notebook_instance_lifecycle_config(
      NotebookInstanceLifecycleConfigName = "string"
    )
