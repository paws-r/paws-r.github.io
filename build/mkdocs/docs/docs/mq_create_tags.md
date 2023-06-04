<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_create_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add a tag to a resource

### Description

Add a tag to a resource.

### Usage

    mq_create_tags(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_create_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource
tag.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_tags_:_Tags">Tags</code></td>
<td><p>The key-value pair for the resource tag.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_tags(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
