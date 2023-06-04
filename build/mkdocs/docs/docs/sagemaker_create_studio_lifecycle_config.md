<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_studio_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Studio Lifecycle Configuration

### Description

Creates a new Studio Lifecycle Configuration.

### Usage

    sagemaker_create_studio_lifecycle_config(StudioLifecycleConfigName,
      StudioLifecycleConfigContent, StudioLifecycleConfigAppType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_studio_lifecycle_config_:_StudioLifecycleConfigName">StudioLifecycleConfigName</code></td>
<td><p>[required] The name of the Studio Lifecycle Configuration to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_studio_lifecycle_config_:_StudioLifecycleConfigContent">StudioLifecycleConfigContent</code></td>
<td><p>[required] The content of your Studio Lifecycle Configuration
script. This content must be base64 encoded.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_studio_lifecycle_config_:_StudioLifecycleConfigAppType">StudioLifecycleConfigAppType</code></td>
<td><p>[required] The App type that the Lifecycle Configuration is
attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_studio_lifecycle_config_:_Tags">Tags</code></td>
<td><p>Tags to be associated with the Lifecycle Configuration. Each tag
consists of a key and an optional value. Tag keys must be unique per
resource. Tags are searchable using the Search API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StudioLifecycleConfigArn = "string"
    )

### Request syntax

    svc$create_studio_lifecycle_config(
      StudioLifecycleConfigName = "string",
      StudioLifecycleConfigContent = "string",
      StudioLifecycleConfigAppType = "JupyterServer"|"KernelGateway",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
