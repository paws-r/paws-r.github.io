<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UntagResource operation removes the association of the tag with the Amazon Managed Grafana resource

### Description

The `untag_resource` operation removes the association of the tag with
the Amazon Managed Grafana resource.

### Usage

    managedgrafana_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource the tag association is removed
from.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The key values of the tag to be removed from the
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
