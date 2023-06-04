<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model_package_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a model group

### Description

Creates a model group. A model group contains a group of model versions.

### Usage

    sagemaker_create_model_package_group(ModelPackageGroupName,
      ModelPackageGroupDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_group_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of the model group.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_group_:_ModelPackageGroupDescription">ModelPackageGroupDescription</code></td>
<td><p>A description for the model group.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_group_:_Tags">Tags</code></td>
<td><p>A list of key value pairs associated with the model group. For
more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageGroupArn = "string"
    )

### Request syntax

    svc$create_model_package_group(
      ModelPackageGroupName = "string",
      ModelPackageGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
