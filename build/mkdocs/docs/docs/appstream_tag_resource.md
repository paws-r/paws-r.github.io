<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified AppStream 2

### Description

Adds or overwrites one or more tags for the specified AppStream 2.0
resource. You can tag AppStream 2.0 image builders, images, fleets, and
stacks.

Each tag consists of a key and an optional value. If a resource already
has a tag with the same key, this operation updates its value.

To list the current tags for your resources, use
`list_tags_for_resource`. To disassociate tags from your resources, use
`untag_resource`.

For more information about tags, see [Tagging Your
Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the *Amazon AppStream 2.0 Administration Guide*.

### Usage

    appstream_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to associate. A tag is a key-value pair, and
the value is optional. For example, Environment=Test. If you do not
specify a value, Environment=.</p>
<p>If you do not specify a value, the value is set to an empty
string.</p>
<p>Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:</p>
<p>_ . : / = + \ - @</p></td>
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
