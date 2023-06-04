<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_model_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model package

### Description

Deletes a model package.

A model package is used to create SageMaker models or list on Amazon Web
Services Marketplace. Buyers can subscribe to model packages listed on
Amazon Web Services Marketplace to create models in SageMaker.

### Usage

    sagemaker_delete_model_package(ModelPackageName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_model_package_:_ModelPackageName">ModelPackageName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the model
package to delete.</p>
<p>When you specify a name, the name must have 1 to 63 characters. Valid
characters are a-z, A-Z, 0-9, and - (hyphen).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model_package(
      ModelPackageName = "string"
    )
