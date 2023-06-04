<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_notebook_instance_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a lifecycle configuration that you can associate with a notebook instance

### Description

Creates a lifecycle configuration that you can associate with a notebook
instance. A *lifecycle configuration* is a collection of shell scripts
that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the `⁠$PATH⁠` environment variable that is available to both
scripts is `⁠/sbin:bin:/usr/sbin:/usr/bin⁠`.

View CloudWatch Logs for notebook instance lifecycle configurations in
log group `⁠/aws/sagemaker/NotebookInstances⁠` in log stream
`⁠[notebook-instance-name]/[LifecycleConfigHook]⁠`.

Lifecycle configuration scripts cannot run for longer than 5 minutes. If
a script runs for longer than 5 minutes, it fails and the notebook
instance is not created or started.

For information about notebook instance lifestyle configurations, see
[Step 2.1: (Optional) Customize a Notebook
Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).

### Usage

    sagemaker_create_notebook_instance_lifecycle_config(
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
id="sagemaker_create_notebook_instance_lifecycle_config_:_NotebookInstanceLifecycleConfigName">NotebookInstanceLifecycleConfigName</code></td>
<td><p>[required] The name of the lifecycle configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_notebook_instance_lifecycle_config_:_OnCreate">OnCreate</code></td>
<td><p>A shell script that runs only once, when you create a notebook
instance. The shell script must be a base64-encoded string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_notebook_instance_lifecycle_config_:_OnStart">OnStart</code></td>
<td><p>A shell script that runs every time you start a notebook
instance, including when you create the notebook instance. The shell
script must be a base64-encoded string.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookInstanceLifecycleConfigArn = "string"
    )

### Request syntax

    svc$create_notebook_instance_lifecycle_config(
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
