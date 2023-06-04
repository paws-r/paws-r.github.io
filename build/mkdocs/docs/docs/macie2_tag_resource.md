<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates one or more tags (keys and values) that are associated with an Amazon Macie resource

### Description

Adds or updates one or more tags (keys and values) that are associated
with an Amazon Macie resource.

### Usage

    macie2_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_tag_resource_:_tags">tags</code></td>
<td><p>[required] A map of key-value pairs that specifies the tags to
associate with the resource.</p>
<p>A resource can have a maximum of 50 tags. Each tag consists of a tag
key and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
