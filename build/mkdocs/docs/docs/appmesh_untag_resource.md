<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appmesh_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes specified tags from a resource

### Description

Deletes specified tags from a resource.

### Usage

    appmesh_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appmesh_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
delete tags from.</p></td>
</tr>
<tr class="even">
<td><code id="appmesh_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The keys of the tags to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
