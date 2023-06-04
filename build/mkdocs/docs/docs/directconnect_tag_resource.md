<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified Direct Connect resource

### Description

Adds the specified tags to the specified Direct Connect resource. Each
resource can have a maximum of 50 tags.

Each tag consists of a key and an optional value. If a tag with the same
key is already associated with the resource, this action updates its
value.

### Usage

    directconnect_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
