<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates tags from an Amazon Web Services resource

### Description

Disassociates tags from an Amazon Web Services resource. Tags are
key:value pairs that you can associate with Amazon Web Services
resources. For example, the tag key might be "customer" and the tag
value might be "companyA." You can specify one or more tags to add to
each container. You can add up to 50 tags to each Amazon Web Services
resource.

### Usage

    wafv2_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="wafv2_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] An array of keys identifying the tags to disassociate
from the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
