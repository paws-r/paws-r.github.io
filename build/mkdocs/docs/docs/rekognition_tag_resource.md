<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more key-value tags to an Amazon Rekognition collection, stream processor, or Custom Labels model

### Description

Adds one or more key-value tags to an Amazon Rekognition collection,
stream processor, or Custom Labels model. For more information, see
[Tagging AWS
Resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html).

This operation requires permissions to perform the
`rekognition:TagResource` action.

### Usage

    rekognition_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the model, collection,
or stream processor that you want to assign the tags to.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value tags to assign to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
