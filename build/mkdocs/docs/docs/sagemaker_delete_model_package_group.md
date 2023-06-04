<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model_package_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified model group

### Description

Deletes the specified model group.

### Usage

    sagemaker_delete_model_package_group(ModelPackageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_model_package_group_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of the model group to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_package_group(
      ModelPackageGroupName = "string"
    )
