<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a behavior graph

### Description

Removes tags from a behavior graph.

### Usage

    detective_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the behavior graph to remove the tags
from.</p></td>
</tr>
<tr class="even">
<td><code id="detective_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys of the tags to remove from the behavior
graph. You can remove up to 50 tags at a time.</p></td>
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
