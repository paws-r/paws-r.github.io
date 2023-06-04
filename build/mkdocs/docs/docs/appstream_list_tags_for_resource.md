<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all tags for the specified AppStream 2

### Description

Retrieves a list of all tags for the specified AppStream 2.0 resource.
You can tag AppStream 2.0 image builders, images, fleets, and stacks.

For more information about tags, see [Tagging Your
Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the *Amazon AppStream 2.0 Administration Guide*.

### Usage

    appstream_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
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
