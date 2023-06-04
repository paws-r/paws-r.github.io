<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_notebook_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates the ML compute instance

### Description

Terminates the ML compute instance. Before terminating the instance,
SageMaker disconnects the ML storage volume from it. SageMaker preserves
the ML storage volume. SageMaker stops charging you for the ML compute
instance when you call `stop_notebook_instance`.

To access data on the ML storage volume for a notebook instance that has
been terminated, call the `start_notebook_instance` API.
`start_notebook_instance` launches another ML compute instance,
configures it, and attaches the preserved ML storage volume so you can
continue your work.

### Usage

    sagemaker_stop_notebook_instance(NotebookInstanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_notebook_instance_:_NotebookInstanceName">NotebookInstanceName</code></td>
<td><p>[required] The name of the notebook instance to
terminate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_notebook_instance(
      NotebookInstanceName = "string"
    )
