<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from a resource

### Description

Removes a tag from a resource.

### Usage

    route53recoveryreadiness_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for a
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys for tags you add to resources.</p></td>
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
