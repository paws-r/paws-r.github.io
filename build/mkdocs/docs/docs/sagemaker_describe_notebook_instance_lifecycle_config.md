<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_notebook_instance_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of a notebook instance lifecycle configuration

### Description

Returns a description of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
[Step 2.1: (Optional) Customize a Notebook
Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).

### Usage

    sagemaker_describe_notebook_instance_lifecycle_config(
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
id="sagemaker_describe_notebook_instance_lifecycle_config_:_NotebookInstanceLifecycleConfigName">NotebookInstanceLifecycleConfigName</code></td>
<td><p>[required] The name of the lifecycle configuration to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookInstanceLifecycleConfigArn = "string",
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
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_notebook_instance_lifecycle_config(
      NotebookInstanceLifecycleConfigName = "string"
    )
