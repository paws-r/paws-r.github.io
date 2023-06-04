<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags from a resource

### Description

Remove tags from a resource.

### Usage

    braket_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="braket_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] Specify the <code>resourceArn</code> for the resource
from which to remove the tags.</p></td>
</tr>
<tr class="even">
<td><code id="braket_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] Specify the keys for the tags to remove from the
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
