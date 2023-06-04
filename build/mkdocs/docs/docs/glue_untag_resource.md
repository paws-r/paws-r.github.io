<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a resource

### Description

Removes tags from a resource.

### Usage

    glue_untag_resource(ResourceArn, TagsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource from
which to remove the tags.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_untag_resource_:_TagsToRemove">TagsToRemove</code></td>
<td><p>[required] Tags to remove from this resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagsToRemove = list(
        "string"
      )
    )
