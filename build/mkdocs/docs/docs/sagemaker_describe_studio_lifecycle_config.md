<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_studio_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Studio Lifecycle Configuration

### Description

Describes the Studio Lifecycle Configuration.

### Usage

    sagemaker_describe_studio_lifecycle_config(StudioLifecycleConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_studio_lifecycle_config_:_StudioLifecycleConfigName">StudioLifecycleConfigName</code></td>
<td><p>[required] The name of the Studio Lifecycle Configuration to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StudioLifecycleConfigArn = "string",
      StudioLifecycleConfigName = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      StudioLifecycleConfigContent = "string",
      StudioLifecycleConfigAppType = "JupyterServer"|"KernelGateway"
    )

### Request syntax

    svc$describe_studio_lifecycle_config(
      StudioLifecycleConfigName = "string"
    )
