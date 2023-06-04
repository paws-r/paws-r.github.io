<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_studio_lifecycle_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the Studio Lifecycle Configuration

### Description

Deletes the Studio Lifecycle Configuration. In order to delete the
Lifecycle Configuration, there must be no running apps using the
Lifecycle Configuration. You must also remove the Lifecycle
Configuration from UserSettings in all Domains and UserProfiles.

### Usage

    sagemaker_delete_studio_lifecycle_config(StudioLifecycleConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_studio_lifecycle_config_:_StudioLifecycleConfigName">StudioLifecycleConfigName</code></td>
<td><p>[required] The name of the Studio Lifecycle Configuration to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_studio_lifecycle_config(
      StudioLifecycleConfigName = "string"
    )
