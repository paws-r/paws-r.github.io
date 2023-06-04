<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified tags from an SageMaker resource

### Description

Deletes the specified tags from an SageMaker resource.

To list a resource's tags, use the `list_tags` API.

When you call this API to delete tags from a hyperparameter tuning job,
the deleted tags are not removed from training jobs that the
hyperparameter tuning job launched before you called this API.

When you call this API to delete tags from a SageMaker Studio Domain or
User Profile, the deleted tags are not removed from Apps that the
SageMaker Studio Domain or User Profile launched before you called this
API.

### Usage

    sagemaker_delete_tags(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource whose
tags you want to delete.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] An array or one or more tag keys to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
