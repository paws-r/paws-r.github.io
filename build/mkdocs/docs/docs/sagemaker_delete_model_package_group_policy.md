<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model_package_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model group resource policy

### Description

Deletes a model group resource policy.

### Usage

    sagemaker_delete_model_package_group_policy(ModelPackageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_model_package_group_policy_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of the model group for which to delete the
policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_package_group_policy(
      ModelPackageGroupName = "string"
    )
