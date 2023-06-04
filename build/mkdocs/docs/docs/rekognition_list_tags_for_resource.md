<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags in an Amazon Rekognition collection, stream processor, or Custom Labels model

### Description

Returns a list of tags in an Amazon Rekognition collection, stream
processor, or Custom Labels model.

This operation requires permissions to perform the
`rekognition:ListTagsForResource` action.

### Usage

    rekognition_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the model, collection,
or stream processor that contains the tags that you want a list
of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
