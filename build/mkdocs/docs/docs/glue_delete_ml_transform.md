<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_ml_transform</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Glue machine learning transform

### Description

Deletes an Glue machine learning transform. Machine learning transforms
are a special type of transform that use machine learning to learn the
details of the transformation to be performed by learning from examples
provided by humans. These transformations are then saved by Glue. If you
no longer need a transform, you can delete it by calling
`DeleteMLTransforms`. However, any Glue jobs that still reference the
deleted transform will no longer succeed.

### Usage

    glue_delete_ml_transform(TransformId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_ml_transform_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the transform to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string"
    )

### Request syntax

    svc$delete_ml_transform(
      TransformId = "string"
    )
