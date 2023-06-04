<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates one or more specified tags from the specified AppStream 2

### Description

Disassociates one or more specified tags from the specified AppStream
2.0 resource.

To list the current tags for your resources, use
`list_tags_for_resource`.

For more information about tags, see [Tagging Your
Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the *Amazon AppStream 2.0 Administration Guide*.

### Usage

    appstream_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys for the tags to disassociate.</p></td>
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
