<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_notebook_instance_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API

### Description

Updates a notebook instance lifecycle configuration created with the
`create_notebook_instance_lifecycle_config` API.

### Usage

    sagemaker_update_notebook_instance_lifecycle_config(
      NotebookInstanceLifecycleConfigName, OnCreate, OnStart)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_lifecycle_config_:_NotebookInstanceLifecycleConfigName">NotebookInstanceLifecycleConfigName</code></td>
<td><p>[required] The name of the lifecycle configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_notebook_instance_lifecycle_config_:_OnCreate">OnCreate</code></td>
<td><p>The shell script that runs only once, when you create a notebook
instance. The shell script must be a base64-encoded string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_notebook_instance_lifecycle_config_:_OnStart">OnStart</code></td>
<td><p>The shell script that runs every time you start a notebook
instance, including when you create the notebook instance. The shell
script must be a base64-encoded string.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notebook_instance_lifecycle_config(
      NotebookInstanceLifecycleConfigName = "string",
      OnCreate = list(
        list(
          Content = "string"
        )
      ),
      OnStart = list(
        list(
          Content = "string"
        )
      )
    )
