<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An API operation for removing tags from a resource

### Description

An API operation for removing tags from a resource.

### Usage

    clouddirectory_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource.
Tagging is only supported for directories.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Keys of the tag that need to be removed from the
resource.</p></td>
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
