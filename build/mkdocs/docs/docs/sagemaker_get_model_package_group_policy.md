<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_get_model_package_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a resource policy that manages access for a model group

### Description

Gets a resource policy that manages access for a model group. For
information about resource policies, see [Identity-based policies and
resource-based
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the *Amazon Web Services Identity and Access Management User Guide.*.

### Usage

    sagemaker_get_model_package_group_policy(ModelPackageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_get_model_package_group_policy_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of the model group for which to get the
resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePolicy = "string"
    )

### Request syntax

    svc$get_model_package_group_policy(
      ModelPackageGroupName = "string"
    )
