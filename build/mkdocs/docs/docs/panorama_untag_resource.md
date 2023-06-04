<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a resource

### Description

Removes tags from a resource.

### Usage

    panorama_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource's ARN.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Tag keys to remove.</p></td>
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
