<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_put_model_package_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a resouce policy to control access to a model group

### Description

Adds a resouce policy to control access to a model group. For
information about resoure policies, see [Identity-based policies and
resource-based
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the *Amazon Web Services Identity and Access Management User Guide.*.

### Usage

    sagemaker_put_model_package_group_policy(ModelPackageGroupName,
      ResourcePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_put_model_package_group_policy_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of the model group to add a resource policy
to.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_put_model_package_group_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>[required] The resource policy for the model group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageGroupArn = "string"
    )

### Request syntax

    svc$put_model_package_group_policy(
      ModelPackageGroupName = "string",
      ResourcePolicy = "string"
    )
