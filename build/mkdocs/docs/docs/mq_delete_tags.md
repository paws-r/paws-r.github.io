<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from a resource

### Description

Removes a tag from a resource.

### Usage

    mq_delete_tags(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_delete_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource
tag.</p></td>
</tr>
<tr class="even">
<td><code id="mq_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] An array of tag keys to delete</p></td>
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
