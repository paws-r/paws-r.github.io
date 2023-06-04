<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag or set of tags from a resource

### Description

Removes a tag or set of tags from a resource.

### Usage

    redshiftserverless_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
remove tags from.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The tag or set of tags to remove from the
resource.</p></td>
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
