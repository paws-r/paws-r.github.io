<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from an Amazon Rekognition collection, stream processor, or Custom Labels model

### Description

Removes one or more tags from an Amazon Rekognition collection, stream
processor, or Custom Labels model.

This operation requires permissions to perform the
`rekognition:UntagResource` action.

### Usage

    rekognition_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the model, collection,
or stream processor that you want to remove the tags from.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of the tags that you want to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
