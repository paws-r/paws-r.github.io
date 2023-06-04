<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_app_image_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an AppImageConfig

### Description

Deletes an AppImageConfig.

### Usage

    sagemaker_delete_app_image_config(AppImageConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_app_image_config_:_AppImageConfigName">AppImageConfigName</code></td>
<td><p>[required] The name of the AppImageConfig to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_app_image_config(
      AppImageConfigName = "string"
    )
