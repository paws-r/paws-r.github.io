<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from an Amazon Web Services resource

### Description

Removes one or more tags from an Amazon Web Services resource.

### Usage

    fms_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
return tags for. The Firewall Manager resources that support tagging are
policies, applications lists, and protocols lists.</p></td>
</tr>
<tr class="even">
<td><code id="fms_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the tags to remove from the
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
